# Find Funding Comps

Research comparable funding rounds and valuation benchmarks. Produces the
financial narrative backing our raise and targets investors active in our space.

> Research insight: At pre-seed, valuations are milestone-based and team-driven
> — not ARR multiples. At seed, ARR multiples dominate. This command calibrates
> accordingly.

## Variables

No arguments — reads context/business-info.md, context/strategy.md,
context/fundraising-stage.md

---

## Instructions

### Phase 1: Load Context

Read:

- context/business-info.md (industry, business model)
- context/strategy.md (our raise amount, target valuation)
- context/current-data.md (our current metrics)
- context/fundraising-stage.md (pre-seed vs. seed — changes benchmarks entirely)
- reference/investor-benchmarks.md (built-in benchmarks to cross-check against)

### Tool Priority

Use tools in this order for all research in this command:

1. **Perplexity** (perplexity_ask) -- Synthesized answers with citations; best
   for market trends, regulations, Why Now
2. **Exa** (web_search_exa, company_research_exa, people_search_exa) --
   Structured company and people data
3. **Firecrawl** (FIRECRAWL_SCRAPE_EXTRACT_DATA_LLM) -- Scrape specific pages
   when WebFetch fails on dynamic sites
4. **WebSearch** -- Fallback only if MCP tools are unavailable
5. **WebFetch** -- Direct URL access for static pages

See reference/mcp-setup.md to connect MCPs if not yet configured.

---

### Phase 2: Find Comparable Funding Rounds

**Search criteria:**

- Same stage (pre-seed OR seed) as our round
- Same sector / business model
- Last 2–3 years (older comps carry less weight)
- Similar metrics at time of raise (if data available)

**Sources:**

- TechCrunch funding announcements
- Crunchbase (filter by stage + industry + date)
- Axios Pro Rata newsletter
- LinkedIn funding posts (founders often announce rounds)
- CB Insights state of venture reports

**For each comp, capture:**

- Company name, what they do (1 sentence)
- Round: amount, stage, date
- Valuation / cap (if disclosed — often not at pre-seed)
- Revenue / ARR at time of raise (often not public — note if estimated)
- Implied ARR multiple (if calculable)
- Lead investor

Aim for 5–10 comps. 3+ is minimum.

### Phase 3: Stage-Specific Valuation Analysis

**If Pre-Seed:**

- Valuation at pre-seed is almost never based on ARR multiples
- It's based on: team quality, market size, concept strength, cap table hygiene
- Typical range (2024–2025): $3M–$8M post-money cap on YC SAFEs
- Key question: what milestones will justify a $[X] cap?
- Find examples of comparable team + concept pre-seed rounds
- Cross-check against reference/investor-benchmarks.md Pre-Seed row

**If Seed:**

- Seed valuations are more metric-driven
- Common methodologies: ARR multiple (5–15x for SaaS), GMV multiple (for
  marketplaces), milestone-based
- Typical range (2024–2025): $12M–$18M pre-money
- Cross-check our metrics against reference/investor-benchmarks.md Seed row
- Calculate: at our current ARR, what multiple does our target valuation imply?
- Is that multiple defensible vs. comps?

### Phase 4: Identify Active Investors in Our Space

From the comp list, extract:

- Which VCs funded these comparable companies?
- Which angels appeared in multiple rounds in our space?
- Any notable operators who invest in this category?

These are warm target investors — they've already shown conviction in the space.

### Phase 5: Write Funding Comps Brief

Save to: `research/financials/funding-comps-[YYYY-MM-DD].md`

```markdown
# Funding Comparables Research

**Date:** [today] **Our Round:** [stage] — $[amount] at $[valuation/cap] **Our
Stage:** [pre-seed / seed]

## Comparable Funding Rounds

| Company | What They Do | Stage | Amount | Valuation/Cap | Date | ARR at Raise | Multiple | Lead Investor |
| ------- | ------------ | ----- | ------ | ------------- | ---- | ------------ | -------- | ------------- |
|         |              |       |        |               |      |              |          |               |
|         |              |       |        |               |      |              |          |               |
|         |              |       |        |               |      |              |          |               |

## Stage Benchmarks (2024–2025)

| Metric              | Our Number | Benchmark         | Assessment |
| ------------------- | ---------- | ----------------- | ---------- |
| Round size          | $[X]       | [from benchmarks] | ✅ / ⚠️    |
| Pre-money valuation | $[X]       | [range]           | ✅ / ⚠️    |
| ARR at raise (seed) | $[X]       | $20–50K MRR       | ✅ / ⚠️    |
| Dilution implied    | [X]%       | 15–25%            | ✅ / ⚠️    |

## Valuation Justification

[Narrative: why our valuation is defensible based on:

- Comp multiples
- Our metrics vs. comp metrics at raise
- Stage-appropriate reasoning (milestone-based at pre-seed; metric-based at
  seed)]

## Our Valuation Framing (Recommended)

[How to explain/justify our valuation to investors in plain language]

## Active Investors in Our Space

| Investor | Type       | Notable Investments in Space | Why They're a Fit |
| -------- | ---------- | ---------------------------- | ----------------- |
|          | VC / Angel |                              |                   |
|          |            |                              |                   |

## Sources

[All URLs]
```

### Phase 6: Report

1. Most relevant 3 comps — what do they tell us about our valuation?
2. Is our valuation defensible vs. benchmarks? (Be honest — overpriced rounds
   hurt)
3. Top 5 investors to target based on comp activity
4. File path
