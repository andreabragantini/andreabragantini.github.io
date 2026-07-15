# Andrea Bragantini, Ph.D. — Personal Project Portfolio

This is the source of my personal website, hosted at
**https://andreabragantini.github.io**. It is a static site built with the
[Beautiful Jekyll](https://beautifuljekyll.com) theme and published automatically
via **GitHub Pages** whenever I push to this repository.

The site collects my projects, scientific publications, conference activity and a
few personal sites, plus a blog-style feed of project write-ups.

## What's in this repository

| Path | What it is |
|------|------------|
| `_config.yml` | All site-wide settings (title, navigation bar, social links, colours, plugins). **Edit this first.** |
| `_posts/` | Blog/project entries. Each file must be named `YEAR-MONTH-DAY-title.md`. |
| `index.html` | The home page (lists all posts). Uses the `home` layout. |
| `aboutme.md`, `publications.md`, `conferences.md`, `personal-sites.md`, `contact.html` | The main content pages (linked from the navbar). |
| `assets/` | Images, CSS and JavaScript. Project images go in `assets/img/`. |
| `_layouts/`, `_includes/`, `_data/` | Theme templates and partials (normally you don't need to touch these). |

## Running the site locally (Docker — recommended, no Ruby needed)

You do **not** need to install Ruby. The site runs inside a Docker container using
the official `jekyll/jekyll` image.

### Prerequisites
- **Docker Desktop** installed and running (start it from the Start menu; the
  whale icon must be visible in the system tray).

### Start it
Double-click **`run-local.cmd`** (located in this repo), or run it from the repo
root. It will:
1. pull the `jekyll/jekyll` image (first time only),
2. install the few Ruby gems the site needs,
3. start a live server that watches for file changes.

Then open **http://localhost:4000** in your browser. The first build takes about
30 seconds. Stop the server any time with:

```powershell
docker rm -f jekyll-local
```

Every time you edit a file, Jekyll regenerates the site automatically — just
refresh the browser.

### What the launch command does (explained)

The `run-local.cmd` script ultimately runs:

```powershell
docker run -d --name jekyll-local -p 4000:4000 `
  -v "%REPO%:/srv/jekyll" -w /srv/jekyll `
  --entrypoint sh jekyll/jekyll:latest /srv/jekyll/start.sh
```

- `docker run -d` — runs the container in the background.
- `--name jekyll-local` — a fixed name so you can stop it with `docker rm -f jekyll-local`.
- `-p 4000:4000` — maps the container's port 4000 to `http://localhost:4000`.
- `-v "%REPO%:/srv/jekyll"` — mounts this repo into the container at `/srv/jekyll`,
  so the container serves your live files (changes are reflected instantly).
- `-w /srv/jekyll` — sets that folder as the working directory.
- `--entrypoint sh ... /srv/jekyll/start.sh` — runs our bootstrap script instead of
  the image's default command.

### Why the extra helper files are needed

- **`start.sh`** — the repo's `Gemfile` references the theme's `gemspec`, which
  requires an old `rake ~> 12.0` that isn't available in the image, and the image
  doesn't ship the `jekyll-sitemap` plugin. `start.sh` creates a small, isolated
  Gemfile with only the gems actually needed to *serve* the site and then launches
  Jekyll. (This keeps you from having to install Ruby/Bundler on Windows.)
- **`_config_local.yml`** — when Jekyll serves a site it rewrites every internal
  link to the server's bind address. We bind the server to `0.0.0.0` (required so
  Docker can forward the port), which would make links point to `0.0.0.0` — a
  address browsers can't open. This file sets `url: "http://localhost:4000"` and,
  together with `JEKYLL_ENV=production` in `start.sh`, keeps all links clickable.
  **This file is ignored by GitHub Pages**, so it only affects your local preview.

## Editing content

- **Add a project/blog post:** create `_posts/YEAR-MONTH-DAY-title.md` with YAML
  front matter at the top, e.g.:
  ```yaml
  ---
  layout: post
  title: My new project
  subtitle: A short description
  tags: [python, data-analysis]
  cover-img: /assets/img/my-cover.jpg
  thumbnail-img: /assets/img/my-thumb.jpg
  ---
  ```
  Then write the body in Markdown.
- **Add images:** drop them in `assets/img/` and reference them as
  `![alt]({{ '/assets/img/name.jpg' | relative_url }})` (or `/assets/img/name.jpg`
  in front matter).
- **Site settings / navbar / social links:** edit `_config.yml`.
- **Pages:** edit the existing `.md`/`.html` files, or add new ones (remember the
  YAML front matter on every page).

## Deploying

Just push to GitHub (`main` branch). GitHub Pages rebuilds and publishes the site
automatically — no extra steps. The local-only files (`run-local.cmd`, `start.sh`,
`_config_local.yml`) do not affect the published site.

## Optional: running with Ruby (advanced)

If you ever install Ruby + Bundler yourself, from the repo root run:

```powershell
bundle install
bundle exec jekyll serve
```

> Note: the repo's `Gemfile` uses `gemspec`, whose development dependency
> `rake ~> 12.0` can fail to resolve on newer Ruby versions. The Docker method
> above avoids this entirely, which is why it is the recommended approach.

## Theme-only files you can safely ignore / remove

This repository started as a fork of the Beautiful Jekyll *theme*, so it still
contains some files that only matter if you were publishing the theme as a Ruby gem.
For a personal site they are not needed:

- `beautiful-jekyll-theme.gemspec` + `Gemfile` — only used to build/publish the
  theme gem. Harmless to keep, but unnecessary for running or deploying your site.
  (The local Docker setup bypasses them via `start.sh`.)
- `LICENSE` — the theme's MIT license. Kept here for attribution; you may replace it
  if you prefer.
- `staticman.yml` — only relevant if you enable Staticman comments (currently not
  enabled in `_config.yml`). Safe to delete if you don't use comments.

The files `Appraisals` and `CHANGELOG.md` (theme changelog / test config) have
already been removed from this repository as they are not used by the site.
