# FrontierStack — Capabilities

FrontierStack is a native macOS app that replaces and extends macOS Server.app. It manages a large catalog of local and remote services, plus built-in tools for diagnostics, deployment, monitoring, AI, networking and infrastructure. This document is generated from the app's own service catalog and tool registry.

Snapshot: 1186 services · 194 tool panes when generated. The live, current list comes from the app itself: the `frontierstack://capabilities` MCP resource or `frontierstack capabilities`.

## How an AI can drive the app
The built-in **AI Administrator** (a tool-using agent over any cloud or local model) can: tailor which categories appear in the sidebar to the user's stack, run read-only diagnostics, restart services, test PHP/Python, and — with the user's per-script approval — author and run case-by-case admin scripts locally or on linked servers.

## Services by category
### Overview

- **Local Health** — built-in tool
  - Local Health Dashboard — One board of every monitored service, device & subsystem up/down
- **Status Page** — built-in tool
  - Status Page (public) — Publish a self-hosted statuspage from your health data
- **Alerts** — built-in tool
  - Configure Alerts — Email/SMS/LINE/Telegram when a service goes down
  - AI Evaluation Report — AI-composed health report emailed on a schedule, plus a fuller write-up on a serious incident
  - AI Auto-Remediation — On a 2+ critical incident, the AI proposes reversible fixes (restart/flush DNS/reboot) for one-click approval or auto-apply
- **Sites** — built-in tool
  - Add Site — Create a new virtual host / site
  - Domain Health & SEO — Check DNS/HTTP/SSL, Cloudflare zone & serving server for every domain, with an AI SEO score
  - Fix My Site (AI) — One-click AI diagnose-and-fix for a broken site — reads the vhost, logs, files & database, then proposes/applies the fix
  - Share a Site Publicly — Give a local site a temporary public URL (Cloudflare Quick Tunnel) for client review & phone testing — no router or DNS setup
  - Trusted HTTPS (mkcert) — One-click browser-trusted local HTTPS for a site — a real green lock, unlike MAMP's self-signed certs
  - WordPress Toolkit (AI) — AI WordPress assistant — domain search-replace, plugin/security audit, fix white screen & DB errors
  - Optimize Images — Shrink a site's images in place — lossless PNG/GIF, lossy JPEG with quality, strip metadata, plus optional max width/height resize
  - Promote to Production — Deploy a local site to a fleet server — files, database, vhost, Cloudflare DNS & a real Let's Encrypt certificate in one push
  - Python App (WSGI) — Host a Python web app (Flask/Django) for a site via mod_wsgi — app mount, index.py, virtualenv, processes/threads
  - Index My Site — Ask Google (sitemap + Indexing API) and IndexNow (Bing/Yandex/Seznam/Naver) to (re)index your site
- **Logs** — built-in tool
  - Change Log (Audit) — Who changed what — User/AI/Web/MCP/Automation + alerts (in Logs)
- **Certificates** — built-in tool
  - mkcert — Trusted local HTTPS certificates
  - Add Certificate — Import or create an SSL certificate
  - Generate Self-Signed Certificate — Create a local dev certificate
- **Tools** — built-in tool
  - Remote Access — AnyDesk & ARD — Open/quit AnyDesk and get its ID; turn off Apple Remote Desktop
  - Flush DNS Cache — Clear the macOS DNS resolver cache
  - SIP Ping a PBX — OPTIONS-ping a SIP server for Alerts
  - Flush DNS Cache — Reset the macOS DNS resolver cache
  - Edit Hosts File — Edit /etc/hosts
  - Ports in Use — See what's listening on which ports
  - Network Info & Netstat — Apple Network Utility: interface info + netstat (routing, stats, sockets)
  - SSL Inspector — Check a site's TLS certificate
  - SIP Health Check — OPTIONS-ping a PBX/SIP server & watch it in Alerts
- **Scripts & Cron** — built-in tool
  - Scripts, Cron & Scheduling — Save scripts, schedule cron jobs, and in-app scheduled actions (reboot a server, pause a service)
- **Startup Items** — built-in tool
- **Homebrew** — built-in tool
  - Install Homebrew Packages — Install homebrew formula or cask
  - Homebrew Packages — List, update, uninstall packages
  - Homebrew Update All — Update all outdated packages
- **Messaging Gateways** — built-in tool
  - Compose & Send Message — Compose and send messages through enabled gateways
  - Telegram Gateway — Configure Telegram bot token and chat IDs
  - Email (SMTP) Gateway — Configure email notifications via SMTP
  - SMS Gateway — Set up SMS notifications via Twilio
  - Slack Gateway — Configure Slack incoming webhooks
  - Discord Gateway — Configure Discord webhook URLs
  - Messaging Gateways — Configure ntfy, Gotify, WhatsApp, LINE, Apprise, iMessage
- **Notifications** — built-in tool
  - ntfy Notifications — Configure ntfy server for push notifications
  - Gotify Notifications — Configure Gotify server for push notifications
- **Apple Services** — built-in tool
  - Apple Services — Hub: Apple Account, iCloud, Find My, HomeKit, AirPlay, Continuity, Time Machine
- **Terminal Style** — built-in tool
- **Setups** — built-in tool
  - Save / Restore Setup — Save and restore service layouts with palette configurations
  - Bind Setup to Location — Link setups to network locations for automatic switching
- **Settings** — built-in tool
  - Backup Now — Snapshot the app's configuration
  - Export Capabilities — Write CAPABILITIES.md / capabilities.json for AI engines
  - Text Editor Settings — Built-in code editor (line numbers, syntax highlighting, soft-wrap, tab width, page guide) and a default external editor like BBEdit or VS Code
  - Privacy & Diagnostics — Opt out of anonymous usage analytics and crash reports

### Setup & Migration

- **Migrate Setups** — built-in tool
  - Migrate Setups — Move a MAMP, XAMPP, or Apple Server.app stack onto Homebrew
- **Site Transfer** — built-in tool
  - Site Transfer — Pull a site in from an external host (FTP/SFTP + MySQL), or publish out to it — with an 'ask your host' email template
- **Install Wizard** — built-in tool

### Locations & Places

- **Locations** — built-in tool
  - Manage Locations — Define locations (Home, Office, Café, VPN) by network
  - Location-Dependent Monitoring — Scope alerts and monitoring to specific locations
  - Location Change Notifications — Alerts when you move between locations
- **Places** — built-in tool
- **Device Discovery** — built-in tool
  - Network Device Scan — Scan subnet via ping, TCP, Bonjour, SSDP, SNMP, LLDP/CDP
  - Add a device by IP — Add a device directly by its IP — probed, classified and pinned, no full scan
  - Drobo NAS (network) — Find a network Drobo (5N / B810n) as a NAS device, then open its Web UI / Drobo Dashboard
  - Discovery Methods — Enable/disable ping, TCP, Bonjour, SSDP, SNMP, LLDP
  - SNMP OIDs & templates — Query any OID or apply a generic SNMP template (System, Interfaces, Host Resources, Printer, UPS, Synology, QNAP, APC) on a device
- **Data Map** — built-in tool

### Fleet & Remote

- **Remote Tools** — built-in tool
  - Ping Host — Reachability test a remote server
  - rsync Deploy — Sync files to a remote server
  - Remote Network Tools — Network Info, Netstat, Traceroute, Whois, Port Scan & more on a node or custom IP
  - Enable Passwordless Control — Set up passwordless sudo on a linked server
- **Fleet Run** — built-in tool
  - Fleet Run — Run a command across all linked servers at once
- **Remote KVM** — built-in tool
  - Remote KVM — Register KVM-over-IP consoles (PiKVM, JetKVM, GL.iNet Comet) — pin, open control, power on/off/cycle
- **GL.iNet KVM** — built-in tool
  - GL.iNet KVM — GL.iNet Comet / Comet Pro (GL-RM10) — KVM-over-IP plus a built-in smart power plug
- **Remote Control & Lock** — built-in tool
  - Remote Control & Lock — Webhook/Shortcuts HTTP control + app password lock
- **Server Clone** — built-in tool
  - Clone to a Server — Provision or clone this Mac's stack onto a fleet server
- **Headless Setup** — built-in tool
  - Headless Mac Setup — One-click: Screen Sharing + SSH on, never sleep, wake on network, auto power-on after an outage, restart on freeze
- **Print Production** — built-in tool
  - Production Print Fleet — Dashboard of printers/RIPs with status and supply levels
  - Imposition Calculator — Calculate sheet layout, 2-up count, and production cost
  - PDF Preflight — Check customer files: pages, PDF version, fonts, color mode, DPI
- **Screens** — Polished VNC client for Mac & iOS (Edovia)
- **PiKVM** — Open-source KVM-over-IP (Raspberry Pi) _(port 443, web UI)_
- **JetKVM** — Compact, low-cost KVM-over-IP device _(port 80, web UI)_
- **TinyPilot** — KVM-over-IP appliance (web UI) _(port 443, web UI)_
- **NanoKVM** — Sipeed open KVM-over-IP (RISC-V) _(port 80, web UI)_
- **GL.iNet Comet (GL-RM1)** — Compact KVM-over-IP with a browser console _(port 80, web UI)_
- **GL.iNet Comet Pro (GL-RM10)** — KVM-over-IP with a built-in smart power plug _(port 80, web UI)_
- **Amphetamine** — Keep a Mac awake for lights-out control (local)
- **Raritan Dominion KX** — Enterprise KVM-over-IP switch (web UI) _(port 443, web UI)_
- **ATEN KVM over IP** — KVM-over-IP switches & dongles (web UI) _(port 443, web UI)_
- **Jump Desktop** — Fast, secure remote desktop (RDP/VNC/Fluid)
- **RustDesk** — Open-source remote desktop with optional self-host relay _(port 21115, web UI)_
- **MeshCentral** — Self-hosted web RMM and remote control _(port 443, web UI)_
- **Apache Guacamole** — Clientless RDP, VNC and SSH gateway _(port 8080, web UI)_
- **Windows Remote Desktop** — RDP access to Windows machines _(port 3389)_
- **WinRM / PowerShell Remoting** — Remote command channel for Windows servers _(port 5986)_
- **Tactical RMM** — Open-source RMM for Windows-focused fleets _(port 443, web UI)_
- **AnyDesk** — Cross-platform remote desktop

### Networking

- **Traffic** — built-in tool
- **VPN** — built-in tool
  - Connect VPN — Turn a VPN on or off
- **Router & Network** — built-in tool
  - IPsec / VPN tunnels — Tunnel status (Router & Network)
  - NetFlow — Flow collector status (Router & Network)
  - ARP Neighbors — ARP neighbor table (Router & Network)
- **SFTP** — built-in tool
  - Enable SFTP — Turn on SSH/SFTP & SFTPGo file access
- **WebDAV** — built-in tool
  - Apache WebDAV — Enable mod_dav for WebDAV sharing in Apache
  - WebDAV Quick Server — Run standalone WebDAV server (dufs, rclone, SFTPGo)
  - Mount WebDAV in Finder — Mount WebDAV share as a drive in Finder
- **Time Capsule** — built-in tool
  - Time Capsule Wi-Fi — Check Time Capsule Wi-Fi status and open AirPort Utility
  - Time Capsule Backup — Monitor and manage Time Machine destination
  - Time Capsule Printer Sharing — Check shared printer status and test print
- **Internet Health** — built-in tool
  - Speed Test — Measure internet download/upload speed, latency & responsiveness (Ookla or networkQuality)
- **Service Scan** — built-in tool
  - Discover Services / Port Scan — Sweep any IP, range or CIDR and fingerprint what's listening — web apps & databases — then open with one click
- **Wi-Fi Analyzer** — built-in tool
  - Wi-Fi Analyzer — Discover & analyze nearby Wi-Fi networks, channels & signal
- **Headscale** — Self-hosted Tailscale control server (open-source) _(port 8080, brew: headscale)_
- **netboot.xyz** — Network-boot OS installers via PXE/iPXE _(port 3000, web UI)_
- **TP-Link LightLink VPN** — TP-Link remote-access VPN — managed via the Navi Desktop app
- **Tailscale** — WireGuard mesh VPN _(brew: tailscale)_
- **Zeroconf / Bonjour** — Zero-configuration service discovery (mDNS/DNS-SD) _(port 5353)_
- **Tunnelblick** — Free OpenVPN client for macOS

### Routers & Firewalls

- **macOS Firewall** — built-in tool
  - macOS Firewall (Application Firewall & pf) — macOS firewall: enable, stealth, block-all incoming, logging, plus the pf packet filter
- **OPNsense** — Open-source firewall/router OS (REST API) _(port 443, web UI)_
- **pfSense** — FreeBSD firewall/router OS (REST via package) _(port 443, web UI)_
- **MikroTik (RouterOS)** — RouterOS devices — REST API (v7+) _(port 443, web UI)_
- **UniFi** — Ubiquiti UniFi gateways/controllers (API key) _(port 443, web UI)_
- **Peplink** — SD-WAN routers with multi-WAN failover/bonding _(port 443, web UI)_
- **Cradlepoint** — Cellular/5G edge routers (NCOS + NetCloud) _(port 443, web UI)_
- **OpenWrt** — Open-source router firmware (LuCI / ubus) _(port 80, web UI)_
- **IPFire** — Hardened open-source Linux firewall (web UI) _(port 444, web UI)_
- **VyOS** — Linux network OS — unified CLI + HTTPS API _(port 443, web UI)_
- **Untangle / Arista NG Firewall** — Debian network gateway — web admin (commercial) _(port 443, web UI)_
- **Sophos Firewall** — Next-gen firewall appliance — web UI + API (commercial) _(port 4444, web UI)_
- **FortiGate** — Fortinet next-gen firewall — REST API (commercial) _(port 443, web UI)_
- **Palo Alto Networks** — PAN-OS next-gen firewall — XML/REST API (commercial) _(port 443, web UI)_
- **Cisco Secure Firewall** — Cisco NGFW (Firepower/ASA) — FMC/FDM API (commercial) _(port 443, web UI)_
- **WatchGuard Firebox** — Fireware firewall appliance — web UI + Cloud API (commercial) _(port 8080, web UI)_
- **UFW (Uncomplicated Firewall)** — Easy iptables/nftables host firewall for Linux servers (manage over SSH)

### Web Servers

- **Apache** — built-in tool
  - Import Apache Sites — Import from Apple Server, MAMP, XAMPP, system Apache, or a folder
  - New Site + DNS — Create a site + Cloudflare DNS record + Dynamic DNS in one flow
- **Nginx** — built-in tool
  - Nginx Server Control — Start, stop, restart nginx and view status
  - Nginx Ports — Configure the default listen port for nginx
  - Nginx Config Validation — Test nginx configuration for syntax errors
  - Nginx Modules — Load and enable dynamic nginx modules
  - Nginx Server Blocks — Add, edit, enable/disable server blocks for vhosts
- **Vercel** — built-in tool
  - Vercel Project Linking — Link local folder to a Vercel project
  - Vercel Local Dev — Run vercel dev to develop projects locally
  - Vercel Deployments — Deploy preview and production versions to Vercel
  - Vercel Env Variables — Pull and manage environment variables from Vercel
- **Railway** — built-in tool
  - Railway Project Linking — Link a local folder to a Railway project
  - Railway Deploy — Deploy an app to Railway with railway up
  - Railway Run/Dev — Run locally with Railway variables injected (railway run)
  - Railway Variables — Inspect Railway service variables
- **Vite** — built-in tool
  - Vite Dev Servers — Start, stop, and manage Vite dev servers
  - Create Vite Project — Scaffold new Vite projects with npm create vite
- **Localhost** — built-in tool
  - PHP Built-In Server — Manage PHP localhost development servers
  - Localhost Router File — Convert .htaccess to router.php for PHP built-in server
  - Localhost HTTPS — Enable HTTPS with mkcert for localhost servers
  - Test Domain Resolver — Set up wildcard .test domain resolver with dnsmasq
- **Caddy** — Automatic-HTTPS web server / reverse proxy _(port 80, brew: caddy)_
- **Laravel Herd** — One-click PHP dev environment (Mac app) _(port 80)_
- **Apache Tomcat** — Java servlet/JSP application server _(port 8080, web UI, brew: tomcat)_
- **Microsoft IIS** — Windows web server and application platform _(port 80, web UI)_
- **OpenLiteSpeed** — High-performance web server with web admin UI _(port 7080, web UI)_
- **Angular CLI** — Scaffold, serve & build Angular apps _(port 4200, web UI)_
- **Nuxt** — Vue meta-framework (SSR/SSG/hybrid) _(port 3000, web UI)_

### DNS

- **Dynamic DNS** — built-in tool
  - Duck DNS — Dynamic DNS provider — keep a hostname pointed at your IP
  - No-IP — Dynamic DNS provider — keep a hostname pointed at your IP
- **DNS** — built-in tool
  - Edit DNS Server Config — Edit a DNS server's config (BIND named.conf, Unbound, dnsmasq, NSD, Knot, CoreDNS…) in the built-in editor or an external app, with a syntax check
  - Import Zone into BIND — Load a zone file (BIND/CoreDNS/dnsmasq/Unbound/hosts) into the local BIND as a master zone — writes the zone, wires named.conf, checks & reloads
- **Domain Registrars** — built-in tool
  - Register / Buy a Domain — Check availability + price and register a new domain via Porkbun or Namecheap (AI/MCP), then wire DNS
  - Domain Registrars — Watch domain expiry, DNS, SSL & renewals across registrars
- **AdGuard Home** — Network-wide ad/tracker-blocking DNS (self-hosted) _(port 3000, web UI)_
- **Pi-hole** — Network-wide ad/tracker-blocking DNS sinkhole _(port 80, web UI)_
- **Nebula Sync** — Sync configuration across Pi-hole instances
- **Kea DHCP** — ISC's modern DHCPv4/DHCPv6 server (REST + DB back-ends) _(port 8000)_
- **ISC DHCP** — Classic ISC dhcpd (EOL — migrate to Kea)
- **Dnsmasq** — Lightweight DNS forwarder + DHCP + TFTP _(port 53, brew: dnsmasq)_
- **udhcpd (BusyBox)** — Tiny DHCP server (BusyBox / embedded)
- **Infoblox NIOS (DDI)** — Enterprise DNS / DHCP / IPAM appliance (DDI) _(port 443, web UI)_
- **Windows Server DHCP** — DHCP Server role on Windows Server

### Runtimes

- **Runtime Health** — built-in tool
  - Runtime Health — Apache/PHP runtime self-check + installed language runtimes (Node, Python, Ruby, Go, Rust, Java…)
- **PHP** — built-in tool
  - Composer — PHP dependency manager
  - Xdebug — PHP step debugger & profiler
  - MacGDBp — macOS Xdebug debugger client
  - Update Composer — Self-update, rollback, diagnose, clear cache, channel
  - Dev Mail Catcher (Mailpit) — Capture all outgoing PHP mail in a local inbox instead of sending it — Mailpit on :8025
- **Python** — built-in tool
  - pipx — Install Python CLI apps in isolated envs
  - pip — Python package installer
  - virtualenv — Python virtual environments
  - Poetry — Python packaging & dependency manager
  - uv — Fast Python package/installer
  - conda — Python/data environment manager
  - Search PyPI — Look up packages & set the pip index
  - Set Default Python — Choose the default interpreter
- **Node.js** — built-in tool
  - nvm — Node version manager
  - pnpm — Fast Node package manager
  - Yarn — Node package manager
  - Bun — JS runtime & package manager
- **Java** — built-in tool
  - JDK Installation — Install and manage Java Development Kits (JDKs)
  - Java Build Tools — Install Maven, Gradle, Ant, sbt, kotlinc
  - JAVA_HOME — Configure and export JAVA_HOME for shell commands
  - jshell REPL — Open the Java interactive shell
- **Go** — built-in tool
  - Go Installation — Install and update Go toolchain from Homebrew
  - Go Environment — Configure GOROOT, GOPATH, and GOBIN
  - Go Versions — Install and switch between multiple Go versions
  - Go Dev Tools — Install gopls, dlv debugger, golangci-lint, and more
- **Rust** — built-in tool
  - rustup — Rust toolchain manager
  - Cargo — Rust package manager
- **Ruby** — built-in tool
  - Bundler — Ruby gem dependency manager
  - rbenv — Ruby version manager
- **Perl** — built-in tool
  - cpanm — Perl module installer (cpanminus)
- **.NET** — built-in tool
  - .NET SDK — Install and update .NET SDK and runtimes
  - .NET Global Tools — Install and manage global dotnet tools
  - New .NET Project — Create new .NET projects (Web, API, Console)
- **Supabase Edge Functions** — Deno serverless functions on the edge _(port 54321)_
- **code-server** — VS Code in the browser (self-hosted) _(port 8080, web UI, brew: code-server)_

### Databases

- **MySQL** — built-in tool
  - phpMyAdmin — Web UI to manage MySQL/MariaDB
  - Adminer — Single-file database admin tool
- **MySQL Clusters** — built-in tool
  - MySQL Cluster Management — Define and manage MySQL/MariaDB clusters with multiple nodes
  - Cluster Node Health — Check reachability, version, and role of cluster nodes
- **Postgres** — built-in tool
  - Postgres Server Control — Start, stop, restart PostgreSQL
  - Postgres Configuration — Edit postgresql.conf and pg_hba.conf files
  - Postgres PHP Driver — Check pdo_pgsql and pgsql extensions for PHP
- **Database Ops** — built-in tool
  - DB Replication Monitoring — Watch MySQL replica/Postgres standby lag with alerts
  - DB Backup Jobs — Schedule verified mysqldump and pg_dump with offsite rsync
- **Database Health** — built-in tool
- **Drizzle ORM** — built-in tool
  - drizzle-kit — Drizzle ORM commands
- **Prisma** — built-in tool
  - Prisma CLI — Prisma ORM commands
- **Airtable** — built-in tool
  - Airtable — Browse bases, tables, records, views & webhooks
- **Supabase** — built-in tool
  - Supabase CLI Setup — Install and initialize Supabase CLI
  - Supabase Local Stack — Start and stop the local Supabase stack
  - Supabase Services & Keys — Access Studio, API URLs and authentication keys
  - Supabase Migrations — Run migrations and reset database
  - Supabase Hosted Link — Link to hosted Supabase project for push/pull
- **MongoDB** — Document (NoSQL) database _(port 27017, brew: mongodb-community)_
- **MariaDB** — MySQL-compatible open-source database _(port 3306, brew: mariadb)_
- **Microsoft SQL Server** — Microsoft relational database for Windows and Linux _(port 1433)_
- **Oracle Database** — Enterprise relational database _(port 1521, web UI)_
- **CockroachDB** — Distributed SQL database _(port 26257, web UI)_
- **Apache Cassandra** — Distributed wide-column database _(port 9042, brew: cassandra)_
- **ScyllaDB** — High-performance Cassandra-compatible database _(port 9042)_
- **Neo4j** — Graph database with Cypher query language _(port 7474, web UI, brew: neo4j)_
- **Apache CouchDB** — Document database with HTTP API and sync _(port 5984, web UI, brew: couchdb)_
- **Couchbase Server** — Distributed document, key-value and search database _(port 8091, web UI)_
- **PostgREST** — Instant REST API over a PostgreSQL database _(port 3000)_
- **Patroni** — HA PostgreSQL — automatic failover _(port 8008, web UI)_

### Vector Databases

- **Qdrant** — Fast vector DB for embeddings & RAG (self-hosted) _(port 6333, web UI)_
- **Chroma** — Developer-friendly embedding database (self-hosted) _(port 8000)_
- **Weaviate** — Vector DB with built-in vectorizers & hybrid search (self-hosted) _(port 8080)_
- **Milvus** — Scalable, distributed vector database (self-hosted) _(port 19530)_
- **pgvector** — Vector search inside PostgreSQL (extension) _(port 5432)_
- **FAISS** — Fast in-process vector similarity search (library)

