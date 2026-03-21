# Analyze Competitor

Deep dive on a single competitor. Researches one company thoroughly and produces
a profile that feeds directly into Section 07 (Competitive Landscape).

> Research insight: "No competition" is the single most common deal-killer in
> competitive sections. Every problem has alternatives — including "do nothing."
> This command ensures we cover direct, indirect, AND status quo alternatives.

## Variables

company: $ARGUMENTS (e.g., "Notion", "Monday.com", "Salesforce", "status-quo")
Pass "status-quo" to research the do-nothing / existing workflow alternative.

---

## Instructions

### Phase 1: Load Context

Read:

- context/business-info.md
- context/target-customer.md

Understand our positioning and ICP before analysing theirs.

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

### Phase 2: Special Case — Status Quo Research

If $ARGUMENTS = "status-quo" or similar:

- Research how companies currently solve this problem WITHOUT our category of
  tool
- What is the manual / legacy / cobbled-together approach?
- What does it cost in time, headcount, and money?
- Why are people "stuck" with it despite its pain?
- Save to: `research/competitors/status-quo-[YYYY-MM-DD].md`

### Phase 3: Standard Competitor Research

For a named competitor, research:

1. **Website** — Homepage, pricing page, features/product page, about page. This
   is their official positioning.

2. **Reviews** — G2, Capterra, Trustpilot, Product Hunt, App Store.

   - Read 15–20 reviews minimum, mix of positive and negative
   - The 1–3 star reviews reveal real weaknesses
   - The 5 star reviews reveal what they do genuinely well

3. **Funding** — Crunchbase, TechCrunch. Total raised, latest round, investors,
   valuation if disclosed. Implication: how much runway do they have? How
   aggressively can they move?

4. **Recent news** — Last 12 months. New features, pricing changes, leadership
   changes, partnerships.

5. **Job postings** — LinkedIn. Where are they investing? Engineering = product
   focus. Sales = growth mode.

6. **Pricing** — Exact price points, tier structure, what's included. Free tier?
   Annual discount?

7. **Honest strengths** — Where are they genuinely strong? Investors respect
   founders who know this.

8. **Genuine weaknesses** — The real gaps, not just "they're bigger and slower."

### Phase 4: Write Competitor Profile

Save to: `research/competitors/[company-name-lowercase]-[YYYY-MM-DD].md`

```markdown
# Competitor Profile: [Company Name]

**Date Researched:** [today]

## Quick Stats

- **Founded:** [year]
- **HQ:** [city, country]
- **Team Size:** [X employees] (source: LinkedIn)
- **Total Funding:** $[X]M
- **Latest Round:** $[X]M [Series X] — [date] — led by [investor]
- **Investors:** [key names]

## What They Do

[2–3 sentences — their product and target customer]

## Their ICP

[Who they target — be specific about company size, industry, role]

## Pricing

| Tier         | Price   | Key Inclusions | Limitations |
| ------------ | ------- | -------------- | ----------- |
| Free / Trial |         |                |             |
| [Tier 1]     | $[X]/mo |                |             |
| [Tier 2]     | $[X]/mo |                |             |
| Enterprise   | Custom  |                |             |

## Key Capabilities

[The 5–7 things they're known for — from website + reviews]

## Their Positioning / Differentiation Claims

[Direct from their website — what do THEY say makes them special?]

## Customer Sentiment

**What customers love:**

- [From positive reviews]

**What customers complain about:**

- [From negative reviews — this is where our opportunity lives]

## Recent Developments (Last 12 Months)

- [Product update / feature launch]
- [Funding / M&A]
- [Partnership / integration]
- [Pricing change]

## Head-to-Head: [Competitor] vs. [Us]

| Dimension              | [Competitor] | [Us] | Winner |
| ---------------------- | ------------ | ---- | ------ |
| Price point            |              |      |        |
| Core strength          |              |      |        |
| Target customer        |              |      |        |
| Onboarding speed       |              |      |        |
| [Key differentiator 1] |              |      |        |
| [Key differentiator 2] |              |      |        |
| Weakest area           |              |      |        |

## Where They Beat Us (Be Honest)

[1–3 areas where they genuinely win — acknowledging this builds investor trust]

## Where We Beat Them

[1–3 specific, defensible advantages — not just "we're newer and faster"]

## Their Weakness = Our Opening

[1–2 sentences: the specific customer segment or use case where their weakness
is our biggest opportunity]

## Sources

[All URLs]
```

### Phase 5: Power Grid Contribution

After completing the profile, output the row this competitor would add to the
Section 07 Power Grid (competitive comparison table). Format:

```
| [Company] | $[price] | [✅/❌] | [✅/❌] | [✅/❌] | [✅/❌] | [✅/❌] |
```

Where columns are the 5–7 most differentiating capabilities (defined when
building Section 07).

### Phase 6: Report

1. Top 3 insights about this competitor
2. Their biggest weakness (= our biggest opening)
3. The Power Grid row
4. File path
