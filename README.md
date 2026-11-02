# Shah Group of Companies

Two static sites in one repo:

| Site | Path | Domain | Dockerfile |
|---|---|---|---|
| Shah Group umbrella page | `/` (root) | shah-group.net | `Dockerfile` |
| Arovanni &amp; Co. Construction (drywall &amp; framing) | `/arovanni/` | sheethappens.org | `arovanni/Dockerfile` |

Both are `nginx:alpine` serving static files on port `80`. In Coolify,
create one app per site from this repo and set the Dockerfile location
accordingly (root `/Dockerfile` vs `/arovanni/Dockerfile`).

- **Preview (ZCode Sites):** https://shah-group-my08.zai-ai.site (umbrella) · /arovanni/ (Arovanni)

## Run locally

Any static server works:

```bash
python3 -m http.server 8765
# open http://localhost:8765
```

Or with Docker:

```bash
docker build -t shah-group .
docker run -p 8080:80 shah-group
# open http://localhost:8080
```

## Deploy on Coolify

1. New Resource → Docker Image / App from Git → point it at this repo.
2. Build pack: **Dockerfile** (auto-detected).
3. Set the exposed port to **80** if Coolify asks.
4. Domain: point your domain at the app. No `.html` in URLs — nginx serves
   `index.html` at `/` by default.

## Editing the company list

All companies live in the `COMPANIES` array near the top of the `<script>`
block in `index.html`. One entry per company:

```js
{
  name: "Company Name",        // full name shown on the card
  short: "Short",              // used in the intro + placeholder mark
  logo: "assets/logos/x.png",  // or null for a text placeholder
  url: "https://example.com",  // or null if no website
  desc: "One-line description."
}
```

A new entry automatically joins both the intro animation and the grid —
no other changes needed. Drop new logo files into `assets/logos/`.

## Assets

`assets/logos/` holds the original brand files (Shah Group PNG/SVG/JPG from
the Drive folder) plus the cleaned, transparent-background versions the site
actually uses.
