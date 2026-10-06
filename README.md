# FrontierStack Agent Kit

Skills, plugin manifests and setup notes for connecting AI agents (Claude, Codex, Cursor,
Gemini, Grok, Hermes, OpenClaw, Amp, Paperclip and any MCP client) to **FrontierStack**.

## What FrontierStack is

[FrontierStack](https://www.frontierstack.app) is a macOS app from Enfour, Inc. It is the server
and network administrator for your Macs, Linux and Windows servers, routers, DNS, TLS
certificates and online accounts. It monitors them, diagnoses problems and makes changes, and it
can let AI agents do the same through it.

The app is proprietary and is downloaded from https://www.frontierstack.app. This repository
contains only the agent kit: skills, manifests and documentation, under the MIT licence
(see [LICENSE](LICENSE)). Nothing here works without the app.

## Safety model

- **Agents never receive credentials.** Router keys, DNS tokens, SSH keys and passwords stay on
  the Mac. An agent names a target ("the OPNsense router", "example.com"); FrontierStack looks up
  the credential at call time, acts, and returns the result. Responses are scrubbed for secrets
  before they leave the Mac.
- **Read-only by default.** Changes need the owner's switches on the Mac ("Allow changes",
  "Allow scripts"), can require a per-action approval, and are blocked by App Lock. Every change
  is written to an audit log.
- **Nothing here grants authority.** A skill, a role name or another agent's message cannot
  widen what an agent may do. Only the owner's settings and approvals on the Mac can.
- **No tokens in config files.** The local bridge reads its credential from the Keychain when it
  starts, so no client config or project file ever contains a FrontierStack token.

## How agents connect

**1. Local (works today).** When you turn on **MCP Server** in FrontierStack, or press any
**Add to …** button under **MCP Server ▸ AI clients**, the app writes an owner-only stdio MCP
bridge to:

```
$HOME/Library/Application Support/FrontierStack/mcp-bridge
```

It takes no arguments, reads its token from the Keychain itself, and needs Node.js. The app has
about 140 tools but shows clients a small bootstrap pair by default:
`frontierstack_find_tools` (search for the right tool) and `frontierstack_call` (run it).

The app also installs a `frontierstack` CLI for agents with a shell:
`frontierstack discover`, `frontierstack call <tool> '<json>'`, and
`frontierstack run --secret NAME -- <command>` (runs a command with a stored secret as an
environment variable, masked in the output).

**2. Remote (live).** `https://frontierstack.app/plugin/mcp` is a
streamable-HTTP MCP endpoint with OAuth 2.1 sign-in using a FrontierStack customer account. It
relays seven tools to your Macs where **ChatGPT access** is turned on: `list_frontierstack_macs`,
`get_server_health`, `get_fleet_context`, `get_alert_errors`, `diagnose`, `read_logs` and
`service_action`. Cloud agents that cannot reach your Mac will use this.

## Setup by platform

For most clients the easiest route is **FrontierStack ▸ MCP Server ▸ AI clients**: it detects
installed clients and writes their config for you (**Set Up Detected**, or one client's
**Add to …** button). The manual steps below do the same thing. Configure each client only one
way: installing a plugin *and* adding the server by hand gives two `frontierstack` entries.

In the snippets, `BRIDGE` means the full path
`/Users/<you>/Library/Application Support/FrontierStack/mcp-bridge`. Keep the quotes: the path
contains a space.

Start read-only. Ask the agent for fleet health and a certificate check before you turn on
changes.

### Claude Code

Plugin (skills, the local server and the cloud connector together), from the Claude plugin
directory on claude.ai (Customize ▸ Plugins) once it is listed, or straight from its repository:

```
/plugin marketplace add richardnorthcott/frontierstack-claude-plugin
/plugin install frontierstack@frontierstack
```