### Analytics Databases

- **InfluxDB** — Time-series database for metrics and IoT _(port 8086, web UI, brew: influxdb)_
- **ClickHouse** — Columnar OLAP database for fast analytics _(port 8123)_
- **Apache Druid** — Real-time analytics database (OLAP) _(port 8888, web UI)_
- **TimescaleDB** — Time-series database (PostgreSQL extension) _(port 5432)_

### Data Pipelines & ETL

- **Airbyte** — Open-source ELT with 300+ connectors (self-hosted / cloud) _(port 8000, web UI)_
- **Meltano** — Open-source ELT built on Singer taps & targets (CLI) _(port 5000, web UI)_
- **dbt** — SQL-based data transformation & modeling (self-hosted / cloud) _(port 8080, web UI)_
- **Dagster** — Asset-oriented data orchestrator (self-hosted / cloud) _(port 3000, web UI)_
- **Prefect** — Modern Python workflow orchestration (self-hosted / cloud) _(port 4200, web UI)_
- **Kestra** — Event-driven orchestration & scheduling, YAML flows (self-hosted) _(port 8080, web UI)_
- **Redpanda Connect (Benthos)** — Declarative stream-processing & connectors (self-hosted CLI) _(port 4195)_
- **NATS JetStream Pipelines** — Persistent streams & consumers for event pipelines (self-hosted) _(port 8222, brew: nats-server)_

### Caching

- **Redis** — In-memory key-value store _(port 6379, brew: redis)_
- **Memcached** — Distributed memory cache _(port 11211, brew: memcached)_

### Search

- **Elasticsearch** — Search & analytics engine (Elastic) _(port 9200, web UI, brew: elasticsearch-full)_
- **Meilisearch** — Fast, typo-tolerant search engine _(port 7700, web UI, brew: meilisearch)_
- **OpenSearch** — Search & analytics engine _(port 9200, web UI, brew: opensearch)_
- **Photon** — Self-hosted OpenStreetMap geocoder (search-as-you-type) _(port 2322)_

### Backup

- **Backups** — built-in tool
  - Auto-export Backups & Logs — Save settings backups, the change log and app logs to a folder on a schedule (Dropbox/Hazel), optionally rotating
  - Backups — Roll-up of Time Machine, Carbon Copy Cloner, config snapshots & Git history
- **Time Machine** — built-in tool
  - Time Machine — Last backup, Back Up Now, open Time Machine settings
- **Carbon Copy Cloner** — built-in tool
  - Carbon Copy Cloner Tasks — List, run and monitor Carbon Copy Cloner tasks
  - CCC Failure Alerts — Send alerts when CCC backup tasks fail
- **Synology Active Backup for Business** — Centralized backup for PCs, servers, VMs & SaaS (Synology) _(port 5001, web UI)_
- **Databasus** — Self-hosted database backup & point-in-time recovery _(web UI)_
- **Restic** — Fast, encrypted, deduplicated backups
- **rclone** — Sync & mount 70+ cloud storages
- **Dropbox (Backup Target)** — Use Dropbox as an encrypted off-site backup destination (restic / rclone)
- **Veeam Backup & Replication** — Enterprise VM, server and cloud backup _(port 9392, web UI)_
- **BorgBackup** — Deduplicating encrypted backups over SSH
- **Kopia** — Encrypted snapshots to cloud or local storage _(port 51515, web UI)_
- **Duplicati** — Web UI backups to cloud storage _(port 8200, web UI)_

### Storage & NAS

- **iCloud+** — built-in tool
  - iCloud+ — Storage, Family Sharing, Private Relay, Hide My Email, Custom Domains, HomeKit Secure Video
- **Xsan** — built-in tool
  - Xsan (StorNext SAN) — Manage Apple Xsan volumes from old macOS Server SAN setups — role, mount/unmount, check
- **Supabase Storage** — S3-compatible object storage from Supabase _(port 54321, web UI)_
- **Nextcloud** — Files, sync, office & app platform _(port 80, web UI)_
- **Syncthing** — Peer-to-peer continuous file sync _(port 8384, web UI, brew: syncthing)_
- **TrueNAS** — ZFS NAS OS — pools, snapshots, replication (self-hosted) _(port 443, web UI)_
- **Synology DSM** — Synology NAS appliance (DSM) _(port 5001, web UI)_
- **QNAP QTS** — QNAP NAS appliance (QTS/QuTS hero) _(port 8080, web UI)_
- **Ceph** — Distributed object/block/file storage cluster (self-hosted) _(port 8443, web UI)_
- **GlusterFS** — Scale-out network filesystem (self-hosted)
- **iSCSI (SAN)** — Block storage over TCP/IP — initiator & target (port 3260) _(port 3260)_
- **NVMe / NVMe-oF** — NVMe SSDs & NVMe-over-Fabrics targets (TCP/RDMA/FC) _(port 4420)_
- **Fibre Channel (SAN)** — FC SAN fabric — HBA ports, WWNs, multipath
- **RDMA / RoCE / iWARP** — Remote Direct Memory Access fabrics — RoCE & iWARP
- **InfiniBand Fabric** — InfiniBand HCA/fabric — ports, SM, port-error counters
- **NVIDIA NVLink** — GPU-to-GPU interconnect — per-link state & bandwidth
- **NVIDIA NVSwitch** — NVLink switch fabric — Fabric Manager service
- **Liqid (Composable)** — Composable PCIe/CXL fabric — pool & attach GPUs/NVMe _(web UI)_
- **GigaIO FabreX** — PCIe/CXL memory fabric — composable GPU pooling _(web UI)_
- **WEKA** — Parallel filesystem for AI/HPC (GPUDirect) _(port 14000, web UI)_
- **ownCloud** — Self-hosted file sync & share _(port 80, web UI)_
- **Seafile** — File sync & share with client-side encryption (self-hosted) _(port 8000, web UI)_
- **Resilio Sync** — P2P file sync (BitTorrent-based) _(port 8888, web UI)_
- **Dropbox** — Cloud file sync & share (app + API) _(web UI)_
- **Syncthing** — Open-source continuous P2P file sync (self-hosted) _(port 8384, web UI, brew: syncthing)_
- **File Browser** — Web file manager for a directory _(port 8080, web UI)_
- **Filestash** — Web file manager for S3/SFTP/FTP/WebDAV/… _(port 8334, web UI)_
- **Unraid** — NAS/server OS — storage array, VMs & Docker _(port 80, web UI)_

### Object Storage & S3-Compatible

- **MinIO** — S3-compatible object storage _(port 9000, web UI, brew: minio)_
- **SeaweedFS** — Fast distributed object/file store (self-hosted) _(port 8888, web UI)_
- **Garage** — Lightweight self-hosted S3 object store (Deuxfleurs) _(port 3900)_
- **Ceph RGW (RADOS Gateway)** — S3/Swift object gateway on a Ceph cluster (self-hosted) _(port 7480)_
- **OpenStack Swift** — Highly-available object store (OpenStack, self-hosted) _(port 8080)_
- **Cloudflare R2** — S3-compatible object storage with zero egress fees (cloud) _(web UI)_
- **Backblaze B2** — Low-cost cloud object storage, S3-compatible (cloud) _(web UI)_
- **Wasabi** — Hot cloud object storage, S3-compatible, no egress fees (cloud) _(web UI)_
- **RustFS** — High-performance S3-compatible object storage (Rust) _(port 9000, web UI)_

### Mail

- **Mail Server** — built-in tool
  - Mail Blocklists & Authentication — Check your mail server against DNS blocklists (Spamhaus, Barracuda, SORBS), verify SPF/DKIM/DMARC, and test for an open relay
- **Message Delivery** — built-in tool
  - Store & Forward Queue — Mail queue depth (Postfix) + Reticulum/LXMF propagation — with alerts
- **Proton** — Encrypted mail, VPN, drive & passwords (cloud) _(port 1025, web UI)_
- **Rspamd** — Fast spam-filtering system (self-hosted) _(port 11334, web UI)_
- **Apache SpamAssassin** — Rule-based spam classifier (self-hosted) _(port 783)_
- **MailScanner** — Email security framework / gateway (self-hosted)
- **Proxmox Mail Gateway** — Anti-spam/AV email gateway appliance (self-hosted) _(port 8006, web UI)_
- **mailcow** — Dockerized full mail-server suite (self-hosted) _(port 443, web UI)_
- **Modoboa** — Mail hosting & management platform (self-hosted) _(port 443, web UI)_
- **OpenDKIM** — DKIM signing & verification milter (self-hosted) _(port 8891)_
- **OpenDMARC** — DMARC policy filter & reporting (self-hosted) _(port 8893)_
- **Stalwart Mail Server** — All-in-one secure mail server (SMTP/IMAP/JMAP) _(port 8080, web UI)_
- **Maddy Mail Server** — Composable single-binary mail server (SMTP/IMAP)

### Mailing Lists

- **Mailing Lists** — built-in tool
  - Mailing Lists / Deliverability — Email providers, API keys, and SPF/DKIM/DMARC checks
- **Mailchimp** — Hosted email marketing & audiences (cloud) _(web UI)_
- **Brevo** — Email/SMS marketing + transactional (cloud) _(web UI)_
- **MailerLite** — Simple newsletter & subscriber lists (cloud) _(web UI)_
- **Klaviyo** — E-commerce email/SMS & segmentation (cloud) _(web UI)_
- **Campaign Monitor** — Designer-friendly email campaigns (cloud) _(web UI)_
- **Mailgun** — Developer transactional email + lists (cloud) _(web UI)_
- **SendGrid** — Twilio's email API & marketing lists (cloud) _(web UI)_
- **Amazon SES** — AWS low-cost bulk/transactional email (cloud) _(web UI)_
- **Postmark** — Fast, reliable transactional email (cloud) _(web UI)_
- **Resend** — Developer-first transactional email API (cloud) _(web UI)_
- **MailPace** — Fast, privacy-friendly transactional email (cloud) _(web UI)_
- **Nylas** — Email/calendar/contacts API platform (cloud) _(web UI)_
- **Listmonk** — Self-hosted high-performance newsletter manager _(port 9000, web UI)_
- **Mautic** — Self-hosted marketing automation _(port 80, web UI)_
- **Mailtrain** — Self-hosted Node.js newsletter app _(port 3000, web UI)_
- **Postal** — Self-hosted full mail/delivery platform _(port 5000, web UI)_

### Email Deliverability & Reputation

- **Email Delivery** — built-in tool
  - Email Delivery Monitor — One board for every email provider — SendGrid, Postmark, Mailgun, Brevo, Resend, Nylas + mailing lists + SPF/DKIM/DMARC
- **DMARC Aggregate Reporting** — Collect & parse DMARC RUA reports (self-hosted: parsedmarc)
- **BIMI** — Brand logo in the inbox via DNS + VMC (standard)
- **MTA-STS & TLS-RPT** — Enforce SMTP TLS and get TLS failure reports (standard)
- **GlockApps** — Inbox-placement & spam-filter testing (cloud) _(web UI)_
- **MXToolbox** — DNS, blacklist & email health lookups (cloud) _(web UI)_
- **Google Postmaster Tools** — Gmail sender reputation & spam-rate data (cloud) _(web UI)_
- **Mailhardener** — All-in-one email-security monitoring & reporting (cloud) _(web UI)_
- **EasyDMARC** — DMARC management & deliverability platform (cloud) _(web UI)_
- **dmarcian** — DMARC reporting & deployment platform (cloud) _(web UI)_

### Message Queues & Streaming

- **Supabase Realtime** — Postgres change streams over WebSockets _(port 54321, web UI)_
- **NATS** — High-performance messaging + JetStream (self-hosted) _(port 4222, brew: nats-server)_
- **Apache Kafka** — Distributed event streaming (self-hosted) _(port 9092, brew: kafka)_
- **Redpanda** — Kafka-compatible streaming, no JVM/ZooKeeper _(port 9092)_
- **Apache Pulsar** — Distributed pub-sub & queuing with tiered storage _(port 8080)_
- **Apache RocketMQ** — Low-latency distributed messaging (ordered, transactional) _(port 9876)_
- **Redis Streams** — Lightweight log/stream with consumer groups (Redis) _(port 6379, brew: redis)_
- **Celery** — Distributed task queue for Python (workers + broker)

### Push Services

- **APNs** — built-in tool
  - Send Push Notification (APNs) — Test pushes, payloads, device tokens, delivery logs
- **ntfy** — Self-hostable pub-sub push (HTTP) _(port 80, web UI, brew: ntfy)_
- **Gotify** — Self-hosted push server + Android app _(port 80, web UI)_
- **OneSignal** — Hosted multi-channel push (cloud) _(web UI)_
- **Firebase (FCM)** — Google's cross-platform push (cloud) _(web UI)_
- **Airship** — Enterprise customer-engagement push (cloud) _(web UI)_
- **Matrix Notifications** — Push via the Matrix chat protocol _(web UI)_
- **Synapse** — Self-hosted Matrix homeserver _(port 8008, brew: matrix-synapse)_
- **Element** — Flagship Matrix chat client
- **UnifiedPush** — Open push standard (Google-free) _(web UI)_
- **PushDeer** — Open-source, no-app-fuss push _(web UI)_
- **Pushover** — Simple paid push to iOS/Android/desktop _(web UI)_
- **Apprise** — One CLI/library → 80+ push services

### Chat & Collaboration

- **Discord** — Community chat & voice (cloud) _(web UI)_
- **Slack** — Team chat & workflows (cloud) _(web UI)_
- **Matrix (Synapse + Element)** — Open, federated chat — self-hosted (Docker) _(port 8008, web UI)_
- **Mattermost** — Open-source Slack alternative (self-hosted) _(port 8065, web UI)_
- **Rocket.Chat** — Open-source team chat platform (self-hosted) _(port 3000, web UI)_
- **Zulip** — Threaded team chat (self-hosted or cloud) _(port 80, web UI)_
- **Telegram** — Cloud messaging with a powerful Bot API (cloud) _(web UI)_
- **TeamSpeak** — Low-latency voice server (self-hosted) _(port 9987)_
- **Mumble** — Open-source low-latency voice (self-hosted) _(port 64738)_
- **Jitsi Meet** — Open-source video conferencing (self-hosted) _(port 8443, web UI)_
- **SimpleX Chat** — Private messenger with no user IDs (self-hostable relays)
- **Session** — Onion-routed private messenger (no phone number)

### SMS & iMessage Gateways

- **Gammu (gammu-smsd)** — Send/receive SMS via a GSM modem (self-hosted)
- **Kannel** — Open-source SMS/WAP gateway (self-hosted) _(port 13013)_
- **ModemManager** — Linux modem daemon — SMS via mmcli (self-hosted)
- **SMS Gateway for Android** — Turn an Android phone into an SMS HTTP API (self-hosted) _(web UI)_
- **SMSSync** — Android SMS↔webhook relay (self-hosted)
- **Android + Tasker** — DIY SMS gateway via Tasker automation (self-hosted)
- **Home Assistant SMS** — SMS notify/receive in Home Assistant (Gammu)
- **AirMessage** — Self-hosted iMessage bridge — server on this Mac _(port 1359)_
- **BlueBubbles** — Self-hosted iMessage bridge — server on this Mac _(web UI)_

### Business Messaging

- **KakaoTalk AlimTalk** — Kakao business notification templates — Korea (cloud) _(web UI)_
- **LINE Official Account** — Customer messaging & loyalty on LINE _(web UI)_
- **WhatsApp Business Platform** — WhatsApp business messaging — templates, catalogs (live) _(web UI)_
- **WeChat Official Account** — WeChat business account — China (broadcasts, menus, mini-programs) _(web UI)_
- **Zalo Official Account** — Zalo business account — Vietnam (broadcasts & chat) _(web UI)_
- **KakaoTalk Channel** — Kakao business channel — Korea (friend broadcasts & chat) _(web UI)_
- **Viber Business Messages** — Branded business messages on Viber _(web UI)_
- **Facebook Messenger** — Messenger business messaging (Meta) _(web UI)_
- **Instagram Messaging** — Instagram DM API for business (Meta) _(web UI)_
- **Apple Messages for Business** — Store↔customer chat inside iMessage _(web UI)_
- **RCS Business Messaging** — Branded rich business messaging (SMS successor) _(web UI)_
- **Attentive** — SMS & email marketing for retail/DTC _(web UI)_
- **Postscript** — SMS marketing for Shopify stores _(web UI)_
- **Omnisend** — Email & SMS marketing automation (e-commerce) _(web UI)_
- **SimpleTexting** — Business SMS/MMS marketing & two-way texting _(web UI)_
- **ManyChat** — Chat marketing bots — Instagram/Messenger/WhatsApp (live) _(web UI)_
- **Respond.io** — Omnichannel customer-conversation inbox _(web UI)_
- **Gupshup** — Conversational messaging API (WhatsApp & more) _(web UI)_
- **WATI** — WhatsApp Business team inbox & broadcasts _(web UI)_
- **Charles** — Conversational commerce on WhatsApp _(web UI)_
- **Trengo** — Multichannel team inbox for customer chat _(web UI)_
- **Intercom** — Customer messaging & proactive marketing (live) _(web UI)_
- **Gorgias** — E-commerce helpdesk with chat & proactive messages _(web UI)_

### Calendars

- **Calendar Discovery** — built-in tool
  - Calendar Discovery Scan — Probe common CalDAV ports and endpoints
- **Calendar Health** — built-in tool
  - Calendar Endpoints — Add and monitor CalDAV server endpoints
  - Calendar Health Alerts — Alert when calendar endpoints go down or recover
- **Event Server Monitoring** — built-in tool
  - Event Server Monitoring — Poll calendar/event servers and track up/down transitions
- **ICS Feeds** — built-in tool
  - ICS Feed Subscription — Subscribe to calendar feeds including Airbnb listings
  - Airbnb Calendar Export — Import Airbnb listing availability and reservations
- **Radicale** — Lightweight CalDAV/CardDAV server _(port 5232, web UI)_
- **Baïkal** — PHP CalDAV/CardDAV server (SabreDAV) _(port 80, web UI)_
- **Nextcloud Calendar** — Calendar app on a Nextcloud server _(web UI)_
- **DAViCal** — PHP/PostgreSQL CalDAV server _(port 80, web UI)_
- **SOGo** — Groupware (CalDAV/CardDAV/ActiveSync) _(port 20000, web UI)_
- **Apple Calendar Server** — Migrate the old macOS Server CalDAV _(port 8443)_
- **Google Calendar** — Hosted calendar (CalDAV / API) _(web UI)_
- **Outlook Calendar** — Microsoft 365 calendar (Graph API) _(web UI)_
- **Calendly** — Hosted scheduling / booking links _(web UI)_
- **Cal.com** — Open-source scheduling (self-hostable) _(web UI)_

### Identity & Accounts

- **Accounts** — built-in tool
  - Local Users & Groups — View system users and groups
  - Add Directory — Connect AD, Google Workspace, Entra ID, Okta, OpenLDAP, FreeIPA
  - Import Open Directory — Import users from Apple Server OD master or network
  - Edit Open Directory Users & Groups — Add/edit/delete users & groups and manage membership on an OD/LDAP server (dscl with diradmin)
  - Export / Migrate Accounts — Export accounts as LDIF, CSV or text; apply to target directories
- **Open Directory** — Apple's built-in LDAP / Kerberos directory _(port 389)_
- **Dropbox Business** — Team management & audit-log APIs for Dropbox Business (cloud) _(web UI)_
- **Keycloak** — Open-source identity & access management (SSO) _(port 8080, web UI)_
- **FreeIPA** — Open-source identity management (LDAP/Kerberos, self-hosted) _(port 443, web UI)_
- **Authentik** — Self-hosted identity provider (Docker) _(port 9000, web UI)_
- **Okta** — Workforce identity & SSO — live API health _(web UI)_
- **Microsoft Entra ID** — Azure AD — cloud identity & SSO (Graph health) _(web UI)_
- **Google Workspace** — Google's identity & productivity suite (Admin SDK) _(web UI)_
- **AD FS** — Active Directory Federation Services (on-prem SSO)
- **Authenticate.com** — Identity verification & KYC API (cloud) _(web UI)_

### Customer Identity

- **WorkOS** — B2B auth — SSO, Directory Sync, AuthKit (live) _(web UI)_
- **Auth0** — Hosted authentication platform (Okta) _(web UI)_
- **Clerk** — Hosted auth & user management for web apps (cloud) _(web UI)_
- **Supabase Auth** — Auth from the Supabase stack (cloud or local) _(port 54321, web UI)_
- **FusionAuth** — Self-hostable CIAM / auth server (OAuth2/OIDC/SAML) _(port 9011, web UI)_
- **Ory Kratos** — Headless identity & user management (self-hosted) _(port 4433)_
- **Ory Hydra** — OAuth2 & OpenID Connect provider (self-hosted) _(port 4444)_
- **Zitadel** — Self-hostable identity platform (OIDC/SAML, multi-tenant) _(port 8080, web UI)_
- **Authelia** — SSO + 2FA auth gateway for your services _(port 9091, web UI)_

### Decentralized Identity

- **Hyperledger Aries (ACA-Py)** — Issue/verify Verifiable Credentials over DIDComm (self-hosted)
- **walt.id** — Open-source SSI stack — issuer, verifier & identity wallet _(web UI)_
- **Veramo** — JS/TS framework for DIDs & Verifiable Credentials

### Version Control

- **Git** — built-in tool
  - Git Installation — Install Git from Homebrew or Xcode Tools
  - Git Global Identity — Set user name, email, and default branch for all repos
  - Git Repository Tracking — Add and track local git repositories for status/pull
- **Gitea** — Lightweight self-hosted Git service _(port 3000, web UI, brew: gitea)_
- **Forgejo** — Community fork of Gitea (Codeberg) _(port 3000, web UI, brew: forgejo)_
- **GitHub** — The Git host — live account dashboard (cloud) _(web UI)_
- **GitLab** — Full DevOps platform — repos, MRs, registry (cloud or self-hosted) _(port 443, web UI)_
- **GitHub Enterprise** — Self-hosted / managed GitHub for organizations _(port 443, web UI)_
- **Bitbucket** — Atlassian Git hosting — Cloud or self-hosted (Data Center) _(port 443, web UI)_
- **Codeberg** — Free community Git hosting (Forgejo, nonprofit) _(port 443, web UI)_
- **SourceHut** — Lightweight, email-driven Git suite (cloud or self-hosted) _(port 443, web UI)_
- **AWS CodeCommit** — Managed private Git repositories on AWS (API) _(port 443, web UI)_
- **Pierre** — Fast code review & collaboration on Git (cloud) _(web UI)_
- **Graphite** — Stacked-PR code review on top of GitHub (cloud + CLI) _(web UI)_
- **Phabricator / Phorge** — Self-hosted code review & repos (now maintained as Phorge) _(port 443, web UI)_
- **SourceForge** — Open-source project hosting & downloads (cloud) _(port 443, web UI)_
- **Google Code (archive)** — Defunct — read-only archive for migrating old projects _(web UI)_
- **Subversion (SVN)** — Apache Subversion — centralized version control (self-hosted) _(port 3690)_
- **code.storage** — Code hosting / storage platform (cloud) — see code.storage _(web UI)_
- **Entire** — Code collaboration platform (cloud) — see entire.io _(web UI)_
- **Gitea Actions Runner** — CI runner for Gitea/Forgejo Actions
- **Webhook (git-deploy)** — Push-to-deploy via webhooks _(port 9000, brew: webhook)_

