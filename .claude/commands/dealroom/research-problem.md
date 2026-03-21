# Research Problem

Research the problem our startup solves. Produce a thorough, source-backed brief
that powers the Problem/Solution section and — critically — surfaces the "Why
Now" argument.

> Research insight: "Why Now" is absent from 75% of pitch decks and is the #1
> element investors say is missing. This command specifically hunts for it.

## Variables

No arguments — reads from context/business-info.md and
context/target-customer.md

---

## Instructions

### Phase 1: Load Context

Read:

- context/business-info.md
- context/target-customer.md
- context/fundraising-stage.md (to calibrate depth needed)

Identify: what is the core problem we claim to solve? Who experiences it?

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

### Phase 2: Research

Search across these angles:

1. **Scale of the problem** — How many people/companies face this? Stats on
   frequency, cost, impact?

2. **Economic cost** — What does this problem cost in dollars, time, or
   outcomes? Hard numbers win.

3. **Current solutions and their failures** — What do people use today? What are
   the documented failures? Look at G2/Capterra reviews of alternatives — the
   1–3 star reviews are gold.

4. **Customer voice** — Forum posts, Reddit, G2/Capterra complaints, LinkedIn
   posts from people describing the pain. Find at least 3 direct quotes that
   could appear in the data room.

5. **Industry / analyst coverage** — Gartner, Forrester, McKinsey, CB Insights
   validating this problem.

6. **"Why Now" triggers** — What has RECENTLY changed that makes this problem
   more urgent or newly solvable? This is the highest-value research angle. Look
   for:

   - **Technology shift**: AI/ML, mobile penetration, cloud, sensors — something
     that didn't exist 3–5 years ago
   - **Regulatory change**: New laws, compliance requirements, enforcement
     change
   - **Behavioural shift**: Remote work, generational change, post-COVID habit
     formation
   - **Cost inflection**: Something expensive is now cheap (compute, storage,
     connectivity)
   - **Market maturity**: Adjacent market hit critical mass; incumbent exited or
     lost focus
   - **Data availability**: New datasets or APIs now make something possible

7. **News coverage** — Recent articles describing this as a growing or newly
   recognised problem

### Phase 3: Write Research Brief

Save to: `research/problem/problem-brief-[YYYY-MM-DD].md`

```markdown
# Problem Research Brief

**Date:** [today] **For:** [company name] — [one-line description]

## The Problem (Our Claim)

[How we describe the problem]

## Evidence the Problem Is Real

[Stats, reports, and data — with sources. Aim for 3+ independent data points.]

## Scale: How Many Affected

[Number of companies or people, ideally with a dollar cost attached]

## Economic Cost

[What this problem costs in money, time, or outcomes — be specific]

## How People Currently Cope (and Why It Fails)

| Current Solution | Why It's Inadequate | Source |
| ---------------- | ------------------- | ------ |
|                  |                     |        |

## Customer Voice — Direct Quotes

> "[Quote 1]" — [source: e.g., G2 review, Reddit r/[sub], LinkedIn]

> "[Quote 2]" — [source]

> "[Quote 3]" — [source]

## Analyst / Industry Coverage

[Authoritative sources validating this problem — names, publication, year]

## "Why Now" — The Trigger Argument

**The change:** [What specifically changed in the last 2–3 years] **Why it
matters:** [How this change makes the problem more urgent or the solution newly
viable] **Evidence:** [Links, reports, data points supporting this]

[If multiple "Why Now" angles exist, list all — we'll pick the strongest for the
deck]

## Key Insight for Data Room

[1–2 sentence synthesis: the most compelling framing of this problem for
investors, combining the scale of pain + the "Why Now" moment]

## Sources

[All URLs cited]
```

### Phase 4: Report

1. The 3 most compelling evidence pieces found
2. The "Why Now" argument — what is it and how strong is the evidence?
3. Best direct customer quote to use in the deck
4. Any claims we made that couldn't be validated (flag these — false precision
   destroys trust)
5. File path

### Optional: PESTLE Context (for regulated industries or macro-sensitive markets)

If the startup operates in a regulated industry (fintech, health, legal, food)
or if macro factors are core to the "Why Now" argument, add a PESTLE section:

- **Political:** Government policy, grants, elections, trade policy affecting
  the space
- **Economic:** Inflation, unemployment, exchange rates, disposable income
  trends
- **Social:** Demographics, behaviour shifts, health consciousness, career
  attitudes
- **Technological:** Automation, AI, platform shifts enabling or threatening the
  model
- **Legal:** New laws, compliance requirements, licensing changes
- **Environmental:** Sustainability pressure, carbon footprint, CSR expectations

PESTLE findings often strengthen the "Why Now" argument by surfacing external
changes that make the problem more urgent or the solution newly viable.

Save PESTLE findings in the same problem-brief file under a "## PESTLE Context"
heading.
