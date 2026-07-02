<h1 align="center">PounceSQL</h1>
<p align="center">A fast, native macOS SQL client for <b>Azure SQL</b>, <b>SQL Server</b>, <b>PostgreSQL</b>, and <b>SQLite</b> — with an AI assistant and a built-in MCP server.</p>
<p align="center"><a href="https://pouncesql.com">pouncesql.com</a> · <a href="https://pouncesql.com/docs.html">Docs</a> · <a href="https://github.com/senzalldev/pouncesql-app/releases/latest">Download</a></p>

---

## Install

**Homebrew (recommended):**
```
brew install --cask senzalldev/tap/pouncesql
```
Upgrade with `brew upgrade --cask pouncesql`.

**Direct download:** grab the latest `.dmg` from [Releases](https://github.com/senzalldev/pouncesql-app/releases/latest), open it, and drag PounceSQL into Applications. The app is Developer-ID signed and notarized.

Requirements: macOS 13+ (Apple Silicon).

## What it does

- **One client, every database** — Azure SQL, SQL Server (2017–2025+), PostgreSQL, and SQLite.
- **Browse whole servers** — pin a server and expand it like a tree: every database, schema, table, and column.
- **Ask your data in plain English** — the AI assistant writes engine-correct SQL grounded in your schema. Bring your own API key or route through an AI API gateway.
- **Built-in MCP server** — agents like Claude Code can drive the app (list databases, run queries, browse schema) and you watch it live.
- **Flexible auth** — `az login` for Azure, SQL login / Windows (NTLM) / Kerberos SSO for SQL Server, roles for Postgres, plain files for SQLite. Secrets stay in an encrypted local store.
- **Make it yours** — a dozen editor themes, separate GUI/editor fonts, and per-section font sizing.

## Documentation

Full docs at **[pouncesql.com/docs.html](https://pouncesql.com/docs.html)** — install, connecting each engine, the AI assistant, the MCP server, themes/fonts, and the security model.

## Demo database

`demo/music.db` is a small fictional SQLite database (artists, albums, tracks, and a view) you can open to try PounceSQL immediately — **+ Add → SQLite → Browse…**

## Security

Connection secrets are stored only in an encrypted local settings file (AES-256-GCM; key in the login keychain). The AI assistant and MCP server are **read-only by default** — writes require explicitly enabling them in Settings → Tools.