### CI/CD

- **Woodpecker CI** — Lightweight container-native CI _(port 8000, web UI)_
- **GitHub Actions** — CI/CD in GitHub — live build & deploy monitor (cloud) _(web UI)_
- **CodeRabbit** — AI code reviewer for pull requests (cloud + CLI/IDE) _(web UI)_
- **GitLab CI/CD** — Pipelines built into GitLab (cloud or self-hosted) _(web UI)_
- **CircleCI** — Cloud CI/CD with fast parallelism (cloud) _(web UI)_
- **Depot** — Remote build acceleration — Docker & GitHub Actions runners (cloud) _(web UI)_
- **Bitbucket Pipelines** — CI/CD built into Bitbucket Cloud (cloud) _(web UI)_
- **Travis CI** — Hosted CI for open source & teams (cloud) _(web UI)_
- **Buildkite** — Hybrid CI — your agents, their dashboard (cloud) _(web UI)_
- **Jenkins** — The classic self-hosted automation server _(port 8080, web UI, brew: jenkins-lts)_
- **Drone CI** — Container-native CI server (self-hosted) _(port 80, web UI)_
- **Concourse** — Pipeline-centric CI with reproducible builds (self-hosted) _(port 8080, web UI)_
- **TeamCity** — JetBrains CI/CD server (self-hosted or cloud) _(port 8111, web UI)_
- **GoCD** — Open-source CI/CD with value-stream pipelines (self-hosted) _(port 8153, web UI)_
- **Argo CD** — GitOps continuous delivery for Kubernetes (self-hosted) _(port 8080, web UI)_
- **Flux CD** — GitOps toolkit for Kubernetes (self-hosted)
- **Spinnaker** — Multi-cloud continuous delivery (self-hosted) _(port 9000, web UI)_
- **Azure DevOps** — Azure Pipelines, Repos, Boards & Artifacts (cloud) _(web UI)_
- **Buildkite Agent** — Self-hosted runner for Buildkite pipelines
- **Jenkins Agent** — Build node that connects to a Jenkins controller
- **GitHub Actions Runner** — Self-hosted runner for GitHub Actions
- **Blacksmith** — Managed high-performance CI runners for GitHub Actions (cloud) _(web UI)_
- **GitLab Runner** — Self-hosted runner for GitLab CI/CD _(brew: gitlab-runner)_

### Build & Compile

- **Build & Render Farm** — built-in tool
  - Build & Render Farm — Distributed build/render monitor — agents, distcc/Icecream, ccache, render workers
- **Workbox** — Google's service-worker libraries for PWAs
- **Vite PWA Plugin** — Zero-config PWA for Vite (vite-plugin-pwa)
- **Next.js PWA** — PWA/service-worker support for Next.js
- **Nuxt PWA Module** — PWA module for Nuxt (@vite-pwa/nuxt)
- **Xcode Build / Xcode Cloud** — Apple's build system (xcodebuild) + Xcode Cloud CI
- **Bazel** — Fast, scalable multi-language build system (Google)
- **Tuist** — Xcode project generation & build optimization
- **Buck2** — Meta's fast, hermetic multi-language build system
- **CMake** — Cross-platform build-system generator (C/C++)
- **Ninja** — Small, very fast build backend
- **Meson** — Fast, user-friendly build system (Ninja backend)
- **Gradle** — JVM/Android build automation with build cache
- **Apache Maven** — Java build & dependency management
- **distcc** — Distribute C/C++ compiles across machines
- **Icecream (icecc)** — Distributed compiler with central scheduler
- **Bazel Remote Execution** — Run Bazel actions on a remote farm (RBE)
- **BuildGrid** — Open-source Remote Execution API server (self-hosted)
- **Incredibuild** — Commercial distributed build acceleration
- **ccache** — Compiler cache for C/C++ rebuilds
- **sccache** — Shared compiler cache (C/C++/Rust) with cloud backends
- **Bazel Remote Cache** — Shared HTTP/gRPC cache for Bazel (self-hosted) _(port 8080)_
- **Tuist Cache** — Binary caching for Xcode builds (Tuist)

### Internal Developer Portals

- **Backstage** — Spotify's open-source developer portal framework (self-hosted) _(port 7007, web UI)_
- **Port** — No-code internal developer portal (cloud) _(web UI)_
- **Cortex** — Service catalog with scorecards & maturity (cloud) _(web UI)_
- **OpsLevel** — Service maturity & ownership portal (cloud) _(web UI)_
- **Humanitec** — Platform orchestrator for internal platforms (cloud + agent) _(web UI)_
- **Score** — Open workload spec for portable deployments (CLI)
- **Roadie** — Managed (hosted) Backstage (cloud) _(web UI)_

### Infrastructure as Code

- **Terraform** — HashiCorp's declarative infrastructure as code (CLI)
- **OpenTofu** — Open-source, community fork of Terraform (CLI)
- **Pulumi** — Infrastructure as code in real languages (CLI / cloud)
- **Ansible** — Agentless configuration management & automation (CLI)
- **Chef** — Policy-as-code configuration management (Progress Chef)
- **Puppet** — Declarative configuration management at scale (Perforce)
- **Salt** — Event-driven remote execution & config management (CLI)
- **Packer** — Build identical machine images for any platform (CLI)
- **AWS CloudFormation** — Native AWS infrastructure as code (templates / CLI) _(web UI)_
- **AWS CDK** — Define AWS infra in code, synth to CloudFormation (CLI)

### API Testing & Synthetic Monitoring

- **Postman** — API platform — build, test, mock & monitor (app / cloud) _(web UI)_
- **Bruno** — Open-source, offline, git-friendly API client (app / CLI)
- **Insomnia** — API client for REST, GraphQL & gRPC (app)
- **Grafana k6** — Developer-centric load & performance testing (CLI)
- **Artillery** — Load testing & smoke tests for APIs and services (CLI)
- **Checkly** — Monitoring-as-code — API checks & browser synthetics (cloud + CLI) _(web UI)_
- **Changedetection.io** — Website change detection & notifications _(port 5000, web UI)_

### Proxies & Load Balancers

- **Reverse Proxy** — built-in tool
  - One-Click Reverse Proxy Vhost — Generate Apache reverse proxy config for app backends
  - Reverse Proxy Modules — Enable Apache proxy modules for reverse proxying
- **Debug Share** — built-in tool
  - Debug Share — expose a localhost port — Temporarily open a localhost web server for a debug/preview session via Cloudflare Quick Tunnel, Tailscale serve/funnel, or a LAN forwarder, with auto-expiry
- **ProxySQL** — High-performance MySQL proxy _(port 6033, brew: proxysql)_
- **MySQL Router** — Routing for MySQL InnoDB Cluster _(port 6446)_
- **Nginx Proxy Manager** — Web-UI reverse proxy (Docker) _(port 81, web UI)_
- **keepalived** — VRRP virtual IP failover + LVS load balancing

### Proxy Gateways

- **HAProxy** — TCP/HTTP load balancer & proxy _(brew: haproxy)_
- **Traefik** — Container-native reverse proxy & LB _(port 8080, web UI, brew: traefik)_
- **Squid** — Caching forward proxy (HTTP/HTTPS/FTP) _(port 3128, brew: squid)_
- **3proxy** — Tiny multi-protocol proxy (HTTP/SOCKS) _(port 3128)_
- **Tinyproxy** — Lightweight HTTP/HTTPS forward proxy _(port 8888, brew: tinyproxy)_

### CDN & Edge

- **Cloudflare** — built-in tool
  - Cloudflare API Token — Configure Cloudflare API token and permissions
  - Cloudflare Zones — Pin zones to sidebar for monitoring
  - Cloudflare Zone Health — Monitor DNS, HTTP, SSL, DDoS, WAF
  - Cloudflare CDN Analytics — Cache hit rate, requests, bandwidth
  - Cloudflare Development Mode — Bypass cache for 3 hours
  - Cloudflare Cache Purge — Purge all cache, URLs, or prefixes
- **Akamai** — Enterprise CDN, security & edge compute (cloud) _(web UI)_
- **Fastly** — Real-time CDN with VCL/Compute edge (cloud) _(web UI)_
- **Imperva** — WAF-first CDN & DDoS protection (cloud) _(web UI)_
- **Amazon CloudFront** — AWS CDN tied to S3/EC2 origins (cloud) _(web UI)_
- **Google Cloud CDN** — GCP CDN on global load balancing (cloud) _(web UI)_
- **Azure Front Door** — Microsoft's global entry point: CDN + WAF + LB (cloud) _(web UI)_

### Hosting

- **Hostinger** — built-in tool
- **DigitalOcean** — built-in tool
- **Vultr** — built-in tool
- **Linode (Akamai)** — built-in tool
- **Hetzner** — built-in tool
- **Sakura Cloud** — built-in tool
- **ConoHa** — built-in tool
- **Cloudways** — built-in tool
- **SiteGround** — built-in tool
- **WP Engine** — built-in tool
- **Cloud Servers** — built-in tool
  - Cloud Servers — Inventory across DigitalOcean, Vultr, Linode, Hetzner, Sakura & AWS EC2/Lightsail/RDS
- **Coolify** — Self-hosted PaaS (Heroku/Netlify/Vercel alt.) _(port 8000, web UI)_
- **Dokploy** — Open-source deployment platform (PaaS) _(port 3000, web UI)_
- **CapRover** — Self-hosted PaaS on Docker Swarm _(port 3000, web UI)_
- **Dokku** — Minimal self-hosted PaaS (git push deploy)

### AWS Control

- **S3 Buckets** — built-in tool
- **EC2 Instances** — built-in tool
  - AWS Palette — Compact always-on-top AWS status — account, EC2/RDS/S3 & month-to-date cost — with one-click AI analysis
- **Lightsail** — built-in tool
  - Lightsail Instances — Start, stop, reboot Lightsail VMs
- **CloudFront/CDN** — built-in tool
  - CloudFront Distributions — List CDN distributions and status
- **Route 53 DNS** — built-in tool
- **RDS Databases** — built-in tool
  - RDS Databases — Start, stop RDS instances
- **CloudWatch Logs** — built-in tool
  - CloudWatch Logs — View log groups and retention
- **SNS Topics** — built-in tool
  - Publish SNS Message — Send to an AWS SNS topic
- **Billing Alerts** — built-in tool
  - AWS Month-to-Date Cost — Estimated charges and cost tracking
  - AWS Budgets — Budget alerts and spend tracking
- **IAM Key Warnings** — built-in tool
  - IAM Account Security — Root MFA status and access key warnings
  - IAM Access Keys — List stale and active keys for rotation

### FinOps & Cloud Cost

- **Infracost** — Cost estimates for Terraform, in CI (self-hosted CLI / cloud)
- **OpenCost** — CNCF open-source Kubernetes cost monitoring (self-hosted) _(port 9003, web UI)_
- **Kubecost** — Kubernetes cost visibility & optimization (self-hosted / cloud) _(port 9090, web UI)_
- **CloudZero** — Cloud cost intelligence & unit economics (cloud) _(web UI)_
- **Vantage** — Multi-cloud cost reporting & optimization (cloud) _(web UI)_
- **Finout** — No-agent FinOps platform with unified cost (cloud) _(web UI)_
- **CloudHealth** — Multi-cloud cost & governance (VMware/Broadcom, cloud) _(web UI)_
- **AWS Cost Explorer** — Native AWS cost analysis & forecasting (API) _(web UI)_
- **GCP Cloud Billing** — Google Cloud billing reports, budgets & BigQuery export (API) _(web UI)_
- **Azure Cost Management** — Native Azure (and AWS) cost analysis & budgets (API) _(web UI)_

### Containers

- **Containers** — built-in tool
  - Containers — Live roll-up of Docker containers, OrbStack machines & Vagrant VMs
- **Kubernetes Clusters** — built-in tool
  - Kubernetes Contexts — Pin kubeconfig clusters to monitor
  - Kubernetes Fleet Actions — Get nodes, pods, cluster info, top nodes
- **Docker** — built-in tool
  - Docker Engine Status — Running containers, compose projects, volumes
  - Docker Containers — Start, stop, restart, logs, environment
  - Docker Compose Projects — Docker compose stack management
  - Docker Volumes — Docker volume management
- **OrbStack** — built-in tool
  - OrbStack Status — OrbStack engine status and controls
  - OrbStack Linux Machines — Create, start, stop, delete Linux VMs
- **Vagrant** — built-in tool
  - Vagrant VM Projects — List, edit, manage Vagrant boxes
  - Vagrant VM Control — Start, halt, reload, SSH, provision
- **Proxmox VE** — Open-source virtualization — KVM VMs + LXC containers _(port 8006, web UI)_
- **VMware vSphere** — Enterprise virtualization — ESXi hypervisor + vCenter _(port 443, web UI)_
- **Microsoft Hyper-V** — Windows Server hypervisor (Type-1)
- **XCP-ng** — Open-source Xen hypervisor (XenServer alternative) _(port 443, web UI)_
- **OpenShift Virtualization** — Run VMs alongside containers on OpenShift (KubeVirt) _(web UI)_
- **OpenStack** — Open-source private-cloud IaaS platform _(web UI)_
- **VMware vMotion** — Live-migrate running VMs between ESXi hosts
- **Proxmox VE Live Migration** — Live-migrate KVM VMs across Proxmox cluster nodes
- **Hyper-V Live Migration** — Move running Hyper-V VMs between hosts with no downtime
- **Watchtower** — Auto-update running Docker containers
- **Podman** — Daemonless, Docker-compatible containers
- **Apple Container** — Apple's native `container` tool — Linux containers in per-container VMs
- **Lima** — Linux virtual machines (container machines) on macOS
- **Colima** — Container runtimes on macOS via Lima (Docker/containerd/k8s)
- **OrbStack** — Fast Docker & Linux machines for macOS
- **Kubernetes** — The container orchestrator (kubectl) _(port 6443)_
- **Helm** — The Kubernetes package manager (charts)
- **Dev Containers (VS Code)** — Reproducible dev environments in a container
- **K3s** — Lightweight certified Kubernetes (self-hosted) _(port 6443)_
- **minikube** — Local single-node Kubernetes for development
- **kind** — Kubernetes IN Docker — disposable clusters
- **k3d** — k3s in Docker — lightweight multi-node clusters
- **k0s** — Zero-friction single-binary Kubernetes _(port 6443)_
- **MicroK8s** — Canonical's low-ops Kubernetes (snap) _(port 16443)_
- **RKE2** — Rancher's security-focused Kubernetes (Gov-grade) _(port 6443)_
- **Talos Linux** — API-managed immutable OS purpose-built for Kubernetes _(port 50000)_
- **kubeadm** — The official cluster bootstrapper (vanilla K8s) _(port 6443)_
- **OpenShift / OKD** — Red Hat's enterprise Kubernetes platform _(port 6443, web UI)_
- **Rancher Desktop** — Desktop Kubernetes + container runtime for Mac
- **nerdctl** — Docker-compatible CLI for containerd
- **Docker Swarm** — Docker-native clustering (docker swarm / stack) _(port 2377)_
- **Portainer** — Web UI for Docker & Kubernetes (self-hosted) _(port 9443, web UI)_
- **Rancher** — Multi-cluster Kubernetes management (self-hosted) _(port 443, web UI)_
- **Nomad** — HashiCorp workload orchestrator (self-hosted) _(port 4646, web UI)_

### Service Mesh (Kubernetes)

- **Istio** — Envoy-based service mesh for Kubernetes
- **Linkerd** — Lightweight, fast CNCF service mesh
- **Consul Connect** — HashiCorp Consul service mesh & discovery _(port 8500, web UI)_
- **Cilium Service Mesh** — eBPF-based, sidecarless service mesh & CNI
- **Kuma** — Universal service mesh (Kong, CNCF) _(port 5681, web UI)_
- **Gloo Mesh** — Istio-based multi-cluster service mesh (solo.io)
- **NGINX Service Mesh** — Lightweight service mesh on NGINX/NGINX Plus (F5)
- **AWS App Mesh** — Managed Envoy service mesh on AWS (ECS/EKS/EC2)
- **Kong Gateway** — Cloud-native API gateway on Envoy/Nginx (self-hosted / cloud) _(port 8001)_
- **Tyk** — Open-source API gateway & management (self-hosted / cloud) _(port 8080, web UI)_
- **Apache APISIX** — Dynamic, high-performance API gateway (self-hosted) _(port 9180, web UI)_
- **Envoy Gateway** — Gateway API management plane for Envoy Proxy (self-hosted)

### Apps & CMS

- **WordPress** — built-in tool
- **Convex** — built-in tool
  - Convex Project — Link folder to Convex project and manage config
  - Convex Dev Server — Run convex dev to sync functions to cloud
  - Convex Self-Hosted Backend — Run Convex backend locally with Docker
- **RevenueCat** — built-in tool
  - In-App Purchases — RevenueCat subscriptions & projects
- **Drupal** — built-in tool
- **Joomla** — built-in tool
- **Statamic** — built-in tool
- **Ghost** — Modern publishing & newsletter platform _(port 2368, web UI)_

### Knowledge & Memory

- **Obsidian** — built-in tool
  - Obsidian Vault — Choose and link an Obsidian vault as the knowledge base
  - Obsidian Sync & Automation — Auto-sync inventory, incident journal, and change tracking
  - Obsidian Knowledge Folders — Browse SOPs, runbooks, prompts, and recipes folders
- **Vault Notes** — built-in tool
  - Vault Notes — Markdown editor — Browse the whole Obsidian vault and edit notes with live preview
- **GraphRAG** — Graph-based retrieval-augmented generation (Microsoft)
- **Graphify** — Turn a codebase into a queryable knowledge graph (AI coding-assistant skill)
- **Logseq** — Local-first outliner & PKM (Markdown/Org)
- **Notion** — All-in-one workspace — docs, wikis, databases (cloud)
- **DokuWiki** — Flat-file PHP wiki — the closest macOS Server “Wiki” replacement _(port 80, web UI)_
- **MediaWiki** — The wiki engine behind Wikipedia (PHP/MySQL) _(port 80, web UI)_
- **Wiki.js** — Modern self-hosted wiki (Node.js) _(port 3000, web UI)_
- **BookStack** — Self-hosted docs/wiki organised as books (PHP) _(port 6875, web UI)_
- **Outline** — Self-hosted team knowledge base (real-time) _(port 3000, web UI)_
- **Trilium Notes** — Hierarchical personal notes (self-hosted server + app) _(port 8080, web UI)_
- **Zotero** — Reference & research manager (app + API)
- **Readwise** — Highlights sync & read-later (cloud API)
- **Memos** — Lightweight, privacy-first notes/memo hub _(port 5230, web UI)_
- **Linkding** — Minimal, fast self-hosted bookmark manager _(port 9090, web UI)_
- **Karakeep** — AI bookmark/read-it-later (formerly Hoarder) _(port 3000, web UI)_
- **Wallabag** — Self-hosted read-it-later (Pocket alternative) _(port 80, web UI)_
- **Docmost** — Open-source collaborative wiki & docs (Confluence/Notion alt.) _(port 3000, web UI)_
- **AFFiNE** — Docs + whiteboard + database (Notion/Miro alt.) _(port 3010, web UI)_
- **AppFlowy** — Open-source Notion alternative (docs/boards/DBs) _(web UI)_
- **Joplin Server** — Sync server for Joplin notes (E2EE) _(port 22300, web UI)_
- **Shiori** — Simple self-hosted bookmark manager (Go) _(port 8080, web UI)_

### E-Commerce

- **Store Health** — built-in tool
  - Store Data Source — Connect to WooCommerce, Shopify, Stripe or enter manually
  - Store Today KPIs — View revenue, orders, campaigns and ad spend
  - Store Email Campaigns — Integrate Mailchimp, Brevo, MailerLite or SendGrid
- **WooCommerce** — WordPress e-commerce plugin (PHP) _(web UI)_
- **Adobe Commerce (Magento)** — Enterprise PHP commerce platform _(port 80, web UI)_
- **Shopware** — Symfony-based commerce platform (PHP) _(port 80, web UI)_
- **Saleor** — GraphQL-first headless commerce (Python) _(port 8000, web UI)_
- **Medusa** — Node.js headless commerce engine _(port 9000, web UI)_
- **Vendure** — Node.js/GraphQL headless commerce _(port 3000, web UI)_
- **Stripe** — Payments & checkout API (cloud) _(web UI)_
- **PayPal** — Online payments & checkout (cloud) _(web UI)_
- **DOKU** — Indonesian payment gateway (cards, e-wallets, VA, QRIS) _(web UI)_
- **Square** — Payments, POS & online checkout (cloud) _(web UI)_
- **Shopify** — Hosted commerce platform & channel (cloud) _(web UI)_
- **Amazon** — Amazon marketplace selling channel (cloud) _(web UI)_
- **FedEx** — Shipping rates, labels & tracking (cloud) _(web UI)_
- **UPS** — Shipping rates, labels & tracking (cloud) _(web UI)_
- **DHL** — Shipping rates, labels & tracking (cloud) _(web UI)_
- **eBay Seller Hub** — eBay marketplace selling channel (cloud) _(web UI)_
- **Etsy** — Handmade/vintage & POD marketplace (cloud) _(web UI)_
- **Walmart Marketplace** — Walmart marketplace selling channel (cloud) _(web UI)_

### Student Information Systems

- **PowerSchool SIS** — K-12 student information system (cloud) _(web UI)_
- **PowerSchool Attendance** — Attendance tracking within PowerSchool (cloud) _(web UI)_
- **Blackbaud SIS** — Independent/private-school SIS (cloud) _(web UI)_
- **FACTS SIS** — Private/faith-based school SIS (cloud) _(web UI)_
- **Infinite Campus** — K-12 SIS & state reporting (cloud) _(web UI)_
- **Veracross** — All-in-one independent-school platform (cloud) _(web UI)_
- **openSIS** — Open-source student information system (self-hosted) _(web UI)_
- **RosarioSIS** — Open-source SIS (PHP/PostgreSQL, self-hosted) _(web UI)_
- **SchoolPass** — Attendance, dismissal & safety (cloud) _(web UI)_
- **RFID/NFC Attendance** — Tap-card attendance with RFID/NFC readers (self-hosted) _(web UI)_

### Learning Management

- **Canvas LMS** — Instructure Canvas — courses, assignments, grading _(web UI)_
- **Blackboard Learn** — Higher-ed LMS (cloud) _(web UI)_
- **Schoology** — K-12 LMS by PowerSchool (cloud) _(web UI)_
- **Google Classroom** — Google's classroom & assignment tool (cloud) _(web UI)_
- **Moodle** — Open-source LMS (self-hosted, PHP) _(web UI)_
- **Open edX** — MOOC-scale open LMS (self-hosted) _(web UI)_
- **ILIAS** — Open-source LMS (self-hosted, PHP) _(web UI)_
- **BigBlueButton** — Open-source virtual classroom (self-hosted) _(web UI)_
- **Zoom** — Video meetings & online classes (app)
- **Google Meet** — Google's video meetings (cloud) _(web UI)_
- **ExamSoft** — Secure exam delivery & analytics (cloud) _(web UI)_
- **ProctorU** — Online exam proctoring (cloud) _(web UI)_
- **TAO Testing** — Open-source assessment platform (self-hosted) _(web UI)_

### Digital Library

- **EBSCOhost** — Research databases & e-journals (cloud) _(web UI)_
- **ProQuest** — Dissertations, e-journals & databases (cloud) _(web UI)_
- **JSTOR** — Academic journals & books archive (cloud) _(web UI)_
- **Koha** — Open-source integrated library system (self-hosted) _(web UI)_
- **DSpace** — Open-source institutional repository (self-hosted) _(web UI)_
- **Greenstone** — Open-source digital-library builder (self-hosted) _(web UI)_

