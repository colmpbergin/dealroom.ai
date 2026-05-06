# MCP Setup Reference

This file documents all MCP integrations for the Startup Deal Room workspace.
Run these commands once in your terminal to connect each MCP to Claude Code.

---

## Current MCP Status

| MCP        | Status | Primary Use                                       | Tool Prefix                          |
| ---------- | ------ | ------------------------------------------------- | ------------------------------------ |
| Perplexity | To add | AI-synthesized web research                       | perplexity_ask, perplexity_reason    |
| Exa        | To add | Semantic/neural search, company and people lookup | web_search_exa, company_research_exa |
| Firecrawl  | To add | JS-rendered web scraping, data extraction         | FIRECRAWL_SCRAPE_EXTRACT_DATA_LLM    |
| Napkin AI  | To add | Text-to-diagram generation                        | napkin\_\*                           |
| Recraft    | To add | SVG vector icons matching brand style             | recraft\_\*                          |

> **GitHub Pages export** is built-in — no MCP needed. Use
> `/dealroom:export-to-hugo`.

---

## MCPs to Add

### 1. Perplexity

**What it does:** AI-synthesized research with citations. Best for broad market
questions, "Why Now" arguments, industry trends, and regulatory context. Returns
structured answers with sources rather than raw links.

**Cost:** Paid API — approximately $5 per 1,000 requests. Get API key at
perplexity.ai/settings/api.

**Available tools:**

- perplexity_ask — Web-grounded Q&A with citations
- perplexity_reason — Deep reasoning mode for complex analysis

**Setup command:**

```bash
claude mcp add perplexity --env PERPLEXITY_API_KEY="your_key_here" -- npx -yq @perplexity-ai/mcp-server
```

**Test:** Ask Claude "What is the current state of [your industry] investment?"
— it should cite recent sources.

---

### 2. Exa

**What it does:** Semantic/neural search engine. Superior to Google for finding
specific company pages, people profiles, academic papers, and structured
business data. Supports similarity search.

**Cost:** Free tier available — 1,000 searches/month. Get API key at
exa.ai/api-explorer.

**Available tools:**

- web_search_exa — Neural search across the web
- company_research_exa — Structured company data lookup
- people_search_exa — Executive/founder profile research
- find_similar_exa — Find pages similar to a given URL

**Setup command:**

```bash
claude mcp add exa --env EXA_API_KEY="your_key_here" -- npx exa-mcp-server
```

**Test:** Ask Claude to find the LinkedIn profiles of the founding team of a
competitor company.

---

### 3. Firecrawl

**What it does:** Browser-stack web scraper that handles JavaScript-rendered
pages. Use when WebFetch fails on dynamic pages. Extracts structured data from
competitor pricing pages, job boards, and investor portfolio sites.

**Cost:** Free tier: 500 pages/month, no credit card required. Get API key at
firecrawl.dev.

**Available tools:**

- FIRECRAWL_SCRAPE_EXTRACT_DATA_LLM — Scrape and extract structured data from
  any URL
- FIRECRAWL_CRAWL_URLS — Crawl multiple pages on a site
- FIRECRAWL_SEARCH — Search and scrape results simultaneously

**Setup command:**

```bash
claude mcp add firecrawl --env FIRECRAWL_API_KEY="your_key_here" -- npx -y firecrawl-mcp
```

**Test:** Ask Claude to scrape the pricing page of a competitor.

---

### 4. Napkin AI

**What it does:** Converts text descriptions into professional diagrams —
flowcharts, mindmaps, timelines, comparison matrices, and framework visuals.
Outputs SVG, PNG, or PPTX. Free forever plan available.

**Cost:** Free forever plan. Get API access at napkin.ai.

**Diagram types supported:**

- Flowchart / process flow
- Mindmap
- Timeline
- Comparison / pros-cons
- Framework (2x2 matrix)
- Org chart

**Setup command:**

```bash
claude mcp add napkin --env NAPKIN_API_KEY="your_key_here" -- npx npx -y napkin-ai-mcp
```

**Test:** Ask Claude to create a flowchart showing your customer acquisition
funnel.

---

### 5. Recraft

**What it does:** Generates SVG vector icons and illustrations. Produces
production-ready line icons matching your brand style. Better than generic icon
libraries for brand-specific visuals.

**Cost:** Free tier available. Get API key at recraft.ai.

**Available tools:**

- recraft_generate_image — Generate raster or vector images
- recraft_vectorize — Convert raster to SVG

**Setup command:**

```bash
claude mcp add recraft --env RECRAFT_API_KEY="your_key_here" -- npx -y @recraft-ai/mcp-recraft-server@latest
```

**Test:** Ask Claude to generate a line icon matching your brand colors.

---

## Verification

After adding MCPs, verify they are connected:

```bash
claude mcp list
```

You should see all added MCPs listed as active. In a Claude Code session, the
tools will appear in the available tools list.

---

## Research Tool Hierarchy

When conducting research, agents and commands use this priority order:

1. **Perplexity** (perplexity_ask) — First choice for market questions, trends,
   Why Now, regulations
2. **Exa** (web_search_exa, company_research_exa) — Structured
   company/people/competitor data
3. **Firecrawl** (FIRECRAWL_SCRAPE_EXTRACT_DATA_LLM) — When a specific page
   needs scraping
4. **WebSearch** — Fallback if MCPs unavailable
5. **WebFetch** — Direct URL fetch for static pages

Always prefer MCP tools over WebSearch/WebFetch when available — they return
more structured, citable data.

---

## Notes

- MCP configurations are stored per-project or globally in Claude Code settings
- If an MCP disconnects, re-run the `claude mcp add` command
- Sub-agents in `.claude/agents/` must have MCP entries listed in their `tools:`
  frontmatter to use them
