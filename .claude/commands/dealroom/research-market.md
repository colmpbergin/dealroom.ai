# Research Market

Research market size and dynamics. Produces TAM/SAM/SOM analysis with both
top-down AND bottom-up methodology — because investors see through top-down-only
estimates instantly.

> Research insight: Bottom-up TAM is the primary calculation investors trust.
> Top-down analyst figures are used as a cross-check, not the headline number.
> SOM must align with financial projections — if they don't match, it's an
> immediate red flag.

## Variables

industry: $ARGUMENTS (e.g., "project management software", "B2B HR tech") If no
argument, read context/business-info.md to determine the industry.

---

## Instructions

### Phase 1: Load Context

Read:

- context/business-info.md
- context/target-customer.md
- context/current-data.md (to know our current ARPU for bottom-up calc)
- context/strategy.md (to know our SOM targets for consistency check)

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

### Phase 2: Bottom-Up TAM (do this first)

Bottom-up = number of potential customers × annual revenue per customer

Calculate:

- How many companies/people fit our ICP? (LinkedIn, industry databases, census
  data)
- What's our average revenue per customer (ARPU)? (From current-data.md or
  pricing page)
- TAM = addressable customers × ARPU

Source the customer count from verifiable data: LinkedIn company counts,
industry association membership, government statistics, analyst estimates of
company counts by segment.

### Phase 3: Top-Down TAM (cross-check)

Search analyst reports:

- Gartner, IDC, Grand View Research, Statista, IBISWorld, MarketsandMarkets
- Find current market size + CAGR + 5-year projection
- Use multiple sources — note if they conflict (they often do — explain which to
  use and why)

> ⚠️ If top-down and bottom-up are wildly different, investigate why. Usually
> means the market definition needs tightening. Note the discrepancy honestly.

### Phase 4: SAM

Serviceable Addressable Market = the portion we can realistically reach with our
model

Calculate by restricting TAM for:

- Geography (US only? English-speaking? Global from day 1?)
- Segment (SMB only? Mid-market? Enterprise? Specific verticals?)
- Channel constraints (how many can we reach given our GTM motion?)

Show the math: SAM = TAM × [geographic %] × [segment %]

### Phase 5: SOM (critical — must align with financials)

Serviceable Obtainable Market = realistic 3–5 year capture

Calculate:

- Look at comparable companies: what % of their SAM did they capture in 5 years?
- Cross-reference with our financial projections in context/strategy.md
- SOM must ≤ year-5 revenue projection — if they don't match, flag it

> ⚠️ SOM implying >30% market share is not credible. Investors will notice. SOM
> that implies 100% market share in any scenario is an instant red flag.

### Phase 6: Market Dynamics

- Growth rate (CAGR) and what's driving it
- Key tailwinds (3–5 trends accelerating the market)
- Honest headwinds (1–3 risks or challenges — shows sophistication)
- Recent funding activity in the space (signals investor appetite for this
  category)
- "Why Now" market timing argument — connect to research-problem findings if
  available

### Phase 7: Write Market Research Brief

Save to: `research/market/market-sizing-[YYYY-MM-DD].md`

```markdown
# Market Sizing Research Brief

**Date:** [today] **Market:** [industry/sector — precise definition]
**Company:** [company name]

## Market Definition

[Precise definition of the market we're measuring — be specific, not broad]

## Bottom-Up TAM (Primary)

- **# of addressable customers:** [X] (source: [URL])
- **ARPU:** $[X]/year (from our pricing / current data)
- **Bottom-Up TAM:** $[X]B = [X customers] × $[ARPU]
- **Assumptions:** [any estimates made]

## Top-Down TAM (Cross-Check)

| Source | Market Size | CAGR | Year | URL |
| ------ | ----------- | ---- | ---- | --- |
|        |             |      |      |     |
|        |             |      |      |     |

- **Consensus estimate:** $[X]B
- **Note:** [if figures conflict, explain which to use and why]

## Reconciliation

[Bottom-up vs. top-down — do they align? If not, why? Which to lead with?]

## SAM — Serviceable Addressable Market

- **Size:** $[X]B
- **Restriction from TAM:** [geographic + segment restrictions]
- **Calculation:** $[TAM] × [X]% geographic × [X]% segment = $[SAM]

## SOM — Serviceable Obtainable Market (3–5 years)

- **Conservative:** $[X]M — [X]% of SAM
- **Base:** $[X]M
- **Aggressive:** $[X]M
- **Comparable benchmark:** [Company X captured X% of similar SAM in Y years —
  source]
- **Consistency check:** Year-5 revenue in financial model = $[X]M ✅/⚠️

## Market Tailwinds (Why This Market Is Growing)

1. [Trend 1 with evidence]
2. [Trend 2]
3. [Trend 3]

## Market Headwinds (Honest Risks)

1. [Risk 1]
2. [Risk 2]

## Recent Investment Activity

[Notable funding rounds in this space last 18 months — signals investor
appetite]

## "Why Now" Market Timing

[1–2 sentences: what has changed that makes NOW the right moment to enter this
market]

## Key Takeaway for Investors

[The single most compelling market framing — leads with bottom-up, validated by
top-down]

## Sources

[All URLs]
```

### Phase 8: Report

1. Bottom-up TAM vs. top-down — do they agree? What's the headline number?
2. Is SOM consistent with our financial projections? (Flag if not)
3. The strongest market trend / timing argument
4. Any data conflicts that need founder input to resolve
5. File path