### Campus & School Ops

- **aSc Timetables** — School timetable generator (desktop)
- **Mimosa Scheduling** — Timetabling / scheduling software (desktop)
- **FET Timetabling** — Open-source automatic timetabling (self-hosted/desktop)
- **Slate Admissions** — Admissions & enrollment CRM (cloud) _(web UI)_
- **OpenApply** — Admissions & enrollment for K-12 (cloud) _(web UI)_
- **Finalsite Enrollment** — School websites & enrollment (cloud) _(web UI)_
- **FACTS Tuition Management** — Tuition billing & payment plans (cloud) _(web UI)_
- **Flywire Education Payments** — Cross-border tuition payments (cloud) _(web UI)_
- **StarRez** — Student housing & residential life (cloud) _(web UI)_
- **eRezLife** — Residence life & housing management (cloud) _(web UI)_
- **Ellucian Banner** — Higher-ed ERP / student system (cloud or self-hosted) _(web UI)_
- **Workday Student** — Cloud ERP for higher education (cloud) _(web UI)_
- **ParentSquare** — School-home communication (cloud) _(web UI)_
- **Remind** — Teacher-family messaging (cloud) _(web UI)_
- **Asset Panda** — Asset & device tracking (cloud) _(web UI)_
- **Incident IQ** — K-12 IT helpdesk & asset management (cloud) _(web UI)_
- **ClassLink** — Education SSO & rostering (cloud) _(web UI)_

### Sourcing & Suppliers

- **AliExpress** — Global supplier marketplace for drop-shipping (cloud) _(web UI)_
- **Alibaba** — B2B wholesale sourcing (cloud) _(web UI)_
- **CJdropshipping** — Sourcing + warehousing + fulfillment (cloud) _(web UI)_
- **Spocket** — US/EU-supplier drop-ship marketplace (cloud) _(web UI)_
- **Zendrop** — Drop-ship sourcing & auto-fulfillment (cloud) _(web UI)_
- **SaleHoo** — Vetted supplier directory (cloud) _(web UI)_
- **DSers** — AliExpress order automation (official) (cloud) _(web UI)_

### Print-on-Demand

- **Printful** — Print-on-demand & fulfillment (cloud) _(web UI)_
- **Printify** — Print-on-demand marketplace (cloud) _(web UI)_
- **Gelato** — Global/local print-on-demand network (cloud) _(web UI)_
- **Gooten** — Print-on-demand fulfillment platform (cloud) _(web UI)_

### Shipping & Fulfillment

- **Drop-shipping Health** — built-in tool
  - Shipment Tracking — Live AfterShip tracking for 1000+ carriers and problem detection
  - Inventory Health Monitor — Stock and sync status from SKUVault, CIN7, Zoho, Katana
  - Marketplace Ops — Order counts and refund rates from Shopify, Amazon, eBay, Etsy, Walmart
  - Profit Monitor — Margin, shipping costs, currency creep, ad spend from Triple Whale, Beprofit
- **AfterShip** — Universal shipment tracking across 1,000+ carriers (cloud) _(web UI)_
- **ShipStation** — Multi-channel order & label management (cloud) _(web UI)_
- **Easyship** — Global shipping rates, duties & labels (cloud) _(web UI)_
- **Shippo** — Multi-carrier rates, labels & tracking API (cloud) _(web UI)_
- **Pirate Ship** — Free, discounted USPS/UPS labels (cloud) _(web UI)_

### Inventory Sync

- **SkuVault** — Warehouse & inventory management (cloud) _(web UI)_
- **Cin7** — Inventory & order management (cloud) _(web UI)_
- **Zoho Inventory** — Multi-channel inventory & order management (cloud) _(web UI)_
- **Katana Cloud Inventory** — Manufacturing & inventory control (cloud) _(web UI)_

### Profit Analytics

- **Triple Whale** — E-commerce profit & attribution dashboard (cloud) _(web UI)_
- **Lifetimely** — P&L and LTV analytics for Shopify (cloud) _(web UI)_
- **BeProfit** — Profit & expense tracking dashboard (cloud) _(web UI)_

### Mesh Networking

- **RNS Nodes** — built-in tool
  - RNS Nodes — Reticulum RNS interfaces + node browser (rnstatus / rnpath), with one-click pip install
- **ZeroTier** — Zero Trust SD-WAN / virtual networks — agent + API
- **NetBird** — Open-source Zero Trust networking (self-hostable)
- **Twingate** — Zero Trust remote access (VPN replacement)
- **CloudConnexa** — OpenVPN's cloud-delivered VPN / ZTNA (formerly OpenVPN Cloud) _(web UI)_
- **Netmaker** — Fast WireGuard mesh networks (self-hosted)
- **Reticulum** — Cryptography-based mesh networking stack (any medium)
- **Nomad Network (NomadNet)** — Resilient comms over Reticulum (pages, files, messaging)
- **Sideband** — LXMF messaging app over Reticulum (desktop/mobile)
- **Meshtastic** — LoRa mesh radio for text & location (off-grid)
- **RNode LoRa Devices** — Open LoRa radio interface for Reticulum (flash & configure)
- **WireGuard** — Modern, fast VPN — host your own, or the mesh base layer _(port 51820)_
- **Proton VPN** — Privacy VPN (WireGuard/OpenVPN, Secure Core, kill switch)
- **Nebula** — Lightweight overlay mesh (Slack/Defined Networking)
- **OpenZiti** — Zero-trust overlay fabric with SDKs (self-hosted)
- **Firezone** — WireGuard-based zero-trust access gateway
- **tinc** — Classic self-routing mesh VPN (open-source)
- **n2n** — Peer-to-peer layer-2 VPN over a supernode (ntop)
- **innernet** — WireGuard mesh with CIDR-based access (tonari)
- **Yggdrasil** — Self-arranging encrypted IPv6 mesh (experimental)
- **cjdns / Hyperboria** — Encrypted IPv6 mesh routing (source-routed)
- **B.A.T.M.A.N.-adv** — Layer-2 community Wi-Fi mesh routing (Linux)
- **OLSR (olsrd)** — Optimized Link State Routing for MANETs
- **Babel (babeld)** — Robust distance-vector mesh routing protocol
- **Briar** — P2P messaging over Tor, Wi-Fi & Bluetooth
- **AREDN** — Amateur-radio high-speed mesh (ham license)
- **qaul** — Internet-independent P2P mesh messaging app
- **Serval Mesh** — Off-grid mesh comms (Serval Project)
- **Ratspeak** — Private, account-free mesh messaging (Reticulum-based)
- **wg-easy** — WireGuard VPN with a simple web UI _(port 51821, web UI)_

### Anonymity Networks

- **Tor** — Onion-routing anonymity network (client/relay/bridge/onion service) _(port 9050, brew: tor)_
- **I2P** — Garlic-routed network — router, tunnels, eepsites, messaging _(port 7070, web UI)_

### Secrets & Vaults

- **Vault Links** — built-in tool
  - Vault Links — Password Managers — Store, create & source app credentials from a password manager instead of the Keychain
  - Password Manager Links — Link credentials to 1Password, Bitwarden, pass, etc.
  - Linked Credentials — Link app credentials to password manager secrets
- **Bitwarden** — Password manager — cloud or official self-host _(web UI)_
- **Vaultwarden** — Self-hosted Bitwarden-compatible server (Docker) _(port 8222, web UI)_
- **HashiCorp Vault** — Secrets, PKI & dynamic credentials (self-hosted) _(port 8200, web UI)_
- **Step CA** — Your own private certificate authority (self-hosted) _(port 8443)_
- **Infisical** — Open-source secrets for app configs (cloud or self-hosted) _(port 8080, web UI)_
- **Doppler** — Hosted secrets & config manager (cloud) _(web UI)_
- **1Password SCIM Bridge** — Automated 1Password user provisioning (self-hosted bridge) _(port 3002)_
- **1Password** — Password manager with developer secrets API (cloud) _(web UI)_
- **Keeper Security** — Password manager & Secrets Manager (cloud API) _(web UI)_

### Monitoring

- **Disk Health** — built-in tool
  - S.M.A.R.T. Disk Monitoring — Drive health via diskutil + deep smartctl attributes (temp, reallocated/pending sectors, predicted failure)
  - RAID Health (AppleRAID) — Monitor AppleRAID software sets (mirror/stripe/concat) — set & member status, with degraded/rebuild alerts
  - Volume Space Tracking — Monitor free space on mounted volumes
  - Disk Alerts — Configure alerts for space, S.M.A.R.T. and Time Machine
  - Drobo (direct-attached) — USB/Thunderbolt Drobo: drive health & free space here; BeyondRAID/firmware settings in Drobo Dashboard
- **Service Guardian** — built-in tool
- **Grafana** — Dashboards for any data source (self-hosted) _(port 3000, web UI, brew: grafana)_
- **Prometheus** — Time-series metrics & alerting (self-hosted) _(port 9090, web UI, brew: prometheus)_
- **Node Exporter** — This Mac's metrics for Prometheus (self-hosted) _(port 9100, web UI, brew: node_exporter)_
- **Zabbix** — Enterprise monitoring — agents, SNMP, triggers (self-hosted) _(port 8080, web UI)_
- **Nagios Core** — The classic check-based monitor (self-hosted) _(port 80, web UI)_
- **Checkmk** — Auto-discovering IT monitoring (self-hosted) _(port 8080, web UI)_
- **Healthchecks.io** — Cron & heartbeat monitoring (cloud or self-hosted) _(web UI)_
- **Datadog** — Hosted metrics, logs, traces and synthetics (SaaS) _(web UI)_
- **New Relic** — Hosted APM, infrastructure and logs (SaaS) _(web UI)_
- **Sentry** — Error tracking and performance monitoring _(web UI)_
- **Honeycomb** — Observability for high-cardinality events and traces _(web UI)_
- **Dynatrace** — Enterprise observability and AIOps platform _(web UI)_
- **Matomo** — Full-featured self-hosted web analytics _(port 80, web UI)_
- **Plausible** — Lightweight, privacy-first analytics _(port 8000, web UI)_
- **Umami** — Simple, privacy-focused analytics (Node) _(port 3000, web UI)_
- **GoAccess** — Real-time access-log analyzer (CLI/HTML)
- **Netdata** — Real-time system metrics dashboard _(port 19999, web UI, brew: netdata)_
- **Uptime Kuma** — Self-hosted uptime monitor _(port 3001, web UI)_
- **Scrutiny** — S.M.A.R.T. drive health dashboard _(port 8080, web UI)_
- **Glances** — Cross-platform system monitor (web/API) _(port 61208, web UI)_
- **Beszel** — Lightweight server monitoring hub + agents _(port 8090, web UI)_
- **Speedtest Tracker** — Scheduled internet speed tests + history _(port 80, web UI)_
- **UptimeRobot** — Cloud uptime/SSL monitoring with status pages _(web UI)_
- **NUT (Network UPS Tools)** — UPS monitoring server (upsd) for many devices _(port 3493)_
- **Homepage** — Self-hosted services dashboard (gethomepage.dev) _(port 3000, web UI)_
- **PeaNUT** — Modern web dashboard for NUT UPS servers _(port 8080, web UI)_

### Security Tools

- **Security** — built-in tool
  - Malware Scan — Scan a folder or file for malware with ClamAV
  - Open Ports Watch — See which ports are listening with their process, and alert on new ones
  - Credential Leak Check — Check emails/usernames against Have I Been Pwned
  - Remote-Access Monitor — Detect active screen-sharing/remote-control (VNC/ARD, AnyDesk, TeamViewer, RustDesk) & Tailscale exit node
  - Intrusion Prevention (fail2ban / CrowdSec) — Install & manage fail2ban jails and CrowdSec decisions
  - Intrusions & Blocked IPs — Recent intrusion events and currently banned IPs (unban)
  - Credential Leaks — Check emails/usernames against Have I Been Pwned
- **Malware Audit** — built-in tool
  - Malware Audit — Local malware analysis: macOS protections, autoruns, ClamAV/YARA scans, VirusTotal hash
- **Security Audit** — built-in tool
- **EDR Fleet** — built-in tool
  - EDR Fleet — Endpoints & detections across SentinelOne, Huntress, CrowdStrike & more
- **Fail2ban** — Bans IPs after suspicious activity (intrusion prevention) _(brew: fail2ban)_
- **Wazuh** — Open-source SIEM & XDR (self-hosted) _(port 443, web UI)_
- **Suricata** — High-performance IDS/IPS engine (self-hosted)
- **Snort** — The classic network IDS (self-hosted)
- **LuLu** — Free open-source outbound firewall (macOS app)
- **Little Snitch** — Commercial network monitor & firewall (macOS app)
- **Murus** — GUI front-end for the macOS pf firewall (app)
- **Radio Silence** — Lightweight macOS outbound firewall (app)
- **Vallum** — Per-app outbound firewall & throttle (app)
- **Hands Off!** — Per-app network + disk access control (app)
- **NetBarrier** — Two-way macOS firewall (Intego, app)
- **ClamAV** — Open-source antivirus engine (self-hosted) _(brew: clamav)_
- **YARA** — Pattern-matching engine for malware (self-hosted)
- **AbuseIPDB** — Crowd-sourced IP reputation / blocklist (cloud API) _(web UI)_
- **Phishing Catcher** — Catch phishing domains from CT logs (self-hosted)
- **URLhaus** — Malware-URL feed & lookup API (cloud · abuse.ch) _(web UI)_
- **OpenPhish** — Live phishing-URL feed (cloud) _(web UI)_
- **MISP** — Threat-intelligence sharing platform (self-hosted) _(port 443, web UI)_
- **CAPE Sandbox** — Malware sandbox w/ config extraction (self-hosted) _(port 8000, web UI)_
- **Cuckoo Sandbox** — Automated malware-analysis sandbox (self-hosted) _(port 8090, web UI)_
- **YARA-X** — YARA rewritten in Rust — faster CLI scanner (self-hosted)
- **Volatility 3** — Memory-forensics framework (self-hosted)
- **capa** — Detect capabilities in executables (self-hosted)
- **oletools** — Analyze malicious Office docs / OLE (self-hosted)
- **radare2** — Reverse-engineering framework / disassembler (self-hosted)
- **binwalk** — Firmware / embedded-file carving & analysis (self-hosted)
- **Nuclei** — Template-based vulnerability scanner (self-hosted CLI)
- **OpenCTI** — Cyber threat-intelligence platform (self-hosted) _(port 8080, web UI)_
- **TheHive** — Security incident-response platform (self-hosted) _(port 9000, web UI)_
- **Cortex** — Observable analyzers & responders engine (self-hosted) _(port 9001, web UI)_
- **IntelOwl** — OSINT / threat-intel analysis platform (self-hosted) _(port 443, web UI)_
- **AlienVault OTX** — Open Threat Exchange IOC feed (cloud) _(web UI)_
- **Security Onion** — NSM + SIEM + IDS Linux distro (self-hosted) _(port 443, web UI)_
- **GRR Rapid Response** — Remote live-forensics / IR framework (self-hosted) _(port 8000, web UI)_
- **OpenEDR** — Open-source endpoint detection & response (self-hosted) _(web UI)_
- **Santa** — macOS binary allowlisting / blocklisting (self-hosted)
- **KnockKnock** — Reveal persistently installed Mac software (self-hosted)
- **BlockBlock** — Monitor & block persistence in real time (self-hosted)
- **ThreatLocker** — Zero Trust app allowlisting & endpoint control (agent + cloud portal)
- **OPSWAT MetaDefender** — Multi-engine malware scanning & file CDR (self-hosted / API) _(port 8008, web UI)_
- **osquery** — Query your endpoint like a database (agent)
- **Fleet** — Self-hosted osquery fleet manager (web UI + API) _(port 8080, web UI)_
- **Velociraptor** — Endpoint visibility & DFIR hunting (self-hosted) _(port 8889, web UI)_
- **Zeek** — Network security monitor / traffic analysis (self-hosted)
- **OpenVAS / Greenbone** — Vulnerability scanning (self-hosted) _(port 9392, web UI)_
- **CrowdStrike Falcon** — Cloud-native EDR/XDR (macOS sensor + API)
- **SentinelOne** — Autonomous EDR/XDR (macOS agent + API)
- **Microsoft Defender for Endpoint** — Microsoft EDR for macOS (agent + Graph API)
- **Sophos Central** — Endpoint protection / MDR (macOS agent + API)
- **Bitdefender GravityZone** — Endpoint protection / EDR (macOS agent + API)
- **Malwarebytes** — Anti-malware (macOS app; business via Nebula API)
- **Huntress** — Managed EDR/MDR for SMB & MSPs (agent + API)
- **Jamf Protect** — Mac-native endpoint security (agent + API)
- **LimaCharlie** — API-first SecOps cloud / EDR (agent + API)
- **Airlock Digital** — Application allowlisting & execution control (agent + API)
- **Admin By Request** — Endpoint privilege management / just-in-time admin (agent + API)
- **CyberArk EPM** — Endpoint Privilege Manager (agent + API)
- **BeyondTrust EPM** — Endpoint Privilege Management for Mac (agent + API)
- **AutoElevate (CyberFOX)** — MSP privilege elevation & local-admin control (agent + API)
- **VirusTotal** — Multi-engine file/URL reputation (API)
- **Cloudmersive** — Virus-scan & content-protection API (cloud / self-host)
- **Hybrid Analysis** — Malware sandbox (Falcon Sandbox) — API
- **Kolide** — Device trust & posture (osquery-based agent + API)
- **AdGuard** — Ad/tracker blocker app + AdGuard DNS & VPN (commercial)
- **CyberChef** — The cyber-Swiss-army-knife for data _(web UI)_

### Secrets Scanning & Supply Chain Security

- **Snyk** — Developer security — code, deps, containers & IaC (cloud + CLI) _(web UI)_
- **Dependabot** — Automated dependency-update & security PRs (GitHub) _(web UI)_
- **Renovate** — Automated dependency updates, any platform (self-hosted / app)
- **Trivy** — All-in-one vuln, secret, IaC & SBOM scanner (self-hosted CLI)
- **Grype** — Fast vulnerability scanner for images & SBOMs (self-hosted CLI)
- **Syft** — Generate SBOMs from images & filesystems (self-hosted CLI)
- **Cosign** — Sign & verify container images and artifacts (self-hosted CLI)
- **Sigstore** — Keyless signing ecosystem — Cosign, Fulcio, Rekor (self-hosted / public)
- **Chainguard** — Minimal, low/zero-CVE container images (cloud + chainctl) _(web UI)_
- **Socket** — Proactive dependency / supply-chain attack detection (cloud + CLI) _(web UI)_
- **GitGuardian** — Secrets detection across code & CI (cloud + ggshield CLI) _(web UI)_
- **Gitleaks** — Open-source secrets scanner for git repos (self-hosted CLI)
- **Semgrep Supply Chain** — SAST + reachable-dependency (SCA) scanning (self-hosted CLI / cloud)

### Policy, Compliance & Governance

- **Vanta** — Automated compliance — SOC 2, ISO 27001, HIPAA, GDPR (cloud) _(web UI)_
- **Drata** — Continuous compliance automation & audit readiness (cloud) _(web UI)_
- **Secureframe** — Compliance automation across 40+ frameworks (cloud) _(web UI)_
- **Sprinto** — Compliance automation for fast-moving teams (cloud) _(web UI)_
- **Thoropass** — Compliance + audit in one (formerly Laika, cloud) _(web UI)_
- **Hyperproof** — Compliance operations & evidence management (cloud) _(web UI)_
- **OneTrust** — Privacy, GRC & data governance suite (cloud) _(web UI)_
- **LogicGate Risk Cloud** — No-code GRC & risk workflow platform (cloud) _(web UI)_
- **AuditBoard** — Connected risk, audit & compliance platform (cloud) _(web UI)_
- **Eramba** — Open-source GRC platform (self-hosted) _(port 443, web UI)_
- **SimpleRisk** — Open-source risk management (self-hosted) _(port 443, web UI)_
- **OpenGRC** — Open-source governance, risk & compliance (self-hosted) _(port 8080, web UI)_
- **OpenControl** — Compliance-as-code documentation toolkit (self-hosted CLI)
- **Open Policy Agent (OPA)** — General-purpose policy engine, Rego (self-hosted CLI) _(port 8181)_
- **Conftest** — Test config files against OPA/Rego policies (CLI)
- **OPA Gatekeeper** — OPA policy admission controller for Kubernetes (self-hosted)
- **Kyverno** — Kubernetes-native policy engine, no new language (self-hosted)
- **HashiCorp Sentinel** — Policy as code for the HashiCorp stack (CLI)
- **Checkov** — Static policy scanning for IaC (self-hosted CLI)
- **Prowler** — Open-source multi-cloud security & compliance scanner (CLI)
- **Scout Suite** — Multi-cloud security-auditing tool (CLI)
- **CloudQuery** — Cloud asset inventory as SQL (self-hosted CLI)
- **Steampipe** — Query cloud APIs with SQL + compliance mods (CLI)
- **Cloud Custodian** — Rules engine for cloud governance & remediation (CLI)
- **AWS Config** — Native AWS resource configuration & compliance (API) _(web UI)_
- **AWS Security Hub** — Aggregated AWS security findings & standards (API) _(web UI)_
- **OpenFGA** — Open-source fine-grained authorization (Zanzibar-style, self-hosted) _(port 8080)_
- **Authzed / SpiceDB** — Zanzibar-style permissions database (self-hosted / cloud) _(port 50051)_
- **Permify** — Open-source fine-grained authorization service (self-hosted) _(port 3476)_
- **Aserto / Topaz** — Authorization built on OPA + Zanzibar (self-hosted / cloud) _(port 8383)_
- **immudb** — Immutable, cryptographically-verifiable database / audit log (self-hosted) _(port 3322)_
- **Securiti** — Data privacy, security & governance platform (cloud) _(web UI)_
- **BigID** — Data discovery, privacy & governance at scale (cloud) _(web UI)_
- **DataGrail** — Privacy platform — DSR & data mapping automation (cloud) _(web UI)_
- **Transcend** — Privacy & data-rights automation, incl. AI governance (cloud) _(web UI)_
- **MineOS** — Data-governance & privacy operations platform (cloud) _(web UI)_
- **Osano** — Consent management & privacy compliance (cloud) _(web UI)_
- **OpenMetadata** — Open-source metadata, catalog & lineage platform (self-hosted) _(port 8585, web UI)_
- **DataHub** — Open-source metadata platform & data catalog (self-hosted) _(port 9002, web UI)_
- **Amundsen** — Open-source data discovery & metadata engine (self-hosted) _(port 5000, web UI)_
- **Apache Atlas** — Metadata & governance for the Hadoop/data ecosystem (self-hosted) _(port 21000, web UI)_
- **Microsoft Purview** — Data governance, compliance, retention & eDiscovery (cloud) _(web UI)_
- **Google Vault** — Retention, legal hold & eDiscovery for Google Workspace (cloud) _(web UI)_
- **Smarsh** — Communications capture, archiving & supervision (cloud) _(web UI)_
- **Logikcull** — Self-service eDiscovery & legal hold (cloud, Reveal) _(web UI)_
- **Everlaw** — Cloud litigation & eDiscovery platform (cloud) _(web UI)_

### MDM & Device Management

