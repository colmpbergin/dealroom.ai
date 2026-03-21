# Export to Hugo

Publish all completed data room sections to GitHub Pages as a new timestamped
snapshot. Each export creates a fresh snapshot — previous snapshots are never
overwritten.

Published URL format:
`https://<username>.github.io/dealroom.ai/YYYY-MM-DD_HH-MM-SS/`

---

## Instructions

### Phase 1: Get Timestamp

Run:

```bash
date +%Y-%m-%d_%H-%M-%S
```

Store this as the snapshot ID. Every file in this snapshot uses this timestamp.

### Phase 2: Discover Output Files

Find the latest file in each output section:

```bash
find outputs/ -type f -name "*.md" | sort
```

For each numbered section (00-narrative through 14-appendix, plus 99-reviews),
identify the most recently created `.md` file. Skip empty sections.

### Phase 3: Create Snapshot Directory

Create the snapshot directory in the Hugo content tree:

```
site/content/<timestamp>/
```

Create `site/content/<timestamp>/_index.md` with this front matter and a summary
of what's in this snapshot:

```markdown
---
title: "Snapshot <timestamp>"
date: <ISO 8601 date>
---

# Data Room Snapshot — <timestamp>

| Section               | File       | Status |
| --------------------- | ---------- | ------ |
| 01 Executive Summary  | [filename] | ✅ / — |
| 02 Problem & Solution | [filename] | ✅ / — |

...
```

### Phase 4: Copy Sections with Front Matter

For each output file found in Phase 2, copy it into the snapshot directory with
Hugo front matter prepended. Use the section number as the `weight` so sections
sort in order.

Front matter to prepend:

```markdown
---
title: "<Section title>"
date: <ISO 8601 date>
weight: <section number as integer, e.g. 1 for 01, 6 for 06>
---
```

Then append the full original file content unchanged.

Section title map:

| Folder                   | Title                 | Weight |
| ------------------------ | --------------------- | ------ |
| 01-executive-summary     | Executive Summary     | 1      |
| 02-problem-solution      | Problem & Solution    | 2      |
| 03-market-size           | Market Size           | 3      |
| 04-product               | Product               | 4      |
| 05-engineering           | Engineering           | 5      |
| 06-traction              | Traction & Metrics    | 6      |
| 07-business-model        | Business Model        | 7      |
| 08-competitive-landscape | Competitive Landscape | 8      |
| 09-go-to-market          | Go-to-Market          | 9      |
| 10-team                  | Team                  | 10     |
| 11-financials            | Financials            | 11     |
| 12-use-of-funds          | Use of Funds          | 12     |
| 13-investment-memo       | Investment Memo       | 13     |
| 14-appendix              | Appendix              | 14     |

Note: That `00-narrative` and `99-reviews` will not be copied/published to hugo.
That is on purpose!

### Phase 5: Verify Hugo Config

Check that `site/hugo.toml` exists. If `baseURL` still says `username`, remind
the user to update it:

```toml
baseURL = "https://<your-github-username>.github.io/dealroom.ai/"
```

### Phase 6: Report and Instruct

Tell the user:

1. Which sections were included in this snapshot (and which were skipped as
   empty)
2. The snapshot directory created: `site/content/<timestamp>/`
3. The exact commands to publish:

```bash
git add site/
git commit -m "Add data room snapshot <timestamp>"
git push
```

4. After push, GitHub Actions will build Hugo and deploy to GitHub Pages
   automatically (see `.github/workflows/hugo.yml`).
5. The published URL will be:
   `https://<username>.github.io/dealroom.ai/<timestamp>/`

> ⚠️ Do NOT commit the built site (`site/public/`) — it is in `.gitignore`. Only
> commit the source files in `site/content/` and `site/static/`.

---

## Hugo Setup (first-time only)

Before the first export, verify:

1. **GitHub Pages enabled**: In repo Settings → Pages → Source: "GitHub Actions"
2. **baseURL set**: Update `site/hugo.toml` with your actual GitHub username
3. **Workflow active**: `.github/workflows/hugo.yml` is committed and GitHub
   Actions is enabled for the repo

To test locally before pushing:

```bash
cd site && hugo server
```

Then open `http://localhost:1313` to preview.
