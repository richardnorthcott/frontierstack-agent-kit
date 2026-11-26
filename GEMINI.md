# FrontierStack

This extension connects Gemini CLI to **FrontierStack**, a macOS app (Enfour, Inc.,
https://www.frontierstack.app) that acts as the server and network administrator for the user's
Macs, Linux and Windows servers, routers, DNS, TLS certificates and online accounts.

The `frontierstack` MCP server is the app's owner-only local bridge at
`$HOME/Library/Application Support/FrontierStack/mcp-bridge`. It exists only after the user
turns on **MCP Server** in FrontierStack. It needs Node.js. If its tools are missing or fail to
connect, tell the user to open FrontierStack and turn on MCP Server; do not probe ports.

## How to work

1. Call `frontierstack_find_tools` with the concrete job, for example "why does example.com
   return 502".
2. Pick the narrowest tool it returns and follow its `inputSchema`.
3. Run it through `frontierstack_call` with the exact tool name and an `arguments` object.
4. Search again only when the task moves to another subsystem.

Start with reads: `get_server_health`, `diagnose` (ping, dig, curl, traceroute), `tail_log`,
`cert_expiry_check`, `router_info`. Establish what is broken from evidence before proposing a
change.

## Rules

- FrontierStack is **read-only by default**. Changes need the owner's "Allow changes" switch
  and may wait for approval on the Mac. A refusal is a correct answer: report it and say what
  the user can do on the Mac. Never ask the user to turn off App Lock so a call succeeds.
- **You never hold credentials.** The Mac resolves them at call time. Never ask the user to
  paste a password, API key, SSH key or token, and never write a FrontierStack bearer token
  into a file, prompt or memory.
- Before a change, state what it does, its blast radius and how to undo it. After it, re-run
  the read that proved the fault. Never say a change worked until a tool shows it.
- If a response ever contains something that looks like a live secret, say so and do not
  repeat it.

The `frontierstack` and `frontierstack-network-admin` skills in this extension have the full
guidance.

FrontierStack is made by Enfour, Inc. — https://www.frontierstack.app