- **Apple Business Manager** — built-in tool
- **Kandji** — Apple MDM + endpoint security & compliance (agent + API)
- **Mosyle** — Apple MDM + endpoint security (agent + API)
- **Jamf Pro** — Apple MDM — device management & compliance (agent + API)
- **Microsoft Intune** — Cross-platform MDM/MAM in Microsoft 365 (cloud + Graph API)
- **Addigy** — Cloud Apple MDM for MSPs & IT teams (agent + API)
- **SimpleMDM** — Straightforward Apple MDM with a clean REST API (cloud)
- **JumpCloud** — Cloud directory + cross-platform MDM & SSO (agent + API)
- **Fleet (Apple MDM)** — Open-source MDM + osquery for cross-platform device ops (self-hosted) _(port 8080, web UI)_
- **Munki** — Open-source macOS software deployment (self-hosted)
- **MicroMDM** — Open-source, self-hosted Apple MDM server — the Profile Manager replacement _(port 8080)_
- **NanoMDM** — Minimal, scalable open-source Apple MDM server _(port 9000)_
- **AutoPkg** — Automated macOS software packaging (CLI)

### Logging & Observability

- **Graylog** — Centralized log management (self-hosted) _(port 9000, web UI)_
- **Logstash** — ELK's ingest & transform pipeline (self-hosted) _(port 9600, brew: logstash-full)_
- **Kibana** — ELK's search & dashboard UI (self-hosted) _(port 5601, web UI, brew: kibana-full)_
- **Loki** — Grafana's log store — like Prometheus, for logs (self-hosted) _(port 3100, brew: loki)_
- **Vector** — High-performance logs/metrics pipeline (self-hosted) _(port 8686, brew: vector)_
- **Fluent Bit** — Ultra-light log forwarder (self-hosted) _(port 2020, brew: fluent-bit)_
- **Splunk** — Enterprise log search, SIEM and observability _(port 8000, web UI)_
- **Elastic Cloud** — Hosted Elasticsearch, Kibana and observability _(web UI)_
- **Dozzle** — Live Docker container log viewer _(port 8080, web UI)_

### Incident Management & On-Call

- **PagerDuty** — On-call scheduling & incident response (cloud API) _(web UI)_
- **Opsgenie** — Alerting & on-call by Atlassian (cloud API) _(web UI)_
- **incident.io** — Slack-native incident response & on-call (cloud API) _(web UI)_
- **Rootly** — Slack-native incident management (cloud API) _(web UI)_

### Status Pages

- **Statuspage** — Atlassian's hosted status pages (cloud API) _(web UI)_
- **Better Stack Status Pages** — Status pages + monitoring by Better Stack (cloud API) _(web UI)_
- **Gatus** — Automated health checks + status page _(port 8080, web UI)_

### Mining

- **Mining Rigs** — built-in tool
  - Mining Rig Fleet — Discover and add ASIC mining rigs via CGMiner API
  - Mining Rig Monitoring — Watch hashrate, temperature, fans, pool, shares per rig
  - Mining Overheat Alerts — Configure temperature threshold for overheat alerting
  - XMRig Rigs — Monitor CPU and GPU XMRig instances via HTTP API
- **Braiins OS+** — Open ASIC firmware (Antminer) — autotuning + API _(port 4028, web UI)_
- **Hive OS** — Cloud mining fleet OS & dashboard _(web UI)_
- **Awesome Miner** — Windows-based mining management for large fleets _(web UI)_
- **LuxOS / Foreman** — ASIC firmware (LuxOS) & Foreman fleet management _(port 4028, web UI)_

### AI / LLMs

- **AI Administrator** — built-in tool
  - AI Administrator — Tool-using assistant that diagnoses & fixes servers, tailors the sidebar, runs scripts
  - Add Analytics to a Site — Generate the tracking snippet (Ahrefs, GA4, Plausible, Fathom, Cloudflare, Umami, Matomo) and inject it or hand it to an AI
  - Verify a Domain in Google Search Console — Auto-write the google-site-verification TXT (via Cloudflare or any DNS) and wait for it to resolve
  - Provision a Web Project (AI) — Stand up a new site end-to-end via MCP: domain, Cloudflare zone, vhost, DNS, TLS, localhost preview, clone to fleet
- **AI Models** — built-in tool
  - AI Provider Keys — Central API keys for every AI feature (OpenAI, Anthropic, Google, …)
  - AI Custom Instructions — A global preferences file appended to every AI prompt — set language, tone, rules and facts about your setup once
- **Ollama** — built-in tool
  - Ollama Model Manager — Load, unload, delete, benchmark, and update Ollama models
  - Ollama Model Downloader — Browse and download models from the catalog by family
  - Ollama Server Control — Start, stop, and troubleshoot the Ollama server
- **LM Studio** — built-in tool
  - LM Studio Models — Load and unload models into LM Studio's local server
  - LM Studio Server — Run LM Studio's local server via the lms CLI
- **Model Costs** — built-in tool
  - AI Cost Summary — Month-to-date spend, budget tracking, and provider breakdown
  - AI Account Sync — Connect and auto-sync API accounts for live cost tracking
  - Coding Agent Usage — Scan local Claude Code and Codex CLI usage logs
  - AI Subscriptions — Track and manage flat monthly subscriptions
  - Model Prices — Edit pricing tables for tokens and voice services
- **Skill Manager** — built-in tool
  - AI Skill Manager — Create, edit, and export reusable AI skills with system prompts
- **Open WebUI** — built-in tool
  - Open WebUI (Docker) — Install, update, start, and manage Open WebUI as a Docker container
  - Open WebUI (Python) — Install and run Open WebUI as a Python app using uv or pip
- **RAG Manager** — built-in tool
  - RAG Collections — Add and index document folders for semantic search
  - RAG Embedding Model — Choose and pull embedding models from Ollama
  - RAG Vector Backend — Select local or external vector database backend
  - RAG Semantic Search — Query indexed collections by meaning
- **Vector Databases** — built-in tool
  - Qdrant — Deploy and manage Qdrant vector database
  - Chroma — Deploy and manage Chroma vector database
  - Weaviate — Deploy and manage Weaviate vector database
  - Milvus — Deploy and manage Milvus vector database with Compose
- **Firecrawl** — built-in tool
  - Firecrawl — Crawl/scrape sites into LLM-ready markdown (hosted or self-hosted)
- **Crawl4AI** — built-in tool
  - Crawl4AI — Open-source self-hosted LLM web crawler
- **Apify** — built-in tool
  - Apify — Cloud web scraping with Actors
- **Playwright** — built-in tool
  - Playwright — Local browser automation — server, screenshot, codegen
- **Browserbase** — built-in tool
  - Browserbase — Cloud headless browsers (sessions)
- **MLX-LM Server** — Apple-silicon LLM server (OpenAI-compatible) _(port 8080)_
- **oMLX** — Native macOS menu-bar server for MLX models (OpenAI + Anthropic APIs) _(port 8000, web UI)_
- **MLX (Apple)** — Apple's ML framework for Apple Silicon
- **vLLM** — High-throughput LLM inference server (OpenAI-compatible) _(port 8000)_
- **llama.cpp Server** — Lightweight local LLM server (OpenAI-compatible) _(port 8080)_
- **LocalAI** — Self-hosted, OpenAI-compatible inference server _(port 8080, web UI)_
- **Jan** — Private, offline AI desktop app (OpenAI-compatible) _(port 1337)_
- **PrivateGPT** — Ask questions of your documents, 100% offline (RAG) _(port 8001, web UI)_
- **LiteLLM** — Proxy/gateway for 100+ LLM APIs (OpenAI-compatible) _(port 4000, web UI)_
- **AnythingLLM** — All-in-one self-hosted RAG chat app _(port 3001, web UI)_
- **Hugging Face** — Model hub, Inference API & local tooling _(web UI)_
- **LibreChat** — Self-hosted multi-provider AI chat UI _(port 3080, web UI)_
- **NotebookLM** — Google's source-grounded research notebook (cloud) _(web UI)_
- **Open Notebook** — Open-source, self-hosted NotebookLM alternative _(port 8502, web UI)_
- **OpenCode** — Open-source AI coding agent (terminal)

### AI Clusters

- **Exo Cluster** — built-in tool
  - exo Cluster Control — Start and stop exo distributed inference on this Mac
  - exo Node Discovery — Discover and scan AI nodes across the local network
  - exo Node Benchmarking — Benchmark token throughput on cluster nodes
- **GPU Fabric** — built-in tool
  - NVLink Status — Check NVLink connectivity and state between GPUs
  - GPU Diagnostics — NVIDIA GPU inventory, memory, utilization and temperature
  - NVSwitch Fabric Manager — Monitor NVSwitch fabric manager health and GPU peering
  - DCGM Inventory — NVIDIA Data Center GPU Manager health and inventory
  - InfiniBand Status — Check InfiniBand HCA ports, state, rate, and LID
  - RDMA / RoCE Links — Monitor RDMA and RoCE links for GPU/storage interconnect
  - Slurm GPU Allocation — Per-node GPU (GRES) allocation and state via Slurm
  - Composable GPU Fabric — WEKA, Liqid and GigaIO composable fabric status
- **Petals** — BitTorrent-style distributed inference of big models
- **Distributed Llama** — Tensor-parallel Llama across cheap nodes (root + workers) _(port 9998)_
- **Slurm** — HPC workload manager / job scheduler _(port 6817)_
- **Ray** — Distributed compute for AI (training/serving/tuning) _(port 8265, web UI)_
- **Apache Spark** — Distributed big-data processing engine _(port 8080, web UI)_
- **Dask** — Parallel computing for Python (scales pandas/NumPy) _(port 8787, web UI)_
- **JupyterLab** — Interactive notebooks for data & AI (Python) _(port 8888, web UI)_
- **Run:ai** — GPU orchestration & fractional GPUs on Kubernetes (NVIDIA) _(web UI)_
- **NVIDIA Base Command Manager** — GPU/HPC cluster provisioning & management (ex-Bright) _(port 8081, web UI)_

### Agent Platforms

- **Agent Platforms** — built-in tool
  - Agent Platforms — One board for every agent runtime: status, agents, tokens, sessions
- **Agent Registry** — built-in tool
  - Agent Runtimes Registry — View all configured local agent runtimes and their status
  - Agent Cloud Platforms — Catalog service integrations and credential status
- **Task Queue** — built-in tool
  - Agent Live Runs — Monitor active agent sessions and runs across runtimes
- **Model Router** — built-in tool
  - Agent Model Assignment — View which model and provider key each runtime uses
- **Repository Connectors** — built-in tool
  - GitHub Repo Connector — Save and verify GitHub PAT for agent repository access
  - GitLab Repo Connector — Save and verify GitLab access token for agent repository work
  - Bitbucket Repo Connector — Save and verify Bitbucket app password for agent repository work
- **Agent Sessions** — built-in tool
  - Create Agent Session — Create goal-driven ops sessions that run the AI in a loop
  - Run Agent Session — Run, stop, and monitor active sessions with live transcripts
- **Agent Jobs** — built-in tool
- **OpenClaw** — built-in tool
- **Hermes** — built-in tool
- **Odysseus** — built-in tool
- **DeerFlow** — built-in tool
- **CoWork OS** — built-in tool
- **OpenAI Codex Runtime** — built-in tool
- **Claude Code CLI** — built-in tool
  - Claude Code CLI — Anthropic's Claude Code terminal coding agent — detect install & version
- **Gemini CLI** — built-in tool
  - Gemini CLI — Google's Gemini CLI coding agent — detect install & version
- **Factory Droid** — built-in tool
- **LangGraph Platform** — built-in tool
- **CrewAI Enterprise** — built-in tool
- **Microsoft AutoGen** — built-in tool
- **Genspark** — built-in tool
- **Agent Zero** — built-in tool
- **NVIDIA NemoClaw** — built-in tool
- **Apple Intelligence** — built-in tool
  - Apple Intelligence (coming soon) — On-device Apple Intelligence agent support — coming soon
- **Sandcastle** — Orchestrate sandboxed coding agents (isolated containers)
- **SuperAGI** — Open-source autonomous-agent framework (self-hosted) _(port 3000, web UI)_
- **OpenHands (OpenDevin)** — Open-source autonomous AI software engineer (self-hosted) _(port 3000, web UI)_
- **E2B** — Secure cloud sandboxes for AI agents (spin up / clone / kill) _(web UI)_
- **Browserbase** — Headless browser infrastructure for AI agents (cloud sessions) _(web UI)_
- **Manus** — Autonomous general AI agent (cloud API) _(web UI)_
- **Devin** — Cognition's AI software engineer (cloud API) _(web UI)_
- **GitHub Copilot** — AI pair programmer — live org seat/usage monitor _(web UI)_
- **OpenAI Operator** — OpenAI's browser-using agent (cloud) _(web UI)_

### ML Workbench

- **MLflow** — ML experiment tracking & model registry (self-hosted) _(port 5000, web UI)_
- **scikit-learn** — Classic machine-learning library for Python
- **XGBoost** — Gradient-boosted decision trees (high-accuracy tabular ML)
- **PyTorch** — Deep-learning framework (GPU/MPS accelerated)
- **Kaggle** — Datasets, notebooks & competitions (CLI)
- **Kubeflow** — ML toolkit & pipelines on Kubernetes _(web UI)_
- **ClearML** — Experiment tracking, orchestration & MLOps (self-hostable) _(port 8080, web UI)_
- **Weights & Biases (Local)** — Self-hosted experiment tracking & dashboards _(port 8080, web UI)_
- **DVC Studio** — Data/model version control + experiment dashboard _(web UI)_

### AI Governance & Safety

- **Langfuse** — Open-source LLM observability & tracing (self-hosted / cloud) _(port 3000, web UI)_
- **Helicone** — LLM observability & gateway — logs, costs, caching (self-hosted / cloud) _(web UI)_
- **Arize Phoenix** — Open-source LLM tracing & evaluation (self-hosted) _(port 6006, web UI)_
- **OpenLLMetry** — OpenTelemetry instrumentation for LLM apps (SDK)
- **Promptfoo** — Prompt/RAG testing, evals & LLM red-teaming (self-hosted CLI)
- **Ragas** — Evaluation framework for RAG pipelines (Python)
- **Guardrails AI** — Input/output validation guardrails for LLMs (Python)
- **NeMo Guardrails** — Programmable guardrails for LLM conversations (NVIDIA, Python)
- **Lakera Guard** — Real-time GenAI security — prompt-injection firewall (cloud / self-host) _(web UI)_
- **Protect AI** — AI/ML security — model scanning & ML supply chain (cloud + OSS) _(web UI)_
- **garak** — LLM vulnerability scanner / red-teaming (self-hosted CLI)
- **TruLens** — Evaluation & tracking for LLM apps — feedback functions (Python) _(web UI)_
- **WhyLabs** — AI observability & data/LLM monitoring (cloud + whylogs) _(web UI)_
- **Fiddler AI** — AI observability & model monitoring with explainability (cloud) _(web UI)_
- **Credo AI** — AI governance, risk & compliance platform (cloud) _(web UI)_
- **Holistic AI** — AI governance, risk & audit platform (cloud + OSS) _(web UI)_

### GPU Infrastructure

- **NVIDIA DCGM** — NVIDIA Data Center GPU Manager — telemetry & health _(port 5555)_
- **DCGM Exporter** — Export NVIDIA GPU metrics to Prometheus _(port 9400)_

### Speech AI

- **Handy** — Free local push-to-talk speech-to-text (Whisper)
- **Wispr Flow** — AI voice dictation that types into any app
- **Voicebox** — Open-source local voice-to-text for macOS
- **Whisper** — OpenAI's speech-to-text model (Python)
- **Whisper.cpp** — Fast C/C++ Whisper inference (CPU/Metal)
- **Faster Whisper** — CTranslate2 Whisper — up to 4× faster
- **Coqui TTS** — Open-source text-to-speech & voice cloning _(port 5002, web UI)_
- **Piper TTS** — Fast, local neural text-to-speech

### Image & Video AI

- **ComfyUI** — Node-graph Stable Diffusion / video workflows _(port 8188, web UI)_
- **AUTOMATIC1111 WebUI** — Stable Diffusion web UI (txt2img/img2img) _(port 7860, web UI)_
- **InvokeAI** — Pro Stable Diffusion studio (Unified Canvas) _(port 9090, web UI)_
- **Fooocus** — Simplest Stable Diffusion — type a prompt, get art _(port 7865, web UI)_

### MCP

- **MCP Servers** — built-in tool
  - Add MCP Server — Register a Model Context Protocol server
- **Fleet Skill** — built-in tool
  - Fleet Skill — Generate a portable SKILL.md of your fleet & rules for AI agents (auto-updates; MCP-discoverable)
- **MCP Server** — built-in tool
  - MCP Server (expose this app) — Let external AI tools (Claude Desktop, Cursor, Codex) drive FrontierStack

### Self-Hosted Apps

- **Immich** — Self-hosted Google Photos (ML search) _(port 2283, web UI)_
- **PhotoPrism** — AI-powered photo library _(port 2342, web UI)_
- **ResourceSpace** — Open-source digital asset management (self-hosted) _(port 80, web UI)_
- **Pimcore** — Open-source PIM / DAM / CMS platform (self-hosted) _(port 80, web UI)_
- **Paperless-ngx** — Scan, OCR & archive documents _(port 8000, web UI)_
- **Paperless-AI** — AI auto-tagging & chat for Paperless-ngx _(port 3000, web UI)_
- **FreshRSS** — Self-hosted RSS reader (PHP) _(port 80, web UI)_
- **Miniflux** — Minimalist RSS reader (Go) _(port 8080, web UI, brew: miniflux)_
- **Mixpost** — Self-hosted social media scheduling _(port 80, web UI)_
- **Mealie** — Self-hosted recipe manager & meal planner _(port 9000, web UI)_
- **Tandoor** — Recipe manager & meal planner _(port 8080, web UI)_
- **Grocy** — Groceries & household ERP _(port 80, web UI)_
- **Homepage** — Modern self-hosted services dashboard _(port 3000, web UI)_
- **Dashy** — Feature-rich homelab dashboard _(port 4000, web UI)_
- **Heimdall** — Simple application start page _(port 80, web UI)_
- **Homer** — Static, fast services dashboard (YAML) _(port 8080, web UI)_

### Web3

- **The Graph** — built-in tool
  - graph CLI — Build & deploy subgraphs
- **Foundry** — Fast Solidity toolkit (forge/cast/anvil) _(port 8545)_
- **Anvil** — Local Ethereum testnet (Foundry) _(port 8545)_
- **Solidity** — Smart-contract compiler (solc)
- **Hardhat** — Ethereum dev environment (Node.js) _(port 8545)_
- **Ganache** — Personal Ethereum blockchain (dev) _(port 8545)_
- **IPFS** — Distributed file system (Kubo) _(port 5001, web UI, brew: ipfs)_
- **Ceramic** — Decentralized data network (ComposeDB) _(port 7007)_

### Crypto

- **Bitcoin Core** — Full Bitcoin node (bitcoind) _(port 8332)_
- **Ethereum Node** — go-ethereum (geth) execution node _(port 8545)_
- **BTCPay Server** — Self-hosted Bitcoin payment processor _(port 23000, web UI)_
- **XMRig** — Monero (RandomX) CPU/GPU miner

### RPC Services

- **Alchemy** — built-in tool
  - Set Graph Node RPC — Use Alchemy/Infura for the local Graph Node
- **Infura** — built-in tool

### Tools

- **Apache Tika** — Content detection & text/metadata extraction _(port 9998)_
- **Gotenberg** — Stateless API to convert documents to PDF _(port 3000)_
- **SearXNG** — Private metasearch engine (self-hosted) _(port 8080, web UI)_
- **Stirling-PDF** — Self-hosted PDF toolbox (merge/split/OCR…) _(port 8080, web UI)_
- **IT-Tools** — Handy developer/IT utilities in one page _(port 80, web UI)_
- **Excalidraw** — Virtual hand-drawn whiteboard _(port 80, web UI)_
- **Penpot** — Open-source design & prototyping (Figma alt.) _(port 9001, web UI)_
- **Whoogle Search** — Private, ad-free Google results proxy _(port 5000, web UI)_

### Home Automation

- **Apple Home** — built-in tool
  - HomeKit Setup — Homes, rooms, accessories, hubs, cameras, scenes, automations, Matter
  - HomeKit Shortcuts — List and run HomeKit shortcuts from the Shortcuts app
- **Power Control** — built-in tool
  - Power Home Assistant Link — Configure Home Assistant URL and token for outlet control
  - Smart Outlets — Add and manage smart plugs/strips for power control
  - UPS monitoring — Auto-detect & monitor UPS units (macOS, NUT, apcupsd) — APC, Dell, Omron, Buffalo, CyberPower — pin them, with battery/low/comms alerts
  - Auto Power-Cycle — Link outlets to hosts and auto-reboot on health-check failure
  - UPS Monitoring — Watch UPS units for online/on-battery/charge status
- **Home Assistant** — Open-source home automation hub _(port 8123, web UI)_
- **Node-RED** — Flow-based automation wiring _(port 1880, web UI, brew: node-red)_
- **Homebridge** — Bridge non-HomeKit devices to Apple Home _(port 8581, web UI)_
- **ESPHome** — Firmware for ESP IoT devices (Home Assistant) _(port 6052, web UI)_
- **openHAB** — Vendor-neutral automation platform _(port 8080, web UI)_

### Cameras

- **motionEye** — Web frontend for motion (DIY NVR) _(port 8765, web UI)_
- **RTSP Cameras** — Any RTSP-streaming IP camera _(port 554)_
- **ONVIF Cameras** — Standards-based camera discovery & control _(port 80, web UI)_
- **go2rtc** — Camera stream restreamer (RTSP/WebRTC/HLS) _(port 1984, web UI)_
- **Tapo Cameras** — TP-Link Tapo Wi-Fi cameras (RTSP/ONVIF) _(port 554)_
- **Frigate** — NVR with real-time object detection _(port 5000, web UI)_
- **Scrypted** — High-performance camera hub _(port 11080, web UI)_
- **Shinobi** — Open-source video management (CCTV) _(port 8080, web UI)_
- **ZoneMinder** — Full-featured CCTV / video surveillance _(port 8095, web UI)_
- **Agent DVR** — Cross-platform NVR with AI detection (self-hosted) _(port 8090, web UI)_
- **Blue Iris** — Powerful Windows NVR (run on a Windows host) _(port 81, web UI)_

### IoT

- **SwitchBot** — built-in tool
  - SwitchBot Cloud API — Configure SwitchBot token and secret for cloud device control
  - SwitchBot Devices — Control SwitchBot devices (Bot, Curtain, Plug, Lock, Hub); pin them & auto-pin new ones
  - Power a server via SwitchBot plug — Link a SwitchBot Smart Plug to a server for remote On/Off and power-cycle (hard reset)
  - SwitchBot IR Remotes — Control virtual IR remotes (TV, AC, fan, lights) via SwitchBot Hub
- **Zigbee** — built-in tool
  - Zigbee Coordinator — Configure Zigbee2MQTT or deCONZ bridge connection
  - Zigbee USB Stick — Detect and configure USB Zigbee stick (Sonoff, SkyConnect, ConBee)
  - Zigbee Device Pairing — Allow devices to join the Zigbee network
  - Install Zigbee2MQTT — Docker or npm installation for the Zigbee2MQTT bridge
- **Zigbee2MQTT** — Bridge Zigbee devices to MQTT (no vendor hub) _(port 8080, web UI)_
- **Z-Wave (Z-Wave JS UI)** — Control Z-Wave devices via MQTT + web UI _(port 8091, web UI)_
- **Matter** — Commission & control Matter devices _(port 5580)_
- **Thread** — Low-power mesh for Matter devices
- **OpenThread Border Router** — Run your own Thread border router (self-hosted)
- **Bluetooth (BLE)** — BLE sensors & trackers
- **Bluetooth Beacons** — iBeacon / Eddystone proximity beacons (BLE)
- **TP-Link Kasa & Tapo** — Kasa & Tapo plugs/bulbs/strips + the kasa CLI
- **Amazon Alexa** — Voice assistant ecosystem
- **Google Home** — Google Home / Nest ecosystem
- **HomePod** — Apple smart speaker & Home hub (AirPlay 2 / Matter / Thread)

