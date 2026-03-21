# Map Competitors

Research ALL competitors in the competitors list simultaneously using parallel
agents, then synthesize into a competitive landscape.

## Variables

No arguments — reads from context/competitors-list.md

---

## Instructions

### Phase 1: Load Context

Read:

- context/competitors-list.md
- context/business-info.md
- context/target-customer.md

Extract the full list of direct and indirect competitors.

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

### Phase 2: Parallel Research

Spawn the `competitor-analyst` sub-agent for EACH competitor on the list,
running all agents in parallel for speed.

Each agent should:

1. Research that single competitor using the competitor-analyst methodology
2. Save their profile to `research/competitors/[name]-[date].md`
3. Return a summary: name, funding, pricing, ICP, top strength, top weakness

### Phase 3: Synthesize Competitive Landscape

After all profiles are complete, create a master competitive landscape document.

Save to: `research/competitors/competitive-landscape-[YYYY-MM-DD].md`

Structure:

```
# Competitive Landscape
**Date:** [today]
**Company:** [our company]

## Market Map
[Describe how competitors cluster — e.g., "The market splits into enterprise players and SMB tools"]

## Competitor Summary Table
| Company | Founded | Funding | ICP | Price | Key Strength | Key Weakness |
|---------|---------|---------|-----|-------|-------------|-------------|
| | | | | | | |

## Competitive Matrix
[Feature/capability comparison table — our company vs. each competitor]

| Feature / Capability | [Us] | [Comp1] | [Comp2] | [Comp3] |
|---------------------|------|---------|---------|---------|
| | | | | |

## Positioning Map Description
[Describe the 2 axes that best differentiate the market — e.g., Price vs. Depth, SMB vs. Enterprise, Simple vs. Powerful]

## Where We Win
[3-5 specific scenarios where a customer would choose us]

## Where Competitors Win
[Be honest — where do they have advantages? This builds investor credibility]

## Our Unique Position
[1 paragraph: what white space do we occupy that no one else does?]

## Competitive Moat
[What will make it hard for competitors to copy us over time?]

## Sources
[All competitor profile files + URLs]
```

### Phase 4: Report

1. Summary of all competitors researched
2. The most important competitive insight found
3. Recommended competitive positioning for the data room
4. File paths for all profiles + landscape document