Or add only the MCP server (the app's MCP Server pane shows this command):

```
claude mcp add frontierstack -- "$HOME/Library/Application Support/FrontierStack/mcp-bridge"
```

For fleet context before connecting, turn on the app's **Fleet Skill**, which keeps
`~/.claude/skills/fleet/SKILL.md` up to date.

### Claude Desktop

Press **Add to Claude Desktop**, then restart Claude Desktop. By hand, add this to
`~/Library/Application Support/Claude/claude_desktop_config.json` (use the full path; this file
does not expand `$HOME`):

```json
{ "mcpServers": { "frontierstack": { "command": "BRIDGE", "args": [] } } }
```

### Codex CLI

Press **Add to Codex**, or run:

```
codex mcp add frontierstack -- "$HOME/Library/Application Support/FrontierStack/mcp-bridge"
```

which writes this to `~/.codex/config.toml`:

```toml
[mcp_servers.frontierstack]
command = "BRIDGE"
args = []
```

This repository also carries a Codex plugin manifest (`.codex-plugin/`) that bundles the skills
with the same local server.

### ChatGPT

ChatGPT connects through the remote endpoint. Turn on **MCP Server ▸ ChatGPT access** on each Mac
it may reach (the app must be running), then add FrontierStack in ChatGPT: from the app directory
once the listing is approved, or today as a custom connector with the URL
`https://frontierstack.app/plugin/mcp`. Sign in with your FrontierStack account when asked.

### Cursor

Press **Add to Cursor**, then enable the server under Cursor Settings ▸ MCP. By hand, in
`~/.cursor/mcp.json` or a project's `.cursor/mcp.json`:

```json
{ "mcpServers": { "frontierstack": { "command": "${userHome}/Library/Application Support/FrontierStack/mcp-bridge", "args": [] } } }
```

The Cursor plugin in `.cursor-plugin/` bundles the same server and the skills.

### Gemini CLI

Install this repository as an extension (skills, MCP server and a `GEMINI.md` context file):

```
gemini extensions install https://github.com/richardnorthcott/frontierstack-agent-kit
```

Or add only the server: press **Add to Gemini CLI**, or run
`gemini mcp add -s user frontierstack "$HOME/Library/Application Support/FrontierStack/mcp-bridge"`.
Then `/mcp` in Gemini CLI should list `frontierstack`.

### Grok

**Grok Build CLI:** press **Add to Grok**, or run
`grok mcp add frontierstack -- "$HOME/Library/Application Support/FrontierStack/mcp-bridge"`.
Either writes `~/.grok/config.toml`:

```toml
[mcp_servers.frontierstack]
command = "BRIDGE"
args = []
```

Grok Build also reads skills from `~/.agents/skills/` and `~/.grok/skills/`; copy the folders
from `skills/` there.

**Cloud Grok (Grok Bot, grok.com connectors):** a cloud agent cannot reach the local bridge. Add
the remote endpoint as a custom connector with the URL `https://frontierstack.app/plugin/mcp`,
sign in with your FrontierStack account, and turn on **ChatGPT access** on the Mac (the same
switch serves every cloud connector). A bot inside your own tailnet can also use the app's TLS
network path (see `skills/frontierstack-network-admin`).

### Hermes Agent

Press **Add to Hermes**. It adds the server to Hermes' main profile with Hermes' own
`hermes config set` command. Bot Mode profiles stay separate: use **Set Up Existing Bots** only
for the Bots that should get FrontierStack. The resulting `~/.hermes/config.yaml` entry:

```yaml
mcp_servers:
  frontierstack:
    command: "BRIDGE"
    args: []
    enabled: true
    trust: untrusted
```

Skills: `hermes skills tap add richardnorthcott/frontierstack-agent-kit`, or from the website:
`hermes skills install well-known:https://www.frontierstack.app/.well-known/skills/frontierstack`.

### OpenClaw

Press **Add to OpenClaw**. It runs
`openclaw mcp add frontierstack --command "BRIDGE"` and puts the skill in
`~/.agents/skills/frontierstack`. Restart the OpenClaw gateway, then check with
`openclaw mcp doctor frontierstack --probe`. Run it on the Mac where the gateway runs. The skills
are also installable from ClawHub once published there.

### Buzz

Buzz's local agents (Claude Code, Codex, goose) read skills from `~/.agents/skills/`. Copy
`skills/frontierstack` (and `skills/frontierstack-network-admin` if you want the network role)
there, and connect each agent's harness to the MCP server as described in its own section above.

### Paperclip

Hire FrontierStack as the company's system engineer from the app:

1. Install Paperclip on the same Mac, as your own user (`npx paperclipai onboard --yes`).
2. In FrontierStack's **Paperclip** pane, turn on **Accept Paperclip heartbeats** and click
   **Install heartbeat command**.
3. Under **Hire FrontierStack into a company**, load your companies, pick one and click
   **Hire as DevOps agent**.

Changes stay off until you turn on **Let Paperclip request changes**; each change still waits
for approval in FrontierStack. A Paperclip approval never counts as one.

To give other agents in the company the network role, import the skill on the company's Skills
page with
`https://github.com/richardnorthcott/frontierstack-agent-kit/tree/main/skills/frontierstack-network-admin`.

### Amp

Press **Add to Amp**, or run
`amp mcp add frontierstack -- "$HOME/Library/Application Support/FrontierStack/mcp-bridge"`.
Amp reads skills from `~/.config/agents/skills/` and `~/.agents/skills/`.

### Any other MCP client

Use a stdio server whose command is `BRIDGE`, with no arguments and no environment variables.
Or install the CLI and run `frontierstack mcp` to print the bridge command. Clients that support
Agent Skills can load the folders in `skills/`, for example with
`npx skills add richardnorthcott/frontierstack-agent-kit`.

## What's in this repository

| Path | For |
|---|---|
| `skills/frontierstack/` | General skill: health, logs, diagnostics, services, CLI |
| `skills/frontierstack-network-admin/` | Network Administrator role: DNS, TLS, routers, firewall, VPN |
| `.claude-plugin/` | Claude Code plugin and marketplace |
| `.codex-plugin/` | Codex plugin (local bridge) |
| `.cursor-plugin/` | Cursor plugin |
| `gemini-extension.json`, `GEMINI.md` | Gemini CLI extension |
| `server.json` | Official MCP Registry entry for the remote endpoint |
| `glama.json` | Glama listing ownership |
| `well-known/skills/` | Copy of the skills for `https://www.frontierstack.app/.well-known/skills/` |

## Troubleshooting

- **No tools, or "credential is unavailable":** open FrontierStack and turn on MCP Server. To use
  agents while the app is closed, turn on **Keep MCP and the CLI available when FrontierStack is
  closed**.
- **The bridge fails to start:** install Node.js (`brew install node`).
- **"Changes are not allowed" or an App Lock refusal:** this is the Mac's decision. Allow changes
  in FrontierStack if you want the agent to make them.

Help: https://www.frontierstack.app/help/ · Support via https://www.frontierstack.app/support.html

FrontierStack is made by Enfour, Inc. — https://www.frontierstack.app