### MQTT Brokers

- **MQTT Message Bus** — built-in tool
  - MQTT Broker Connection — Connect to Mosquitto MQTT broker and check status
  - MQTT Health Bridges — Configure bridges for Mac, router, AI agent, Home Assistant
  - MQTT Topic Explorer — Snapshot or live-stream MQTT topics and messages
  - MQTT Publish — Send a test message to an MQTT topic
  - MQTT Retained Messages — View and clear MQTT retained messages
  - MQTT Access Control — Manage MQTT users, ACL rules, permissions
- **Mosquitto** — Eclipse MQTT broker _(port 1883, brew: mosquitto)_
- **EMQX** — Scalable, clustered MQTT broker _(port 1883, web UI, brew: emqx)_
- **HiveMQ** — Enterprise MQTT broker (Java) _(port 1883, web UI)_
- **RabbitMQ (MQTT)** — AMQP broker with the MQTT plugin _(port 1883, web UI, brew: rabbitmq)_

### POS Systems

- **Square** — built-in tool
  - Square Account Connection — Set access token and toggle production/sandbox
  - Square Sales Today — View gross sales, payments and average from today
  - Square Loyalty — Monitor loyalty program status
- **Toast POS** — Restaurant POS platform (cloud) _(web UI)_
- **Lightspeed** — Retail & hospitality POS (cloud) _(web UI)_
- **Floranext** — All-in-one florist software — POS, e-commerce & orders (cloud) _(web UI)_

### CRM & Loyalty

- **Salesforce** — The enterprise CRM (cloud) _(web UI)_
- **HubSpot** — CRM + marketing/sales hubs (cloud) _(web UI)_
- **Zoho CRM** — Affordable full-suite CRM (cloud) _(web UI)_
- **SuiteCRM** — Self-hosted open-source CRM (PHP) _(port 80, web UI)_
- **EspoCRM** — Lightweight self-hosted CRM (PHP) _(port 80, web UI)_
- **Odoo CRM** — CRM inside the open-source ERP (Python) _(port 8069, web UI)_
- **Pipedrive** — Sales-pipeline-first CRM (cloud) _(web UI)_
- **Square Loyalty** — Points & rewards on Square (cloud) _(web UI)_
- **Loyalzoo** — Digital loyalty for independents (cloud) _(web UI)_
- **Thanx** — Guest engagement & loyalty for restaurants _(web UI)_
- **Punchh** — Enterprise restaurant loyalty (PAR, cloud) _(web UI)_
- **VoucherVault** — Self-hosted vouchers, gift cards & loyalty _(port 8000, web UI)_

### Helpdesk & Ticketing

- **Zammad** — Open-source helpdesk & ticketing (self-hosted) _(port 8080, web UI)_
- **osTicket** — Classic open-source support ticket system (PHP/MySQL) _(port 80, web UI)_
- **Freshdesk** — Cloud helpdesk / customer support (API) _(web UI)_

### IT Assets

- **GLPI** — Asset inventory & ITSM with CMDB (PHP/MySQL) _(port 80, web UI)_
- **Snipe-IT** — Open-source IT asset management (PHP/MySQL) _(port 80, web UI)_
- **AssetTiger** — Cloud asset tracking with barcodes (API) _(web UI)_
- **Lansweeper** — IT asset discovery & inventory (cloud/on-prem API) _(web UI)_
- **Workwize** — Global IT equipment lifecycle & logistics (cloud API) _(web UI)_

### Project Management

- **Jira** — Issue tracking & agile project management (cloud API) _(web UI)_
- **Linear** — Fast issue tracking for product teams (cloud, GraphQL API) _(web UI)_
- **Taiga** — Open-source agile project management (self-hosted) _(port 80, web UI)_
- **OpenProject** — Open-source PM with Gantt & roadmaps (self-hosted) _(port 80, web UI)_
- **Plane** — Open-source Jira alternative (self-hosted) _(port 80, web UI)_
- **Leantime** — Open-source PM for non-project managers (PHP/MySQL) _(port 80, web UI)_
- **Basecamp** — Project management & team collaboration (cloud API) _(web UI)_
- **monday.com** — Work OS — boards, projects & workflows (cloud API) _(web UI)_
- **Vikunja** — Self-hosted to-do / task manager _(port 3456, web UI)_
- **Planka** — Realtime kanban board (Trello alternative) _(port 1337, web UI)_
- **Kimai** — Self-hosted time tracking _(port 8001, web UI)_
- **Focalboard** — Self-hosted project boards (Trello/Notion alt.) _(port 8000, web UI)_

### PMS

- **Channel Manager** — built-in tool
  - Channel Manager (PMS platforms) — OTA sync + PMS health: Guesty, Hostaway, Mews, CloudBeds, Hospitable & more
- **SuiteOp** — built-in tool
  - SuiteOp — STR guest check-in, smart locks & operations
- **Symplehost** — AI property management for short-term rentals (cloud) _(web UI)_
- **Breezeway** — Property operations & services for STRs (cloud) _(web UI)_
- **Operto** — Smart-lock & guest-experience automation for STRs (cloud) _(web UI)_
- **PriceLabs** — Dynamic pricing & revenue management for STRs (cloud) _(web UI)_
- **Beyond** — Dynamic pricing, insights & direct booking for STRs (cloud) _(web UI)_
- **Wheelhouse** — Dynamic pricing & market analytics for STRs (cloud) _(web UI)_
- **AirDNA** — Short-term-rental market data & analytics (cloud) _(web UI)_
- **RankBreeze** — Airbnb listing optimization & rank tracking (cloud) _(web UI)_
- **Truvi** — Direct-booking website builder for STRs (cloud) _(web UI)_
- **Hospitable** — Guest-messaging automation & STR management (cloud) _(web UI)_
- **Hostfully** — STR property-management platform & digital guidebooks (cloud) _(web UI)_
- **Boostly** — SMS marketing & direct-booking growth for STRs (cloud) _(web UI)_
- **Cloudbeds** — Hotel PMS, booking engine & channel manager (cloud) _(web UI)_
- **Beds24** — PMS & channel manager with a deep API (cloud) _(web UI)_
- **AirHost** — Japanese STR PMS & channel manager (cloud) _(web UI)_
- **HappyGuest** — Digital guest directory & concierge for hospitality (cloud) _(web UI)_
- **Alexa Smart Properties** — Managed Alexa for hotels & senior living (cloud) _(web UI)_
- **QloApps** — Open-source hotel reservation system _(port 80, web UI)_
- **HotelDruid** — Hotel/B&B management & bookings _(port 80, web UI)_
- **OpenHotel PMS** — Open property-management system _(web UI)_
- **BookStack** — Wiki/docs for SOPs & property info _(port 80, web UI)_
- **Easy!Appointments** — Open-source appointment scheduling _(port 80, web UI)_
- **Turno** — Vacation-rental cleaning & turnover scheduling (cloud) _(web UI)_
- **Rentals (Laravel)** — Custom Laravel vacation-rental app _(port 80, web UI)_

### Meeting Rooms & Desk Booking

- **Skedda** — Desk & space booking (cloud API) _(web UI)_
- **Robin** — Room scheduling & desk booking (cloud API) _(web UI)_
- **Envoy Workplace** — Workplace, visitor & desk management (cloud API) _(web UI)_
- **YAROOMS** — Meeting room & desk booking (cloud API) _(web UI)_
- **OfficeSpace** — Space management & desk/room booking (cloud API) _(web UI)_
- **Condeco (Eptura)** — Enterprise room & desk booking (cloud API) _(web UI)_
- **DeskFlex** — Desk & room reservation system (cloud API) _(web UI)_
- **Matrix Booking** — Room, desk & resource booking (cloud API) _(web UI)_

### Coworking & Shared Spaces

- **OfficeRnD** — Coworking & flex-space management (cloud API) _(web UI)_
- **Nexudus** — Coworking management & white-label platform (cloud API) _(web UI)_
- **Optix** — App-first coworking management (cloud API) _(web UI)_
- **Cobot** — Coworking space management (cloud API) _(web UI)_

### Facilities & Maintenance

- **IBM Maximo** — Enterprise asset management & CMMS (cloud/self-managed API) _(web UI)_
- **FMX** — Facilities management & maintenance (cloud API) _(web UI)_
- **Archibus** — IWMS — facilities, real estate & assets (API) _(web UI)_

### Accounting & ERP

- **Money Forward Cloud** — Japanese cloud accounting & back office (cloud) _(web UI)_
- **freee** — Japanese cloud accounting & HR (cloud) _(web UI)_
- **Xero** — Cloud accounting for small business (cloud) _(web UI)_
- **ERPNext** — Open-source ERP — accounting, inventory, HR (self-hosted) _(port 8080, web UI)_
- **QuickBooks** — Intuit cloud accounting (cloud) _(web UI)_
- **Plaid** — Bank account linking & financial data (cloud API)
- **Expensify** — Expense & receipt management (cloud API) _(web UI)_
- **Firefly III** — Self-hosted personal finance manager _(port 8080, web UI)_
- **Actual Budget** — Fast local-first envelope budgeting _(port 5006, web UI)_
- **Ghostfolio** — Open-source wealth/investment tracker _(port 3333, web UI)_
- **Invoice Ninja** — Self-hosted invoicing & payments _(port 80, web UI)_
- **Maybe** — Open-source personal finance / net worth _(port 3000, web UI)_

### Healthcare

- **OpenEMR** — Open-source EHR & practice management (PHP/MySQL) _(port 80, web UI)_
- **OpenMRS** — Open-source medical record platform (Java) _(port 8080, web UI)_
- **GNU Health** — Hospital & health information system (Python/Tryton) _(port 8000, web UI)_
- **LibreHealth** — Open-source EHR / toolkit (PHP/MySQL) _(port 80, web UI)_
- **Orthanc** — Lightweight DICOM server / PACS (REST API) _(port 8042, web UI)_
- **OpenDolphin** — Open-source EHR / electronic karte (Japan) _(port 8080, web UI)_
- **ORCA** — Japan Medical Association receipt/billing system _(port 8000, web UI)_

### Automation & Workflows

- **Automatio.ai** — AI no-code web automation & scraping (cloud) _(web UI)_
- **Zite** — AI app & workflow builder (cloud) _(web UI)_
- **AppSheet** — Google no-code app builder from a spreadsheet/DB (cloud) _(web UI)_
- **Zapier** — Cloud iPaaS — connect 7,000+ apps (cloud) _(web UI)_
- **n8n** — Source-available workflow automation (self-hosted) _(port 5678, web UI)_
- **Pipedream** — Developer-first workflow automation (cloud) _(web UI)_
- **Power Automate** — Microsoft cloud + desktop automation (cloud) _(web UI)_
- **Activepieces** — Open-source no-code automation (self-hosted) _(port 8080, web UI)_
- **Windmill** — Scripts → workflows & internal apps (self-hosted) _(port 8000, web UI)_
- **Huginn** — Self-hosted agents that watch & act (self-hosted) _(port 3000, web UI)_
- **Flowise** — Drag-and-drop LLM app builder (self-hosted) _(port 3000, web UI)_
- **Langflow** — Visual builder for LLM/agent flows (self-hosted) _(port 7860, web UI)_
- **Dify** — Open-source LLMOps / AI app platform (self-hosted) _(port 80, web UI)_
- **Elgato Stream Deck** — Hardware macro keypad with LCD keys
- **Touch Portal** — Turn a phone/tablet into a macro deck (no extra hardware)
- **Bitfocus Companion** — Open-source control surface for larger automation workflows _(port 8000, web UI)_
- **X-keys** — Programmable keypads for NOCs & operations
- **Matric** — Phone macro deck with live metric tiles
- **QMK / VIA** — Open keyboard firmware + live key remapping

### Workflow Orchestration

- **Temporal** — Durable execution platform for reliable workflows _(port 8233, web UI)_
- **Restate** — Durable execution for resilient services (single binary) _(port 9070, web UI)_
- **Apache Airflow** — Programmatic data-pipeline orchestration (DAGs) _(port 8080, web UI)_

### HRIS Integration

- **Unified.to (HRIS API)** — Unified API across HRIS providers _(web UI)_
- **Apideck (HRIS API)** — Unified HRIS API & integration platform _(web UI)_
- **Truto** — Unified API for HRIS & more (cloud) _(web UI)_
- **Bindbee** — Unified HRIS / employment API (cloud) _(web UI)_

### VoIP & Telephony

- **Asterisk** — The open-source PBX engine (self-hosted) _(port 5060, brew: asterisk)_
- **FreePBX** — Web GUI distro on Asterisk (self-hosted, Linux) _(port 80, web UI)_
- **FreeSWITCH** — Carrier-grade softswitch (self-hosted) _(port 5060)_
- **FusionPBX** — Multi-tenant web GUI on FreeSWITCH (self-hosted) _(port 443, web UI)_
- **Issabel PBX** — Unified-communications distro on Asterisk (self-hosted) _(port 443, web UI)_
- **Kamailio** — High-performance SIP server/proxy (self-hosted) _(port 5060)_
- **OpenSIPS** — SIP proxy/router for large platforms (self-hosted) _(port 5060)_
- **PBXact** — Sangoma's commercial PBX (appliance/cloud) _(port 80, web UI)_
- **Plivo** — Voice & SMS API platform (cloud) _(web UI)_
- **Telnyx** — Carrier-grade voice, SIP trunking & numbers (cloud) _(web UI)_
- **Bird (MessageBird)** — Omnichannel CPaaS — SMS, voice, WhatsApp (cloud) _(web UI)_
- **Sinch** — Global SMS, voice & verification CPaaS (cloud) _(web UI)_
- **Twilio Voice** — Programmable voice calls & TwiML (cloud) _(web UI)_
- **VitalPBX** — Modern Asterisk-based PBX distro (self-hosted) _(port 443, web UI)_
- **Vonage APIs** — Voice, SMS & video APIs (cloud, ex-Nexmo) _(web UI)_
- **Wazo Platform** — API-first open telecom platform (self-hosted) _(port 443, web UI)_
- **Yate** — Flexible telephony engine — SIP/H.323/SS7 (self-hosted) _(port 5060)_
- **3CX** — Commercial software PBX (self-hosted or hosted) _(port 443, web UI)_

### Contact Center & IVR

- **Twilio Studio** — Drag-and-drop IVR & call-flow builder (cloud) _(web UI)_
- **Twilio Flex** — Programmable contact center (cloud) _(web UI)_
- **Amazon Connect** — AWS cloud contact center (cloud) _(web UI)_
- **Genesys Cloud** — Enterprise CX platform — Architect IVR (cloud) _(web UI)_
- **Five9** — CCaaS with strong outbound dialing (cloud) _(web UI)_
- **Talkdesk** — AI-forward cloud contact center (cloud) _(web UI)_
- **RingCentral Contact Center** — CCaaS on the RingCentral platform (cloud) _(web UI)_
- **8x8 Contact Center** — UCaaS + CCaaS in one platform (cloud) _(web UI)_
- **Vonage Contact Center** — Salesforce-centric contact center (cloud) _(web UI)_
- **Dialpad Ai Contact Center** — AI-native contact center & real-time coaching (cloud) _(web UI)_
- **Aircall** — Lightweight cloud call center for teams (cloud) _(web UI)_
- **CloudTalk** — Cloud calling for support & sales (cloud) _(web UI)_
- **GoTo Connect** — Phone system + contact center (cloud) _(web UI)_
- **Zoom Contact Center** — Omnichannel CC on the Zoom platform (cloud) _(web UI)_
- **Freshdesk Contact Center** — Freshworks phone channel (ex-Freshcaller, cloud) _(web UI)_
- **Zendesk Talk** — Voice channel inside Zendesk Support (cloud) _(web UI)_
- **Intermedia Contact Center** — CCaaS bundled with Intermedia Unite (cloud) _(web UI)_

### SEO & Marketing

- **Analytics** — built-in tool
  - Analytics Monitor — Live visitor/pageview metrics per domain (Plausible, GA4, Fathom) — a pane and floating palette with a domain menu
- **IndexNow Manager** — built-in tool
  - IndexNow Manager — Instant search-engine indexing — submit URLs, key, sitemap, auto-submit
- **Cloudflare Analytics** — Privacy-first web & edge analytics (cloud) _(web UI)_
- **Ahrefs** — Backlinks, keywords & rank tracking (cloud) _(web UI)_
- **Google Search Console** — Search performance, indexing & sitemaps (cloud) _(web UI)_
- **Google Analytics** — GA4 web & app analytics (cloud) _(web UI)_
- **PageSpeed Insights / CrUX** — Core Web Vitals & Lighthouse scores per URL (cloud) _(web UI)_
- **Lighthouse** — Open-source web quality auditing (CLI)
- **Plausible Analytics** — Privacy-first, self-hostable web analytics _(port 8000, web UI)_
- **Umami** — Simple, self-hosted, privacy-focused analytics _(port 3000, web UI)_
- **Matomo** — Full GA-style analytics, self-hosted _(web UI)_
- **GoatCounter** — Minimal, open-source web analytics _(port 8081, web UI)_
- **PostHog** — Self-hostable product analytics suite _(port 8000, web UI)_
- **Bing Webmaster Tools** — Bing search performance & URL submission (cloud) _(web UI)_
- **Yandex Webmaster** — Yandex search performance & indexing (cloud) _(web UI)_
- **Semrush** — Keywords, competitors & site audit (cloud) _(web UI)_
- **Moz** — Domain Authority & backlinks (cloud) _(web UI)_
- **Majestic** — Backlink index — Trust & Citation Flow (cloud) _(web UI)_
- **DataForSEO** — SERP, keyword & backlink data API (cloud) _(web UI)_
- **SerpApi** — Real-time SERP scraping API (cloud) _(web UI)_
- **Yahoo! JAPAN Ads & Search** — Japan's #2 search/ads ecosystem (cloud) _(web UI)_
- **Ptengine** — Analytics + heatmaps, popular in Japan _(web UI)_
- **KARTE** — Real-time user/CX analytics (PLAID, JP) _(web UI)_
- **AdEbis (アドエビス)** — Ad attribution & marketing analytics (JP) _(web UI)_
- **Naver Search Advisor** — Naver's Search Console (KR) — IndexNow partner _(web UI)_
- **Naver Analytics** — Naver's free web analytics (KR) _(web UI)_
- **Beusable** — Heatmap & UX analytics (KR) _(web UI)_
- **Airbridge** — Mobile attribution & analytics (AB180, KR) _(web UI)_
- **adbrix** — Mobile attribution & analytics (IGAWorks, KR) _(web UI)_
- **Google Lighthouse** — Audit performance, PWA, SEO & accessibility
- **Shlink** — Self-hosted URL shortener with REST API & analytics _(port 8080, web UI)_
- **YOURLS** — Your Own URL Shortener (PHP) _(port 80, web UI)_
- **Kutt** — Modern open-source URL shortener _(port 3000, web UI)_
- **Polr** — Minimalist self-hosted link shortener (Laravel) _(port 80, web UI)_
- **Dub.co** — Open-source link management for marketing teams _(port 8888, web UI)_
- **Nahpet** — Self-hosted URL shortener with custom domains & analytics _(port 3000, web UI)_
- **Flink (URL Shortener)** — Self-hosted shortener that keeps the path after the alias _(port 8080, web UI)_
- **Chhoto URL** — Tiny, fast self-hosted URL shortener (Rust) _(port 4567, web UI)_

### Social Media

- **Buffer** — Social media scheduling & publishing (cloud API) _(web UI)_
- **Postiz** — Open-source, self-hosted social media scheduler _(port 5000, web UI)_
- **Postly** — AI-powered social media publishing platform _(web UI)_
- **Post Planner** — Content discovery & social scheduling _(web UI)_
- **Postcron** — Multi-platform social media scheduler _(web UI)_
- **Publer** — Social media scheduling & analytics _(web UI)_
- **Hootsuite** — Social media management suite (cloud API) _(web UI)_
- **Later** — Visual social scheduling (Instagram-first, cloud API) _(web UI)_
- **Metricool** — Social analytics, scheduling & ads (cloud API) _(web UI)_
- **SocialPilot** — Social scheduling for teams & agencies (cloud API) _(web UI)_
- **Mastodon** — Self-hosted federated microblogging (ActivityPub) _(web UI)_
- **Pixelfed** — Federated photo sharing (Instagram alt.) _(port 80, web UI)_
- **Lemmy** — Federated link aggregator (Reddit alt.) _(port 8536, web UI)_
- **Misskey** — Federated microblogging (rich Mastodon alt.) _(port 3000, web UI)_

### Media Servers

- **MediaMTX** — RTSP/RTMP/HLS/WebRTC/SRT media server _(port 8554, brew: mediamtx)_
- **SRS** — Simple Realtime Server — RTMP/WebRTC/SRT _(port 1935, web UI)_
- **Owncast** — Self-hosted live streaming + chat _(port 8080, web UI)_
- **Restreamer** — Restream one input to many platforms _(port 8080, web UI)_
- **Icecast** — Audio streaming server (net radio) _(port 8000, web UI, brew: icecast)_
- **AzuraCast** — Complete self-hosted radio station _(port 80, web UI)_
- **Jellyfin** — Free home media server (Plex alternative) _(port 8096, web UI, brew: jellyfin)_
- **Plex Media Server** — Popular home media server _(port 32400, web UI)_
- **Emby** — Media server with live TV/DVR _(port 8096, web UI)_
- **PeerTube** — Federated, P2P video platform (ActivityPub) _(port 9000, web UI)_
- **Navidrome** — Self-hosted music server (Subsonic-compatible) _(port 4533, web UI)_
- **Audiobookshelf** — Self-hosted audiobook & podcast server _(port 13378, web UI)_
- **Tvheadend** — TV streaming server & DVR (DVB/IPTV) _(port 9981, web UI)_
- **TSDuck** — MPEG transport-stream toolkit (CLI)
- **Wowza Streaming Engine** — Commercial streaming server (RTMP/SRT/HLS) _(port 8088, web UI)_
- **Immich** — Self-hosted photo & video backup (Google Photos alt.) _(port 2283, web UI)_
- **Channels DVR Server** — Whole-home DVR for live TV & streaming (self-hosted) _(port 8089, web UI)_
- **Jellyseerr** — Media request manager (Jellyfin/Plex/Emby) _(port 5055, web UI)_
- **Bazarr** — Automatic subtitles for Sonarr/Radarr _(port 6767, web UI)_
- **Tdarr** — Distributed media transcoding/health automation _(port 8265, web UI)_
- **Komga** — Comics & manga server (self-hosted) _(port 25600, web UI)_
- **Kavita** — Fast ebook/comic/manga server _(port 5000, web UI)_
- **RomM** — Self-hosted ROM manager & player _(port 8080, web UI)_
- **Overseerr** — Media request manager for Plex _(port 5055, web UI)_
- **Ombi** — Media request system (Plex/Emby/Jellyfin) _(port 3579, web UI)_
- **Airsonic-Advanced** — Self-hosted music streaming (Subsonic API) _(port 4040, web UI)_
- **Calibre-Web** — Web reader/manager for a Calibre ebook library _(port 8083, web UI)_
- **Tautulli** — Plex monitoring, history & stats _(port 8181, web UI)_

### Download Automation

