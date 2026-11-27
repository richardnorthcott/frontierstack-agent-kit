#!/bin/sh
# Build the ACP Registry launcher archive and refresh agent.json's checksums.
#
#   AgentKit/acp-registry/build.sh
#
# Writes www/acp/frontierstack-acp-<version>.tar.gz (deployed with the website; www/acp/ is not one
# of build.py's generated folders, so a site build keeps it) and sets "sha256" for both macOS
# platforms in frontierstack/agent.json. The version comes from LAUNCHER_VERSION in the launcher
# and must equal agent.json's "version" — the registry checks that the archive URL carries it.
#
# The archive is reproducible (fixed owner, mode and mtime; gzip without a timestamp), so
# rebuilding the same launcher gives the same checksum.
set -eu
here="$(cd "$(dirname "$0")" && pwd)"
repo="$(cd "$here/../.." && pwd)"
launcher="$here/frontierstack-acp"
entry="$here/frontierstack/agent.json"

version="$(sed -n 's/^LAUNCHER_VERSION="\([0-9.]*\)"$/\1/p' "$launcher")"
[ -n "$version" ] || { echo "LAUNCHER_VERSION not found in $launcher" >&2; exit 1; }
sh -n "$launcher"

out_dir="$repo/www/acp"
archive="$out_dir/frontierstack-acp-$version.tar.gz"
mkdir -p "$out_dir"

stage="$(mktemp -d)"
trap 'rm -rf "$stage"' EXIT
cp "$launcher" "$stage/frontierstack-acp"
chmod 755 "$stage/frontierstack-acp"
touch -t 202601010000 "$stage/frontierstack-acp"
( cd "$stage" && COPYFILE_DISABLE=1 tar --uid 0 --gid 0 --uname root --gname wheel \
    --no-xattrs -cf - frontierstack-acp ) | gzip -n -9 > "$archive"

sum="$(shasum -a 256 "$archive" | cut -d' ' -f1)"
url="https://frontierstack.app/acp/frontierstack-acp-$version.tar.gz"

python3 - "$entry" "$version" "$url" "$sum" <<'PY'
import json, sys
path, version, url, digest = sys.argv[1:]
with open(path) as f:
    entry = json.load(f)
entry["version"] = version
for platform in ("darwin-aarch64", "darwin-x86_64"):
    target = entry["distribution"]["binary"][platform]
    target["archive"] = url
    target["sha256"] = digest
with open(path, "w") as f:
    json.dump(entry, f, indent=2, ensure_ascii=False)
    f.write("\n")
PY

echo "archive: $archive"
echo "sha256:  $sum"
echo "url:     $url"
