# Research Customer

Research and validate the ideal customer profile (ICP). The output powers the
Go-to-Market, Traction, and Competitive sections — and surfaces acquisition
channel intelligence.

> Research insight: The GTM section fails most often because founders list
> channels without evidence they work. This command specifically hunts for
> channel proof.

## Variables

No arguments — reads context/target-customer.md and context/business-info.md

---

## Instructions

### Phase 1: Load Context

Read:

- context/target-customer.md
- context/business-info.md
- context/fundraising-stage.md

Identify who we claim our customer is. Note what we still don't know.

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

### Phase 2: Research by Business Type

**If B2B:**

1. **ICP sizing** — LinkedIn Sales Navigator estimates, industry association
   data, government SIC/NAICS counts: how many companies fit our ICP?

2. **Buyer research** — Who approves the purchase? (the user? a VP? a C-suite
   exec?) Job titles at target companies. Decision-making process in this
   category.

3. **Willingness to pay** — Comparable tool pricing in this category. What are
   buyers paying today? Are there any salary surveys or budget surveys that show
   allocated spend?

4. **Job postings** — Search LinkedIn for job postings at target companies in
   this function. Volume of open roles = budget priority and organisational
   importance.

5. **Communities** — Where do these buyers hang out? Specific subreddits,
   LinkedIn groups, Slack communities, newsletters, podcasts, events. This is
   acquisition channel intelligence.

6. **Reviews of alternatives** — G2, Capterra, Trustpilot for the category. What
   do buyers love? What's missing? What would make them switch?

7. **Voice of Customer quotes** — Direct quotes from reviews, forums, LinkedIn
   posts describing the pain. Aim for 5+ quotes that could anchor the Problem
   slide.

**If B2C:**

1. **Demographic sizing** — Size of target demographic from census, Nielsen, Pew
   Research, or similar

2. **Spending behaviour** — How much does this demographic spend on related
   products/services?

3. **App store / reviews** — What do people love and hate about existing
   solutions?

4. **Social listening** — Reddit, TikTok comments, Twitter/X threads where this
   demographic discusses the problem

5. **Trend data** — Is this demographic growing or shrinking? Is their
   engagement with this category increasing?

### Phase 3: Acquisition Channel Research

For each potential channel, find:

- Evidence that this channel works for this ICP (not just assumption)
- Rough CAC benchmarks for this channel in this category
- What content/approach works (from successful companies in adjacent spaces)

Priority channels to research (pick the most relevant 3–4):

- [ ] LinkedIn outbound
- [ ] Content/SEO
- [ ] Product-led growth / virality
- [ ] Community-led (which communities?)
- [ ] Partnerships / integrations
- [ ] Events / conferences (which ones does the ICP attend?)
- [ ] Cold email
- [ ] Paid social (which platforms?)
- [ ] Influencer / creator
- [ ] Sales-led (which roles to target?)

### Phase 4: Write Customer Research Brief

Save to: `research/customers/icp-research-[YYYY-MM-DD].md`

```markdown
# Customer Research Brief

**Date:** [today] **Business type:** [B2B / B2C]

## ICP Definition (Our Claim)

[Who we said our customer is]

## ICP Sizing

- **Total companies / people fitting ICP:** [X] (source: [URL])
- **Of which, reachable by our channels:** [X]

## What They Care About (Validated)

[From reviews, forums, job postings — what matters most to this buyer]

## Buying Behaviour

- **Who approves the purchase?** [Role title — not just "the user"]
- **Typical buying cycle:** [days / weeks / months]
- **Budget range / willingness to pay:** $[X]–$[Y]/year (based on [evidence])
- **Decision triggers:** [What causes them to start looking for a solution?]

## Where They Spend Time (Acquisition Channel Intelligence)

| Channel     | Evidence It Works | Estimated CAC | Notes |
| ----------- | ----------------- | ------------- | ----- |
| [Channel 1] | [link / example]  | $[X]          |       |
| [Channel 2] |                   |               |       |
| [Channel 3] |                   |               |       |

## Voice of Customer — Direct Quotes

> "[Quote 1]" — [source: G2 / Reddit / LinkedIn]

> "[Quote 2]" — [source]

> "[Quote 3]" — [source]

> "[Quote 4]" — [source]

> "[Quote 5]" — [source]

## ICP Refinement

[Based on research — should we adjust our ICP? Any sub-segment that looks more
promising? Any segment we assumed was good that looks harder than expected?]

## Sources

[All URLs]
```

### Phase 5: Report

1. How large is the ICP? Is it big enough?
2. Most validated acquisition channel — what's the evidence?
3. Best customer quote for the deck
4. Any ICP assumptions that research challenged
5. File path