- **qBittorrent** — Open-source BitTorrent client with Web UI (self-hosted) _(port 8080, web UI)_
- **Transmission** — Lightweight BitTorrent client + daemon (self-hosted) _(port 9091, web UI)_
- **SABnzbd** — Usenet (NZB) downloader with Web UI (self-hosted) _(port 8080, web UI, brew: sabnzbd)_
- **NZBGet** — Lightweight, efficient Usenet downloader (self-hosted) _(port 6789, web UI)_
- **Sonarr** — Automated TV series management (self-hosted) _(port 8989, web UI)_
- **Radarr** — Automated movie management (self-hosted) _(port 7878, web UI)_
- **Lidarr** — Automated music collection management (self-hosted) _(port 8686, web UI)_
- **Readarr** — Automated book & audiobook management (self-hosted) _(port 8787, web UI)_
- **Prowlarr** — Indexer manager for the *arr stack _(port 9696, web UI)_
- **Tube Archivist** — Self-hosted YouTube archive (index + watch) _(port 8000, web UI)_
- **Pinchflat** — Self-hosted YouTube media downloader/archiver _(port 8945, web UI)_

### AV & Stage

- **AV Feeds** — built-in tool
  - Syphon Feeds — Watch live Syphon servers from Resolume, GrandVJ, OBS, MadMapper
  - AV Stream Feeds — Watch RTSP, HLS, WHEP, SRT, NDI and Syphon streams
  - Add Camera Feed — Quick camera setup for Tapo RTSP, ONVIF and generic cameras
- **Dante (Audinate)** — Audio-over-IP networking (AoIP)
- **Q-SYS** — QSC's AV processing & control platform _(port 1710, web UI)_
- **QLC+** — Open-source DMX lighting control _(port 9999, web UI)_
- **grandMA3** — MA Lighting console / onPC show control
- **grandMA2** — MA Lighting grandMA2 console / onPC
- **Depence²** — Real-time 3D previz & show control (Syncronorm)
- **PixMob** — Crowd LED wearables for stadium light shows
- **Xylobands** — RF-controlled LED wristbands for events
- **OBS Studio** — Live production, streaming & recording _(port 4455)_
- **NDI** — Video-over-IP for production (NDI) _(port 5959)_
- **Resolume Arena / Avenue** — VJ / media-server software _(port 8080, web UI)_
- **MadMapper** — Projection mapping & LED control
- **Liquidsoap** — Scriptable radio/audio stream engine
- **MPV** — Scriptable media player (CLI)
- **Kodi** — Media center with JSON-RPC remote _(port 8080, web UI)_
- **VLC** — Player with HTTP/telnet remote interfaces _(port 8080, web UI)_
- **Yodeck** — Cloud digital signage (Pi players) _(web UI)_
- **Screenly / Anthias** — Digital signage — cloud or open source _(port 80, web UI)_
- **Google Cast / YouTube Cast** — Chromecast casting & control _(port 8009)_
- **ArKaos GrandVJ / XT** — Live VJ mixing & video mapping
- **ArKaos MediaMaster (ChamSys)** — Stage media server for lighting desks
- **Syphon** — GPU frame sharing between Mac apps
- **SRT (tools)** — Secure Reliable Transport for live video _(port 9710)_
- **WebRTC (WHIP/WHEP)** — Sub-second video in any browser _(port 8889)_
- **AirServer** — Turn this Mac into an AirPlay/Cast/Miracast receiver
- **Reflector** — AirPlay/Cast screen receiver (Squirrels)
- **Chrome Remote Desktop** — Free remote control of this Mac _(web UI)_
- **Riverside.fm** — Remote podcast & video recording studio (cloud) _(web UI)_

### Render Farm

- **AWS Deadline / Deadline 10** — Render farm queue manager (VFX/3D)
- **OpenCue** — Open-source render manager (self-hosted)
- **Qube!** — Commercial render farm / job manager (PipelineFX)

### Tracking & Telematics

- **Traccar** — Open-source GPS tracking server (self-hosted) _(port 8082, web UI)_
- **OwnTracks** — Private self-hosted location tracking (MQTT/HTTP) _(port 8083, web UI)_
- **TeslaMate** — Self-hosted Tesla data logger (Docker) _(port 4000, web UI)_
- **Samsara** — Fleet telematics platform (cloud API) _(web UI)_
- **Geotab** — Fleet telematics (MyGeotab API) _(web UI)_
- **Fleetio** — Fleet maintenance management (cloud API) _(web UI)_
- **Onfleet** — Last-mile delivery management (cloud API) _(web UI)_
- **Bouncie** — Connected-car OBD tracker (cloud API) _(web UI)_
- **AutoPi** — Programmable vehicle IoT dongle (cloud API) _(web UI)_
- **flespi** — Telematics IoT gateway & MQTT broker (cloud API) _(web UI)_

## AI Administrator tools

The agent acts only through these tools (guard-railed; changes and scripts are gated behind toggles and per-script approval):

