# Web Research Skill

Guidelines for conducting high-quality research in this deal room workspace.

## Tool Hierarchy

Use tools in this priority order. Always prefer MCP tools -- they return more
structured, citable data.

1. **Perplexity** (perplexity_ask) -- First choice for market questions,
   industry trends, Why Now arguments, regulatory context. Returns synthesized
   answers with citations.
2. **Exa** (web_search_exa, company_research_exa, people_search_exa) -- Best for
   structured lookups: company data, competitor profiles, founder backgrounds,
   similar companies.
3. **Firecrawl** (FIRECRAWL_SCRAPE_EXTRACT_DATA_LLM) -- Use when a specific page
   needs scraping: competitor pricing, product pages, JS-rendered sites that
   WebFetch cannot read.
4. **WebSearch** -- Fallback when MCP tools are unavailable or return
   insufficient results.
5. **WebFetch** -- Direct URL fetch for static pages or when you have a specific
   URL to read.

If MCPs are not connected, proceed with WebSearch + WebFetch and note that MCP
tools would improve results. See reference/mcp-setup.md for setup instructions.

---

## Core Principles

### 1. Search Strategically

- Start broad, narrow down: "B2B project management market size" → "B2B project
  management SaaS TAM 2024"
- Use quotes for exact phrases: "total addressable market" "project management
  software"
- Combine terms: site:crunchbase.com + company name for funding data

### 2. Source Hierarchy (best → acceptable)

1. Primary research reports (Gartner, IDC, Forrester, McKinsey, CB Insights,
   PitchBook)
2. Government data (Census, BLS, SEC filings)
3. Company blog posts / press releases (for their own funding/metrics)
4. Reputable journalism (TechCrunch, Forbes, WSJ, Bloomberg)
5. Industry associations and trade publications
6. Secondary blogs that cite primary sources

**Avoid**: Anonymous blog posts, content farms, statistics without clear
attribution

### 3. For Market Sizing

- Look for: market size ($), CAGR (%), year range, methodology
- Key search patterns:
  - "[industry] market size 2024 2025"
  - "[industry] TAM report Gartner"
  - "[sector] global market forecast"
- Always find at least 2 sources and note if they agree

### 4. For Competitor Research

- Always visit competitor websites directly
- Search: "[company] pricing" "[company] review G2" "[company] funding
  Crunchbase" "[company] news 2024"
- Check: G2.com, Capterra.com for reviews
- Check: Crunchbase.com for funding

### 5. For Customer Research

- Reddit search: "site:reddit.com [problem description]"
- Review sites: G2, Capterra, Trustpilot, App Store
- LinkedIn: company and role targeting
- Industry communities: Slack groups, Discord, Facebook Groups

### 6. Saving Research

Always structure saved research files with:

```markdown
# [Topic] Research

**Date:** YYYY-MM-DD **Purpose:** [what deal room section this feeds]

## Key Findings

[numbered list of key facts]

## Detailed Notes

[full research]

## Sources

| Claim | Source | URL | Date |
| ----- | ------ | --- | ---- |
```

### 7. Research Quality Checklist

Before saving research:

- [ ] At least 2 sources for key statistics
- [ ] Sources dated within 3 years (flag anything older)
- [ ] Direct URLs saved for every claim
- [ ] Numbers are specific (not just "large" or "fast-growing")
- [ ] Customer voice included where relevant
