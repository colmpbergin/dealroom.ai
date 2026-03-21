# Stage Check

Audit the deal room against the specific expectations for pre-seed OR seed
investors. Produces a calibrated gap analysis and action plan based on your
fundraising stage.

## Variables

No arguments — reads context/fundraising-stage.md to determine stage.

---

## Instructions

### Phase 1: Load Context

Read:

- context/fundraising-stage.md
- context/current-data.md
- reference/investor-benchmarks.md
- All outputs/ files

### Phase 2: Determine Stage and Apply Framework

**If Pre-Seed:**

The data room must answer: "Is this a compelling team with a credible insight
about a big market?"

Evaluate against pre-seed minimum viable deal room (10 must-haves):

- [ ] Pitch deck (6–15 slides)
- [ ] Executive summary / one-pager (forwardable standalone)
- [ ] Founding team bios with LinkedIn links
- [ ] Cap table (even if just founders + advisor equity)
- [ ] Basic 12–18 month financial model (cash flow focus)
- [ ] Market research and competitive landscape
- [ ] Product demo or mockups (screenshots minimum)
- [ ] Legal documents (incorporation proof, IP assignments)
- [ ] Customer/user insights from discovery (how many interviews, what was
      learned)
- [ ] Any commercial proof points (LOIs, pilots, waitlist size)

Pre-seed bonus points (assess if present):

- [ ] Signed LOIs or pilot agreements from recognizable names
- [ ] Beta users with engagement data (DAU, session length, retention)
- [ ] Waitlist of qualified prospects (not just signups)
- [ ] Accelerator acceptance
- [ ] "Why Now" argument clearly articulated
- [ ] Prior founder exits or domain expertise

Pre-seed red flags to flag:

- [ ] Financial model too complex (investors want to see thinking, not a 50-tab
      model)
- [ ] Traction section claims more than exists (false precision hurts trust)
- [ ] Missing team section (this is the whole investment at pre-seed)
- [ ] Weak "Why Now" (most commonly missing element)

**If Seed:**

The data room must answer: "Is there product-market fit, and can this team scale
it?"

Evaluate against seed investor checklist:

- [ ] All pre-seed items (above)
- [ ] MRR/ARR with month-over-month growth data
- [ ] Revenue growth chart (minimum 6 months of actuals)
- [ ] Cohort retention analysis (investors most want this — shows real PMF)
- [ ] Unit economics with actuals: CAC, LTV, LTV:CAC, payback period
- [ ] Gross margin by segment
- [ ] Monthly P&L (actuals + projections)
- [ ] Scenario analysis (base, upside, downside)
- [ ] Customer references (contactable, 2+ minimum)
- [ ] Net Revenue Retention data
- [ ] Sales pipeline or customer funnel data
- [ ] Detailed hiring plan

Seed benchmark check (compare against reference/investor-benchmarks.md):

- MRR: Is it at seed-stage expectations?
- Growth rate: Is MoM growth rate investable?
- Gross margin: Is it above 60% (SaaS) / appropriate for business model?
- Churn: Is monthly churn below 5%?
- LTV:CAC: Is it above 3:1?
- CAC payback: Is it under 12 months?
- Runway post-raise: Will it reach 18+ months?

### Phase 3: Write Stage-Check Report

Save to: `outputs/99-reviews/stage-check-[YYYY-MM-DD].md`

Structure:

```markdown
# Stage Check Report

**Date:** [today] **Stage:** [pre-seed / seed]

## Summary

[2–3 sentences: where this deal room stands vs. stage expectations]

## Minimum Viable Deal Room Checklist

[The full checklist above with checkmarks]

## Metrics vs. Benchmarks

| Metric       | Our Number | Seed Benchmark | Assessment |
| ------------ | ---------- | -------------- | ---------- |
| MRR          |            | $20–50K        |            |
| MoM Growth   |            | 15–20%+        |            |
| Gross Margin |            | 70%+           |            |
| Churn        |            | <5%            |            |
| LTV:CAC      |            | 3:1+           |            |

## What's Working

[List genuine strengths relative to stage]

## Critical Gaps for This Stage

[What a seed/pre-seed investor will specifically notice is missing]

## Recommended Additions Before Investor Outreach

[Specific, prioritized list of what to add/fix]

## Stage Readiness Assessment

[Ready to send / Almost ready / Needs significant work]
```

### Phase 4: Report

1. Stage readiness verdict
2. Top 3 gaps to fix for this specific stage
3. Any metrics that are below benchmark (with specific numbers)
4. File path