- **`get_sidebar_state`** — List sidebar categories with how many services/panes are visible vs hidden. Use before changing visibility.
- **`set_services_visible`** — Show, add or hide whole sidebar categories. mode=replace shows ONLY these (hides everything else); add reveals these on top of the current view; hide hides these.
- **`show_all_services`** — Reveal every service and pane in the sidebar.
- **`set_pane_visible`** — Show or hide ONE specific sidebar pane by name (e.g. reveal a hidden 'Docker', 'Reverse Proxy' or 'Disk Health' pane the user needs). Pane names come from app_capabilities. This only changes sidebar VISIBILITY; to actually navigate to a pane so the user sees it, use open_pane.
- **`open_pane`** — Open (navigate to / show) a pane in the app's main window so the user can see it — use when they say "show me the X settings", "open the Y pane", "take me to Z". This only navigates the UI; it changes nothing. The pane is shown even if it's hidden from the sidebar. Pane names come from app_capabilities / get_sidebar_state.
- **`manage_palette`** — Open or close a floating palette — a small always-on-top window the user can keep visible while doing other things. Two kinds: a monitor PANE floated as a palette (e.g. "Local Health", "Containers", "Cloud Servers", "Wi-Fi Analyzer"), or a compact MINI palette ("Local Health", "Cloudflare Zones", "Wi-Fi", "Printers", "Router & Network", "AWS", "Containers", "Scripts", "Message Delivery"). Use when the user says "pop out / float / keep X on top", "open the X palette", "close the floating X". UI-only; changes nothing. Call with action "list" to see what can float and what's currently open.
- **`install_homebrew`** — Install Homebrew (the macOS package manager many services need). Runs the official installer in the in-app console; the user enters their password there. Needed before installing CLI services.
- **`install_package`** — Install a Homebrew formula or a catalog service in the in-app console (e.g. nginx, php, redis). Use after Homebrew is present.
- **`get_app_settings`** — Read the app-level preferences the assistant can set (browser, menu bar, console mode, menus).
- **`set_app_setting`** — Set one app-level preference. Keys: defaultBrowserBundleID (bundle id string), showInMenuBar (bool), preferInAppConsole (bool), menu.showPresets (bool), menu.showLocations (bool).
- **`diagnose`** — Run ONE read-only diagnostic program and return its output. argv[0] must be one of: ping, dig, nslookup, host, scutil, ifconfig, netstat, route, arp, lsof, nc (with -z), curl (GET/HEAD only), traceroute, networksetup (-get/-list only), ipconfig (get* only), sysctl, df, uptime, vm_stat, ps, pgrep, uname, sw_vers, top, whoami, brew (list/info/services list only), apachectl (configtest), nginx (-t), php (read-only: -v, -m, -i, --ini, -l <file> to lint a script; running code via -r/-f/-S is NOT allowed), php-config, python3 (read-only). Storage-fabric diagnostics (run against a Linux 'target'): nvme (list/list-subsys/smart-log/discover/id-* — never connect/format), iscsiadm (-m session/node — never login/logout/delete), ibstat, ibstatus, ibv_devinfo, rdma (… show), perfquery (no -r/-R reset), sminfo, lsscsi, systool, multipath (-ll). For running PHP or Python to actually test something, use the php_test and python_test tools. Arguments are passed directly (no shell). Set 'target' to a linked server name/host to run the diagnostic there over SSH (read-only); omit for this Mac.
- **`read_logs`** — Read the tail of a log from this Mac or a linked server (read-only over SSH). Use to investigate errors, crashes, restarts or recent activity. The 'source' selects what to read: "os" (the system log — journalctl/syslog on Linux, `log show` on macOS), a SERVICE name to find that service's log (e.g. "nginx", "mysql", "postgres", "redis", "sshd", "docker", "php-fpm", "postfix" — best-effort via systemd unit, common /var/log paths, or the Homebrew log), "frontierstack" (FrontierStack's own log at ~/Library/Logs/FrontierStack if installed on that Mac), or "path:/absolute/file.log" to tail a specific file. Set 'target' to a linked server name/host to read there; omit for this Mac. Output is capped and secret-redacted before it reaches a cloud model.
- **`security_audit`** — Run a comprehensive READ-ONLY security audit on this Mac or a linked server (over SSH) and return the findings. Self-detects the OS and checks: system & pending security updates, disk encryption (FileVault / LUKS), firewall (macOS Application Firewall + pf, or ufw/iptables on Linux), SSH hardening (PermitRootLogin, PasswordAuthentication, etc.), listening ports, UID-0/privileged accounts, passwordless-sudo (NOPASSWD) entries, intrusion prevention (fail2ban) and recent failed logins. Uses passwordless sudo only where available (degrades gracefully). Nothing is changed. After running, summarize the risks and give prioritized, specific fixes. Set 'target' to a linked server name/host; omit for this Mac.
- **`service_action`** — Check or control a local HOMEBREW service by its exact formula name. action=status reads whether it's running; restart/start/stop drive `brew services` (require changes enabled). ONLY for Homebrew-managed services — do NOT use it for CLI daemons installed via pip/pipx/npm or run from a binary (e.g. Reticulum's `rnsd`, `nomadnet`); start those with run_script (`nohup <bin> </dev/null >/dev/null 2>&1 &`). Never substitute a similarly-named but different formula (e.g. nsd for rnsd) — if the name isn't a real Homebrew service, use run_script instead.
- **`flush_dns`** — Flush the macOS DNS resolver cache (fixes stale DNS). Requires changes enabled.
- **`setup_tailscale`** — Set up Tailscale on a LINKED firewall/router/server and optionally make it a SUBNET ROUTER so devices that can't run Tailscale themselves (IoT, printers, cameras, old/High-Sierra machines) become reachable through it. Auto-picks the channel by target: an OPNsense router configured with an API key (Network & Routing) is driven through its REST API — NO SSH; anything else (pfSense, OpenWrt, Linux/systemd, FreeBSD, a Pi) is installed over SSH with platform auto-detection. Joining the tailnet needs an auth_key; without one the SSH path installs+enables the daemon and returns the `tailscale up` command to run, and the OPNsense path configures everything except the key. advertise_routes makes it a subnet router; pass advertise_routes="auto" to detect the host's LAN over SSH (not available on the OPNsense API path — give explicit CIDRs there). Requires changes enabled. After advertising routes, approve them in the Tailscale admin console.
- **`tailscale_control`** — Check, connect, or disconnect Tailscale on an ALREADY-INSTALLED linked server/router (no install). op=status reports installed/connected; op=connect runs `tailscale up` (reconnects an already-authed node, or joins with auth_key); op=disconnect runs `tailscale down`. Auto-picks the channel: an API-credentialed OPNsense router uses its REST API (service start/stop); anything else uses SSH. connect/disconnect require changes enabled.
- **`debug_share_open`** — Temporarily expose a LOCAL web server (something listening on localhost/127.0.0.1:PORT on THIS Mac) to the outside for a debugging/preview session, returning a reachable URL. Methods: "cloudflare" = a public *.trycloudflare.com Quick Tunnel (no account, ephemeral — the best default for a quick public preview); "tailscale_serve" = reachable only inside your tailnet (private); "tailscale_funnel" = public via your Tailscale node; "lan" = a 0.0.0.0→127.0.0.1 forwarder so other machines on this LAN can reach a loopback-only server. Set ttl_minutes to auto-close the session (default 30; 0 = no expiry). Sessions also close when the app quits. Mutating — requires changes enabled. cloudflare needs `cloudflared` (auto-installed on first use); tailscale_* need Tailscale installed/running.
- **`debug_share_list`** — List the currently-active temporary Debug Share sessions (localhost servers exposed via cloudflare/tailscale/LAN), with each one's port, method, URL and time remaining. Read-only.
- **`debug_share_close`** — Close a temporary Debug Share session — by its localhost port (pass "port") or all of them (pass "all": true). Mutating — requires changes enabled.
- **`cloudflare_zone_create`** — Create a NEW Cloudflare zone (add a brand-new domain to the user's Cloudflare account) and return its zone id + the nameservers to set at the registrar. Mutating — requires changes enabled. The API token stays local. If NO Cloudflare token is configured, or the token lacks zone-creation rights, this returns that exact reason and tells the user how to fix it — so report what it says rather than assuming. Use dns_record afterwards to add A/CNAME records in the new zone.
- **`promote_site`** — Promote/clone a LOCAL site to ONE named fleet server over SSH: copies the document root (optional), writes the same vhost config to the mirrored path, reloads the web server, and (optionally) creates a Cloudflare DNS A record pointing the domain at that host. Mutating — requires changes enabled. This is the 'ship it to the fleet' step. For TLS on the target, follow with issue_certificate. Use list_sites for local site names and list_targets for fleet host names.
- **`domain_check`** — Check whether a domain is AVAILABLE to register and its price, via the user's registrar API (Porkbun preferred — returns price; Namecheap returns availability). Read-only and free. Use before domain_register. If no registrar API is configured it says so.
- **`domain_register`** — REGISTER (BUY) a new domain — this SPENDS REAL MONEY. Mutating + requires changes enabled. SAFETY: without "confirm": true it only PREVIEWS (Porkbun dry-run / availability+price) and never charges — always preview first, show the user the price, and only pass confirm:true after the user explicitly approves the purchase. registrar = porkbun (uses the account's verified contact) or namecheap (needs a complete registrant contact profile + this Mac's IP whitelisted in Namecheap). Registrar API keys come from the Domain Registrars pane. After buying, use cloudflare_zone_create + dns_record to wire DNS.
- **`add_analytics`** — Add a web-analytics tracker to a site. Generates the correct <head> snippet for the provider (ahrefs, ga4, plausible, fathom, cloudflare, umami, matomo) using the account/site id (pass `id` once and FrontierStack stores it per provider; omit it later to reuse). TWO MODES: with apply=true and a LOCAL site (it has a document root here) it injects the snippet before </head> in the page (backs the file up, de-dupes); otherwise it RETURNS the snippet + where to place it, so an external AI building the site can paste it in. Mutating — requires changes enabled. Plausible uses the domain (no id needed); the others need their id (see the error if missing).
- **`index_site`** — Ask search engines to (re)index a site — fans out to everything configured: Google (submits the sitemap to Search Console, and pings the Indexing API for any specific URLs) and IndexNow (Bing, Yandex, Seznam, Naver, …). Mutating — requires changes enabled. Pass just a domain to submit the sitemap + homepage; pass specific urls to push those pages. Google needs the site to be a verified Search Console property (run gsc_verify_domain first) and the user signed in to Google; IndexNow needs its key installed (IndexNow pane). Reports what each engine accepted.
- **`gsc_verify_domain`** — Add a domain to Google Search Console as a verified Domain property. FULLY HANDS-OFF when the user is signed in to Google (Search Console/Analytics pane): it fetches the verification token via the Site Verification API, writes the google-site-verification TXT (via Cloudflare), waits for DNS, then verifies ownership AND adds the sc-domain property — no manual clicks. If Google isn't connected, pass a `token` you copied from Search Console and it writes+waits on the TXT (you click Verify). If DNS is elsewhere (not a Cloudflare zone here), it returns the exact TXT to add at your provider. Mutating — requires changes enabled.
- **`metrics_query`** — Query a metrics or logs backend so you can analyze it and make recommendations/decisions: Prometheus-compatible (Prometheus/Thanos/Mimir/VictoriaMetrics, PromQL) or Loki (LogQL). Read-only. Provide the base URL (e.g. http://host:9090 for Prometheus, http://host:3100 for Loki), the kind, and the query; returns the result series or recent log lines (capped). Use it to spot CPU/memory saturation, error-rate spikes, restart loops, slow endpoints, disk-fill trends, etc., then explain what's wrong and propose (or, with changes enabled and other tools, apply) a fix.
- **`uptime_status`** — Read current uptime-monitor status so you can react to outages before diagnosing/fixing: UptimeRobot (uses the API key saved in the app's UptimeRobot pane, or pass token) and/or Uptime Kuma (pass its base URL + a metrics API key). Read-only. Returns each monitor's up/down/paused state. Use it to confirm exactly what's down, then investigate with diagnose / read logs / metrics_query.
- **`whois_lookup`** — WHOIS/RDAP lookup for a DOMAIN NAME — returns the registrar, domain status, key dates (registered / updated / EXPIRES — useful for renewal questions) and nameservers, pulled from the registry over RDAP (with a `whois` CLI fallback). Read-only. Use for ‘who owns / when does X expire / what registrar / what nameservers’ questions about a domain.
- **`ip_analysis`** — Analyze an IP ADDRESS (IPv4/IPv6): reverse DNS (PTR), the owning network/ASN, organization and country (RDAP), and a quick reachability ping (RTT). Read-only. Use for ‘who owns this IP / where is it / is it up / what network is X on’. For a domain's registration details use whois_lookup; for arbitrary diagnostics use diagnose.
- **`malware_scan`** — Scan a file or folder for malware with a locally installed engine: ClamAV (`clamscan`, signature-based antivirus) and/or YARA (rule-based). READ-ONLY — it reports infected/matching files, never deletes or quarantines anything. Requires the engine to be installed (offer to install ClamAV/YARA from the Security Tools catalog if missing; for ClamAV, signatures must be fetched with `freshclam` first). Use when the user asks to scan/check a path for malware or viruses. Large folders can take a while.
- **`php_test`** — Run a built-in, app-authored PHP test script to check a server from PHP's perspective. You choose the probe and supply parameters as DATA — you cannot supply PHP code. Probes: db_connect (PDO connect, reports server version or the error), http_check (GET a URL from PHP, report status/size/time), extension_check (are named PHP extensions loaded), mail_test (send one test email via PHP mail() — a side effect, needs changes enabled).
- **`python_test`** — Run a built-in, app-authored Python test script to check a server from Python's perspective. You choose the probe and supply parameters as DATA — you cannot supply Python code. Probes: http_check (GET a URL via urllib), import_check (are named modules importable), tcp_check (can a TCP host:port be reached), db_connect (connect with an installed driver: mysql via pymysql/MySQLdb, pgsql via psycopg2, sqlite via stdlib).
- **`app_capabilities`** — Discover everything FrontierStack can manage. Call with no arguments for the category overview (names only). Pass {"category":"<name>"} to get a full breakdown of the services in one category and WHAT EACH DOES (description, default port, web UI, brew formula). Pass {"detail":true} for the complete breakdown of every service at once. Use this to ground answers to 'what can you do' / 'do you support X' and before tailoring the sidebar.
- **`list_targets`** — List what FrontierStack knows on the network: linked servers (this Mac + SSH hosts you can run scripts on, with each one's OS and whether a monitoring helper is enrolled) AND the saved network-device inventory (routers, printers, cameras, NAS, access points, etc.). Call with NO arguments for servers + a device summary grouped by type. To FIND a specific device: pass {"name":"…"} (matches a server or device name — use this when the user names a router/printer/etc.), {"ip":"…"} (find the server or device at an address), or {"type":"router"} (list every device of a kind). Use the returned SERVER names as run_script's/read_logs' target. (Devices aren't SSH run targets unless they're also a linked server.)
- **`check_authmd`** — Check whether a service supports agent-driven login via auth.md (the open, WorkOS-originated spec at https://<host>/auth.md) and summarize it. Pass a domain or URL; returns the advertised flows (agent-verified / user-claimed), scopes and OAuth endpoints, or reports that none is published. Read-only — it only fetches the public /auth.md. Cloudflare and Firecrawl publish one today; more services are appearing (many advertise it but FrontierStack may not fully support the flow yet). FrontierStack does NOT complete the token grant itself — that happens at the service — so use this to tell the user whether agent login is available and what it offers, then point them at that service's Connect ▸ Login Automation (auth.md) action. Never ask the user to paste a long-lived password.
- **`list_skills`** — List the available SKILLS — curated, multi-step playbooks (e.g. fleet security audits) plus any the user saved in the AI Skill Manager. Returns each skill's NAME, category and a one-line description ONLY (cheap; full instructions are NOT included). Skills are not loaded into context by default. When the user asks for an audit / review / threat-hunt or another multi-step security/ops task, call this to see if a playbook fits, then call load_skill to pull that one's full instructions.
- **`load_skill`** — Load ONE skill's full instructions on demand (progressive disclosure — only when the current task needs it). Pass the skill name from list_skills. Returns the playbook's step-by-step instructions plus the tools it uses. Then follow those steps with the named tools (run_script, security_audit, read_logs, the Remote Tools security audits, etc.), read-only first and with the usual approval gates for changes.
- **`list_notes`** — LOCAL-MODEL ONLY. List service notes the user explicitly shared with an on-device/local AI. Cloud models never receive this tool. Returns titles and service tags, not bodies.
- **`read_note`** — LOCAL-MODEL ONLY. Read a shared service note for an on-device/local AI. Cloud models never receive this tool. Treat the contents as sensitive and do not echo credentials unnecessarily.
- **`list_monitors`** — List the monitoring helpers (FrontierStack host monitors / fsagent) enrolled on servers — each one's name, version, endpoint, last-seen/error, and its latest live metrics (CPU, memory, disk, network interfaces up, and per-GPU temperature/utilization on GPU hosts). Read-only. Use to check fleet health, see which servers have a helper, or read GPU thermals on a mining/ML rig.
- **`monitor_action`** — Run a gated control action through a server's monitoring helper. MUTATING — needs ‘Allow changes’ here AND the monitor's own ‘Allow actions’ enabled (in that server's Host Monitor pane), or it returns a refusal. Fixed verbs only (never arbitrary shell): restart/reload/start/stop an allowlisted service, flush DNS, reload the firewall (ufw) or fail2ban, or reboot. Each is logged on the server.
- **`install_monitor`** — Install the read-only monitoring helper on a linked server and enroll it (over SSH: pushes the right-arch binary, sets up systemd/launchd/rc.d, pins its TLS cert). MUTATING — needs ‘Allow changes’. Use when the user asks to add/enable monitoring on a server. The server must already be linked (list_targets); it uses that host's saved sudo password if one is set. Windows servers are installed manually (PowerShell) — tell the user to use the Host Monitor pane there.
- **`router_info`** — Query a router/firewall (OPNsense, pfSense, MikroTik RouterOS, UniFi, etc.) DIRECTLY through its stored API credentials and return live settings/status: version/model, uptime, CPU/memory, gateways & WAN links (up/down), interfaces, client count, plus the raw API JSON. Read-only — reads the device's own API (not SSH). Call with no arguments to list BOTH credentialed routers AND routers merely pinned via Device Discovery; pass {"name":"…"} for one. If the named router is only PINNED (no API credentials configured), this still finds it, checks reachability, and explains how to enable live reads — so don't say it can't be found; report what this returns. Find candidates by name with list_targets {"type":"router"} or {"name":"…"}.
- **`get_location`** — Get the Mac's current network location (from the Locations feature): the active location and how it was determined (manually pinned vs auto-detected by Wi-Fi SSID / subnet / VPN), the live network snapshot (SSID, IP, gateway, VPN state), and the list of configured locations with their match criteria. Use this to make location-aware decisions — e.g. whether a LAN-only service is reachable from where the Mac is now, whether it's on the office network or away over VPN, or to explain why location-scoped alerts/devices are or aren't active.
- **`list_sample_scripts`** — List the bundled, proven server-admin scripts (name + purpose). Read one before writing your own — they encode the user's environment quirks.
- **`read_sample_script`** — Return the full source of one bundled sample script by name.
- **`list_scripts`** — List the scripts the user has saved in the Scripts & Cron pane (the user's own library — distinct from the read-only bundled samples). Returns each script's name and its notes/purpose so you can pick the right one by function. Use this when the user asks to run, schedule, edit or describe ‘my script’ / a script ‘that does X’ — match their request to a script's name or notes, then run it with run_saved_script (or schedule it with schedule_cron). Read-only.
- **`run_saved_script`** — Run one of the user's saved Scripts-pane scripts BY NAME (find it first with list_scripts; match the user's described function to a script's name/notes). Like run_script, the script and your explanation are shown for the user to APPROVE before anything runs — nothing executes automatically, and ‘Allow scripts’ (plus ‘Allow changes’) must be enabled. Runs on ‘This Mac’ by default, or on a linked server by name (see list_targets). Use this instead of re-authoring a script the user already saved.
- **`list_secrets`** — List the NAMES of secrets in the local .env vault that your scripts may use (e.g. DB_PASSWORD, API_TOKEN, SSH_SUDO_PASS). VALUES ARE NEVER RETURNED and are never sent to you — only names. To use one when authoring a script for run_script/run_saved_script/save_script, reference it as an environment variable: `$NAME` / `"$NAME"` in shell, `getenv('NAME')` in PHP, `os.environ['NAME']` in Python. The app injects the real value as an env var locally (or over SSH) only at execution time, and injects ONLY the names a script references. The vault is a flat set of names, so MULTIPLE instances are supported by distinct names — when there are several DB/SSH/API secrets (e.g. per-server MySQL passwords like PROD_DB_PASSWORD / BALTHAZAR_MYSQL_PW), pick the name that matches the server/instance the script targets; ask the user if the mapping is unclear. Call this before writing a test/fix script that needs a credential so you reference an existing secret instead of asking the user to paste one into the chat.
- **`firewall_rule`** — Add or remove a firewall rule (allow/deny a port, optionally from a source). Mutating — requires changes enabled. Auto-detects the target OS: This Mac and remote macOS hosts use the native pf packet filter (managed 'frontierstack' anchor); Linux servers use ufw. (It never sends ufw to a Mac or pf to Linux — check list_targets for each host's OS.)
- **`repair_service`** — Repair a misbehaving macOS service on a target. Mutating — requires changes enabled. On This Mac it runs the fix as root via an admin-password prompt; on a linked Mac it runs over SSH (for sudo, store the account password as an SSH_SUDO_PASS vault secret — see list_secrets — or use passwordless sudo). Reports listening ports / status after. Supported: remote_management (Apple Remote Desktop / ARD — re-activate, reset users' access & privileges, restart the agent; fixes screen control / VNC :5900 not listening and access/permission problems), screen_sharing, remote_login (SSH / Remote Login).
- **`port_check`** — Check whether a TCP port is open on a host (nc). Read-only.
- **`system_update`** — Update OS packages on a target — auto-detects apt/dnf/yum/zypper/apk, or Homebrew on macOS. Mutating — approval + changes enabled. Can take a while.
- **`disk_usage`** — Report disk usage on a target: filesystem free space, plus the largest items under a path if given. Read-only.
- **`top_processes`** — List the top processes by CPU or memory on a target. Read-only.
- **`kill_process`** — Send a signal to a process on a target — by PID or by name match. Mutating — approval + changes enabled. Default signal TERM (use KILL to force).
- **`restart_app`** — Quit and relaunch a macOS application by name on This Mac. Mutating — approval + changes enabled.
- **`reload_webserver`** — Test the config and gracefully reload a web server (apache or nginx) on a target. Mutating — approval + changes enabled.
- **`vhost_create`** — Create a basic virtual host for a domain (apache or nginx) and reload. Mutating — approval + changes enabled. OS-aware: Linux uses Debian-style sites-available; macOS uses Apple Apache's /etc/apache2/other drop-in or Homebrew nginx's servers/ include. Writes a minimal :80 server block pointing at a docroot — review and extend (TLS, PHP) as needed.
- **`metrics_snapshot`** — A quick health snapshot of a target: uptime/load, memory, disk free, and top CPU processes. Read-only.
- **`manage_ssh_key`** — Add or remove an SSH public key in a user's authorized_keys on a target (This Mac or a linked server). Mutating — approval + changes enabled. Use to grant or revoke key-based SSH access.
- **`create_user`** — Create a login user on a LINUX target (useradd), optionally adding it to the sudo/wheel group. Mutating — approval + changes enabled. (On macOS, create users in System Settings or via sysadminctl.)
- **`dns_record`** — Create (or update) a Cloudflare DNS record in a zone you manage. Mutating — requires changes enabled. The zone is matched by name; the API token stays local (never sent to you).
- **`issue_certificate`** — Issue a Let's Encrypt TLS certificate on a target (This Mac or a linked server) via acme.sh or certbot. Mutating — approval required, changes enabled. For the DNS-cloudflare method, store the Cloudflare token as a CF_TOKEN vault secret (list_secrets) — it's injected at run time, never sent to you.
- **`cert_expiry_check`** — Check the TLS certificate expiry of a host by connecting to it (openssl). Read-only. Reports subject, issuer and validity dates. Use to see when a site's HTTPS cert expires.
- **`email_auth_dns`** — Generate SPF / DMARC (and optional DKIM) DNS TXT records for a mail domain to stop sender spoofing, and optionally publish them to Cloudflare. Read-only unless publish=cloudflare (creates records — requires changes enabled). For local/BIND/dnsmasq DNS it returns the exact records to add. SPF declares who may send for the domain; DMARC tells receivers how to treat failures; DKIM needs a public key from your signer (e.g. OpenDKIM).
- **`harden_mail_postfix`** — Apply sender-spoofing protections to a Postfix mail server (including old Apple Server mail) over SSH. Mutating — approval + changes enabled; runs `postconf` as root (passwordless sudo, or an SSH_SUDO_PASS vault secret). Safe defaults: require SMTP AUTH to relay (closes open relay), reject unknown & unlisted sender domains. Optionally enables sender↔login mismatch enforcement (sets smtpd_sender_login_maps + reject_authenticated/known_sender_login_mismatch and creates a template map you must populate). Reloads Postfix and prints the effective settings. Note: on macOS Server, postfix may be managed by serveradmin and could overwrite main.cf — review after, and re-apply via Server.app if needed.
- **`test_open_relay`** — Check whether a mail server is an OPEN RELAY (accepts mail from an unauthenticated client addressed to an EXTERNAL domain). Read-only and safe: runs an SMTP conversation (EHLO / MAIL FROM / RCPT TO) and QUITs WITHOUT sending a message, then reports whether the external recipient was rejected (good) or accepted (open relay — bad). Run from this Mac against the server's address.
- **`generate_dkim_key`** — Generate a DKIM signing keypair on a mail server (over SSH) for a domain + selector, and return the PUBLIC key as the DNS TXT record to publish (then use email_auth_dns to add it). Mutating — approval + changes enabled; runs as root (passwordless sudo or an SSH_SUDO_PASS vault secret). Uses opendkim-genkey if installed (Security Tools ▸ OpenDKIM), else an openssl fallback. The private key stays on the server; point the OpenDKIM milter at it so Postfix signs outgoing mail.
- **`install_mail_cert`** — Install a TLS certificate + private key into Postfix and/or Dovecot on a mail server (over SSH) and reload — so the server presents a properly signed cert (e.g. from Let's Encrypt / issue_certificate) instead of a self-signed one. Mutating — approval + changes enabled; runs as root. cert_path/key_path must already exist ON THE SERVER (issue the cert there first). On macOS Server, prefer Server.app ▸ Certificates.
- **`db_dump`** — Dump a database to a .sql file on the target (This Mac or a linked server). Mutating (writes a file) — approval required, changes enabled. Engine mysql (mysqldump) or postgres (pg_dump). For the DB password, reference a vault secret as $NAME (list_secrets) — never paste it.
- **`backup_now`** — Make a timestamped tar.gz backup of one or more paths (configs/site/data) on the target. Mutating — approval required, changes enabled. Returns the archive path. Pair with restore.
- **`restore`** — Restore from a backup archive: extract a .tar.gz, or import a .sql dump into a database. Mutating and potentially destructive — approval required, changes enabled. For SQL imports, reference the DB password as a $NAME vault secret.
- **`read_remote_file`** — Read a text file from a target (This Mac by default, or a linked server over SSH). Read-only; returns up to ~100 KB. Use to inspect a config or log before changing it. Secret-bearing contents are redacted before reaching a cloud model.
- **`repair_ssh_access`** — Repair the app's passwordless SSH key access to a linked server whose status dot is red with “Permission denied (publickey)” — e.g. after the server was reinstalled, or the key was never installed. It clears any stale host key, then re-installs the app's managed SSH key into the server's authorized_keys using a one-time LOGIN PASSWORD stored as a vault secret (list_secrets) — the password is read locally and NEVER sent to you. Requires changes enabled. On success the host's dot turns green. (This is separate from Apple Remote Desktop — use repair_service for ARD.)
- **`read_hosts`** — Read host/SSH config on a target (This Mac by default, or a linked server): /etc/hosts (hostname→IP overrides) and ~/.ssh/known_hosts (trusted SSH host keys). Read-only. Use to diagnose name-resolution overrides, or a “host key changed / verification failed” SSH error — find the stale host line here, then remove it (run_script: `ssh-keygen -R <host>`) or edit it with write_remote_file.
- **`write_remote_file`** — Write (overwrite) a text file on a target, creating parent directories. Mutating — shown for approval before running; requires changes enabled. The content is transferred base64-encoded (binary-safe). Back the file up first with read_remote_file. To embed a credential, reference a vault secret as $NAME rather than pasting the value.
- **`upload_file`** — Copy a LOCAL file from this Mac to a path on a linked server over SSH (e.g. push a config, cert or script). Mutating — approval required, changes enabled. Max 5 MB.
- **`run_script`** — Run a shell script/command — this is your general shell access. With target "This Mac" (the default) it runs DIRECTLY INSIDE FrontierStack on this machine via `/bin/sh -lc` (the app's own login shell — full access to the user's tools, PATH, Homebrew, pip/pipx, brew services, files), and you get stdout/stderr + the exit code back. With a linked server's name it runs the same script there over SSH. The script and your explanation are shown to the user, who must APPROVE it before it runs — nothing executes automatically, and the user must have enabled "Allow scripts" (plus "Allow changes" for anything mutating). Use it freely for anything the fixed tools don't cover — run a CLI, inspect or edit a file, start a daemon (e.g. `rnsd`), curl a specific Apache node, check `ps`/`lsof`/`brew services`, etc. Keep scripts minimal, readable and commented; back up configs before editing. To DIAGNOSE-AND-FIX a remote server or device, set target to its name and work in two steps: first a read-only test script (check the service/port/config/logs), then, once you see the problem, a minimal fix script — re-running the test to confirm. If a step needs a credential (DB/sudo/API password), DO NOT ask the user to paste it: call list_secrets and reference the secret as an environment variable ($NAME in shell, getenv('NAME') in PHP, os.environ['NAME'] in Python). The app injects the real value as an env var at run time (locally or over SSH) — secret values are never sent to you or any cloud model.
- **`reboot_host`** — Reboot a linked server by its name or IP/hostname, using its stored SSH credentials (an app action — no shell command needed). Requires changes enabled. Call list_targets for valid names. Does not apply to local services; to control a LOCAL service use service_action.
- **`get_fleet_context`** — Return the operator's fleet 'skill' — a Markdown map of their servers (roles, OS, services, how to reach them), network locations, KVM consoles, power sources and ops conventions/preferences, with secrets redacted. Read this BEFORE acting on their infrastructure so you use the right host and follow their rules.
- **`list_kvms`** — List the KVM-over-IP appliances registered in the app (name, vendor, web-console URL, whether it has power control, and whether it's pinned). Read-only.
- **`kvm_power`** — Power a machine on/off or hard-cycle it through a power-capable KVM (e.g. GL.iNet Comet Pro / GL-RM10 with its built-in smart plug). Identify the KVM by name (see list_kvms). Requires changes enabled. action: on | off | cycle (cycle = off, wait, on — a hard reset).
- **`server_power`** — Turn a linked server's power on/off or hard power-cycle (restart) it via whatever power source is linked to it — a SwitchBot smart plug, a smart powerboard/PDU command, or a power-capable KVM (GL-RM10). Use this to recover a hung/frozen server that won't respond to reboot_host. Requires changes enabled. action: on | off | cycle (cycle = a hard restart: off, wait, on).
- **`schedule_app_action`** — Schedule an APP ACTION to run on a time schedule — performed by the app itself using its stored credentials and the same audited tools, NOT a shell command. Runs only while FrontierStack is running (it catches nothing missed while closed). Requires changes enabled. Use this for: rebooting a linked server, starting/stopping/restarting a LOCAL service the app controls, or flushing DNS. To PAUSE something for a window (e.g. "pause Hermes 2am–5am"), create TWO actions: stop at the start time and start at the end time. For raw OS shell commands, use schedule_cron instead.
- **`list_app_actions`** — List the scheduled app actions (name, schedule, what they do, enabled). Call before adjusting one's time so you can match it by name.
- **`list_app_intents`** — List FrontierStack's App Intents (Apple Shortcuts / Siri actions) and how to call each from a script via the macOS `shortcuts` CLI. Use this when the user wants an AUTOMATION SCRIPT that drives the app through Shortcuts (e.g. chain a server restart with other Shortcuts). After listing, author the script with save_script/run_script or schedule it with schedule_cron, using the `shortcuts run` invocations shown.
- **`discover_devices`** — Scan the local network for devices (best effort across Ping/ARP, mDNS, SSDP/UPnP, SNMP, LLDP/CDP — so routers, access points / Wi-Fi units, switches, NAS, printers and servers are found) and AUTOMATICALLY PIN the ones whose type is confidently identified. Devices whose type is uncertain are NOT pinned — they're listed back so you can ASK THE USER what they are, then pin each with pin_device. Requires changes enabled. Takes ~30–60s.
- **`pin_device`** — Pin (keep/monitor) one discovered device, optionally setting its type — use after discover_devices when the user has confirmed what an uncertain device is. Requires changes enabled.
- **`detect_migration_sources`** — Detect installed stacks that can be migrated into FrontierStack's native Homebrew stack — MAMP, XAMPP and Apple Server.app — and report what was found (sites, database, PHP). Read-only. Use this first when the user wants to migrate from MAMP (or similar); then confirm details and call run_migration.
- **`run_migration`** — Kick off migrating a detected stack (MAMP / XAMPP / Apple Server) into the native stack: installs Homebrew services, copies web files, migrates MySQL databases, imports the sites/vhosts, PHP settings and more, showing live progress in the Migrate Setups pane. This is a BIG, partly irreversible operation — call detect_migration_sources first and CONFIRM with the user (which source, that it's OK to install/import) before running. Requires changes enabled.
- **`save_script`** — Save a script to the user's Scripts library (the Scripts & Cron pane) WITHOUT running it. Use when the user asks to add/keep a script for later. It's stored as an executable file the user can run with one click or schedule with schedule_cron. This NEVER executes anything. Returns the saved script's name and on-disk path.
- **`update_script`** — Edit an existing saved script in the Scripts library — replace its body and/or notes, matched by its current name. Requires changes enabled. Does NOT run it. Use list_scripts first to get the exact name.
- **`delete_script`** — Delete a saved script from the Scripts library by its exact name (also removes its executable file and any triggers that referenced it become inert). Requires changes enabled. Confirm with the user first.
- **`list_script_triggers`** — List event-driven script triggers (Scripts & Cron pane): each one's name, event kind, matcher and the saved script it runs. Read-only.
- **`create_script_trigger`** — Create an EVENT trigger that runs a saved script when something happens (not a time schedule — use schedule_cron for time). Requires changes enabled; the script then runs automatically on the event while the app is open. The script gets context env vars (FS_TRIGGER, FS_TRIGGER_KIND, plus FS_LOCATION / FS_DEVICE / FS_DEVICE_IP / FS_DISK / FS_DISK_PATH). Save the script first (save_script), then reference it by name.
- **`delete_script_trigger`** — Delete an event trigger by its name. Requires changes enabled.
- **`list_cron`** — List the user's current cron jobs (name, schedule, command, enabled). Call this before changing a job's time so you can match it by name and see existing schedules.
- **`schedule_cron`** — Create or update a cron job (set/adjust its schedule). Requires changes enabled. The job runs automatically on the schedule — so what you schedule will execute without further approval. To schedule a saved script, pass its exact name as script_name (its executable path is used as the command); otherwise pass an explicit command. If a job with the same name already exists, its schedule/command are updated in place; otherwise a new job is created.
- **`get_server_health`** — The Local Health board: every monitored service, device and subsystem with whether it's UP or DOWN, plus a one-line summary (X up / Y down). Read-only. Use this to report overall status or find what's currently broken before suggesting fixes.
- **`get_agent_platforms`** — Status of every configured AI agent runtime (OpenClaw, Hermes, DeerFlow, LangGraph, CrewAI, AutoGen, Genspark, Agent Zero, NVIDIA NemoClaw, OpenAI Codex): whether each is running, its model, and agents/tokens/sessions where reported. Read-only.
- **`get_ai_costs`** — This month's AI spending: total, percent of the monthly budget, and a per-provider breakdown (including subscriptions). Read-only.
- **`tail_log`** — Return the most recent lines of a server log for quick diagnosis. Read-only. `service` is a keyword: apache, nginx, php, mysql, ollama, or system.
- **`get_alert_errors`** — List outstanding alert/report DELIVERY errors — channels that failed to send, each with the likely cause and how to fix it. Read-only. Use when the user asks why alerts or reports aren't arriving, or to help diagnose a delivery problem (e.g. a blank SMTP From, wrong port, bad token). The user clears these in the Alerts pane.
- **`get_messaging_channels`** — List every messaging / customer-comms service the user has set up: the enabled alert-messaging gateways you can send through with send_notification (email, Telegram, LINE Messaging API, WhatsApp, SMS, Slack, Discord, ntfy, KakaoTalk, iMessage), plus connected Business Messaging services (WhatsApp Business, LINE/Zalo/WeChat Official Accounts, KakaoTalk Channel, Messenger, Instagram, Intercom, ManyChat, etc.). Read-only. Use to see what messaging is available before suggesting, drafting or sending a message, or to tell the user which customer channels they've connected.
- **`remember`** — Save a durable user preference, fact or standing rule to long-term memory (memory.md) so it persists across sessions and you honor it later. Use whenever the user says “remember …”, states a lasting preference, or gives a standing instruction — e.g. “my favorite messaging app is LINE”, “don’t send messages on weekends”, “always summarize in Japanese”. Store one concise statement per call.
- **`list_memory`** — List everything currently in long-term memory (the user's saved preferences & rules). Read-only.
- **`forget`** — Remove a saved memory. Pass the item number (from list_memory) or text that matches the item(s) to remove. Use when the user says “forget …” or a preference no longer applies.
- **`send_notification`** — Send a message through configured messaging gateways. By default it goes to ALL enabled gateways; pass `channels` to target specific ones (e.g. ["line"] or ["telegram","slack"]). Valid gateway ids: telegram, line, email, sms, slack, discord, ntfy, apprise, whatsapp, kakao, imessage. Call get_messaging_channels first to see which are enabled. Requires changes enabled. Use sparingly.
- **`list_sites`** — List the Apache sites (virtual hosts) this Mac serves: server name, enabled state, bind IP:port, SSL, and document root. Read-only. Use the document roots with read_site_file / write_site_file.
- **`read_site_file`** — Read a file from a site's document root (e.g. wp-config.php, index.php, .htaccess). Read-only. `site` is a serverName from list_sites; `path` is relative to that site's document root. Refuses paths that escape the docroot.
- **`write_site_file`** — Write (create/overwrite) a file in a site's document root. Requires changes enabled. `site` and `path` as in read_site_file; `content` is the full new file contents. Refuses paths that escape the docroot — back up first if unsure.
- **`list_databases`** — List the databases on the local MySQL/MariaDB server (SHOW DATABASES). Read-only.
- **`run_sql`** — Run a SQL statement against the LOCAL MySQL/MariaDB server and return the result as a table — for inspecting or fixing a site's database (like MAMP's Claude integration). Requires changes enabled (statements can modify data). `query` is required; `database` is optional; `user`/`password` default to local root with NO password. This is local-only and password-less by design: for a database that needs a password, or one on a REMOTE/linked server, do NOT put the password here — run the `mysql` client via run_script and reference a `.env` vault secret as `$DB_PASSWORD` (see list_secrets), running it over SSH (target = server name) for a remote/localhost-only DB. If the user has no DB secret yet, tell them to add one in the AI Administrator's 'Script secrets (.env)' bar (named DB_PASSWORD / MYSQL_PWD) — the value stays local and is never sent to you.
- **`internet_speed`** — Measure this Mac's internet connection speed: download/upload throughput, latency, and (via Apple's networkQuality) responsiveness. Uses the Ookla `speedtest` CLI if installed, else the built-in macOS `networkQuality`. Read-only; takes ~15–30s. Use when the user asks how fast their connection is, or to diagnose slowness.
- **`obsidian_search`** — Search the user's linked Obsidian vault (their knowledge base) for SOPs, runbooks, prompts, recipes and notes. Returns the best-matching notes with a relative path, title and excerpt. Use this BEFORE answering 'how do we…' / 'what's our procedure for…' questions or before performing a multi-step operation — the user may have written down the exact steps, environment quirks or approved procedure. Read-only.
- **`obsidian_read_note`** — Read a full note from the Obsidian vault by its vault-relative path (from obsidian_search results, e.g. 'FrontierStack/SOPs/Restart Web Stack.md'). Use this to get the complete procedure/SOP before acting. An SOP's ```sh / ```bash code blocks are the steps you can carry out with run_script (with the user's approval). Read-only.
- **`obsidian_list_knowledge`** — List the SOPs, runbooks and automation recipes the user has stored in the Obsidian vault (titles + paths). Use this to discover what documented procedures exist before tackling a task. Read-only.
- **`obsidian_write_note`** — Create or update a note in the user's Obsidian vault (their knowledge base) — e.g. draft a new SOP, runbook or recipe, or revise an existing one. Provide the FULL note content in Markdown; if you're revising, read it first with obsidian_read_note and write back the merged result (or set append=true to add to the end). Mutating — runs only when the user has enabled 'Make changes'. Prefer the managed folders for procedures you'll want to find later: FrontierStack/SOPs, FrontierStack/Runbooks, FrontierStack/Recipes, FrontierStack/Prompts.

## Bundled admin scripts

- apache_real_docroot.sh: apache_real_docroot.sh — discover the DOCUMENT ROOT a vhost is ACTUALLY serving,
- apache_url_matrix.sh: apache_url_matrix.sh — HTTP status for a list of paths on a vhost, tested over
- fleet_file_diff.sh: fleet_file_diff.sh — compare one file's checksum across a fleet to find drift
- macos_httpd_vhosts.sh: macos_httpd_vhosts.sh — dump the macOS Server backend's vhost -> docroot map.
- macos_web_restart.sh: macos_web_restart.sh — restart the macOS Server web BACKEND the right way.
- node_healthcheck.sh: node_healthcheck.sh — fleet drift/health check for ONE vhost.
- php_opcache_check.sh: php_opcache_check.sh — report OPcache for BOTH the CLI and the WEB SAPI.
