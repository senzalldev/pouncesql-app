# PounceSQL demo data

`music.db` — a small, fictional SQLite database (no real-world/organizational
data) used for demos and website screenshots. Regenerate with:

    sqlite3 music.db < music.sql

Open it in PounceSQL via **+ Add → SQLite → Browse…** and pick `music.db`,
or with the MCP tool `pin_sqlite`.

Tables: artists, albums, tracks. View: album_summary (artist/album rollup
with track counts and total plays). Good for showing joins, aggregates,
and views in screenshots.
