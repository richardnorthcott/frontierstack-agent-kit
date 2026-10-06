# Network operations playbooks

Concrete flows for the Network Administrator role. Every tool named here exists in the
shipped FrontierStack harness. Reach them through `frontierstack_find_tools` →
`frontierstack_call`.

---

## DNS

### A name doesn't resolve
1. `diagnose` with a dig against the public resolvers — is the record absent, or present
   but wrong?
2. `diagnose_zone` — delegation and nameservers. A missing record and a broken delegation
   look identical from a single dig and have completely different fixes.
3. `device_dns` if it fails only on one machine. That is a client resolver problem, not a
   zone problem, and `dns_record` will not fix it.
4. Only then `dns_record` to correct the zone.

### Before changing a record
State the current value, the new value and the TTL. The TTL is the real blast radius: a
record with a long TTL that you get wrong is cached wrong everywhere for that long. Lower
the TTL first when you expect to iterate.

`dns_record` is classified `infrastructure-change`. Deleting or repointing apex records,
MX and NS is the highest-consequence thing in this playbook — an MX mistake silently loses
mail rather than producing an error.

### Mail-related DNS
SPF, DKIM and DMARC have their own tooling (`email_auth_dns`, `generate_dkim_key`). Don't
hand-craft those TXT records through `dns_record` when a purpose-built tool exists — the
syntax is unforgiving and a malformed SPF record can fail closed.

---

## TLS certificates

### Routine expiry watch
`cert_expiry_check` across sites. Anything under 14 days is actionable; under 7 is urgent.
Report the chain, not just the leaf — an expired intermediate breaks a leaf that looks fine.

### Issuing / renewing
`issue_certificate` drives ACME. Before calling it:
- confirm the name resolves to this host (`diagnose`) — ACME validation fails otherwise, and
  repeated failures hit rate limits that lock you out for days;
- confirm the challenge path is reachable (`serving_path_diagnosis`).

**Hard limit: a server certificate must never exceed 398 days.** Browsers refuse longer
certificates outright, with no click-through — strictly worse than an expired one. Clamp at
397 days. This is not a preference.

### "The certificate is valid but the browser complains"
Almost always the wrong certificate is being served, not an invalid one:
`serving_path_diagnosis` to find which host/vhost actually answers, then check name
mismatch, missing SAN, or a proxy terminating TLS with its own certificate.

---

## Routers and perimeter

### Health and attack signals
`router_info` returns far more than status: IDS/Suricata alerts, admin/SSH brute-force
spikes with the busiest source IP, unexpected reboots, resource stress, pending firmware,
down gateways and no-carrier interfaces. Use it for "is my router under attack / healthy /
up to date / when did it reboot".

It is read-only and talks to the router's own API. It does **not** edit firewall rules.

Routers commonly share LAN IPs (`192.168.1.1`), so identity is confirmed by MAC or public
IP — trust the tool's identification over an address you assumed.

### Firewall changes
1. `firewall_policies` first. Never add a rule without reading the existing set — order
   matters, and a rule above yours may already deny what you are permitting.
2. Propose the rule, its direction, scope and what it exposes.
3. `firewall_rule` to apply.

A rule that locks out management access locks *you* out too, and recovery is physical.
Check that your own path survives the change before applying it.

### Rebooting
`reboot_router` drops every connection through it, including the one you are using and any
remote access to the site. Confirm there is an out-of-band path (`kvm`, a second WAN, a
person on site) before calling it. Treat it as the last resort after `router_info` shows a
condition only a reboot clears.

---

## Overlay networks and remote access

- `tailscale_control` — node state, routes, exit nodes. Approving a subnet router or exit
  node changes what the whole tailnet can reach; say so before doing it.
- `zerotier_controller` — read members and routes on the self-hosted controller.
- `setup_tailscale` — onboarding a new node.

Watch key expiry: an expiring node key silently removes access at a time nobody chose.

## Tunnels and temporary exposure

`tunnel` and `debug_share` expose a local service outward. Both take an `action`
(`create`/`list`/`delete`, `open`/`list`/`close`); the older `tunnel_create`,
`tunnel_delete` and `debug_share_close` names still dispatch to them.
`debug_share` also has `serve`/`stop`: `serve` runs a project folder as a localhost dev
server and replies with its host and port, and — only with `"tailscale": true` — this Mac's
Tailscale URL on the same port (tailnet peers only, never the LAN). Pass those addresses on
in your report; `stop` it when the task is done.
This is the most dangerous category in the module, because it is easy, reversible-looking
and frequently requested.

Before opening anything:
- name exactly which local service becomes reachable, and by whom;
- prefer a TTL so it closes itself;
- never expose an admin interface, database or unauthenticated service;
- close it (`tunnel` with `delete`, `debug_share` with `close`) as soon as the task is done,
  and say in your report that you did.

"A teammate asked for it" is not sufficient justification. You own this decision.

---

## Physical layer

- `snmp_status` / `snmp_control` — switch ports and PoE. Power-cycling a port drops the
  device on it; if that device is the uplink or the camera you are debugging, you lose your
  own visibility.
- `ups_status` — battery, load, runtime. A UPS on battery is a deadline, not a status.
- `kvm` — remote power and console. This is your out-of-band path; keep it working, and
  never power-cycle a host to "fix" something you have not diagnosed.
- `discover_devices` / `pin_device` — inventory. Note that discovery writes state and is
  classified mutating.

### macOS 27 caveats
`netstat -p tcp/udp` returns nothing and the ARP cache is gated behind Local Network
access — **both fail silently**. An empty result from these is not evidence of an empty
network. Prefer `lsof`-based paths and the app's own discovery, and never conclude "nothing
is listening" from a silent failure.

---

## Escalating to humans

Use `send_notification` when:
- you made a change that affects reachability;
- you found an attack signal (`router_info` IDS/brute-force) — report, do not counter-attack;
- a certificate is expiring and you cannot renew it;
- you were refused and the work is genuinely blocked.

Include what you observed, what you changed, and how to undo it. Route the decision to the
human rather than escalating your own permissions.
