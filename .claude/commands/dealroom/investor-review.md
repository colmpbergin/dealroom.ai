# Investor Review

Read everything in the data room and deliver a rigorous critique from a VC's
perspective. This command is grounded in research from 40+ VC firms — a16z,
Underscore VC, First Round, YC, Sequoia, DocSend, and others. Do not soften the
feedback. Founders need truth, not comfort.

## When to use /dealroom:investor-review vs. the fact-checker agent

**Use `fact-checker`** (the agent) during or after the build phase for a fast
data integrity check: numbers match, sources are accurate, red flags present.
Run it as many times as needed mid-build.

**Use `/dealroom:investor-review`** (this command) once, as the final gate
before any investor outreach. It goes beyond facts: narrative quality,
section-by-section ratings (1–5), strategic gaps, and staged access readiness.
This is the comprehensive VC-perspective audit — run it last.

Typical sequence: `fact-checker` → fix → `fact-checker` →
`/dealroom:investor-review` → send.

## Variables

No arguments needed.

---

## Instructions

### Phase 1: Load Everything

Read:

- ALL context/ files (especially fundraising-stage.md and investor-faq.md)
- reference/investor-benchmarks.md
- ALL research/ files
- ALL outputs/ files

### Phase 2: The 9-Question Test

Every deal room must clearly answer these. Check each one:

- [ ] **Why will you win?** — Not just why you're good, but why you beat
      everyone else
- [ ] **Why now?** — What changed in the world that makes this the right moment?
      (Missing from 75% of decks)
- [ ] **Why this team?** — Founder-market fit. Why are THESE people the ones to
      build it?
- [ ] **What's the evidence this works?** — Traction, validation, proof. What
      can't be argued with?
- [ ] **What are the unit economics?** — CAC, LTV, margins. Or credible
      benchmarked assumptions at pre-seed.
- [ ] **What's the exit?** — Implied or explicit. What does a great outcome look
      like in 7–10 years?
- [ ] **What are the risks?** — Proactively acknowledged. Investors trust
      founders who know their weaknesses.
- [ ] **What does this capital accomplish?** — Specific milestones, not generic
      spend categories.
- [ ] **When do you raise again at what metrics?** — Series A readiness: what
      metrics trigger the next round?

### Phase 3: Critical Consistency Check

Cross-check these across ALL documents:

- Market size number (must be identical across deck, market section, exec
  summary)
- Revenue/MRR figures (must match between traction, financials, and exec
  summary)
- Team count and names (must be consistent)
- Raise amount (must match across all sections)
- Runway post-raise (must be consistent with burn rate and raise amount)
- Use of funds breakdown (must add up to 100% of raise amount)

### Phase 4: Red Flag Audit

Check against the research-backed list of deal-killers:

**Immediate Deal-Killers** (🔴):

- [ ] Numbers inconsistent between any two documents
- [ ] "No competition" or "no direct competitors" claimed
- [ ] Hockey-stick projections without driver logic
- [ ] Missing IP assignment documentation (check legal-readiness.md)
- [ ] Founders with <50% combined equity at seed stage
- [ ] Cap table issues (check legal-readiness.md)
- [ ] Financial model shared as interactive Excel (must be PDF)
- [ ] Raise amount with no milestone connection ("we'll use it to grow")

**Trust Destroyers** (🟡):

- [ ] Projections that imply >50% market capture
- [ ] TAM-only market sizing with no bottom-up validation
- [ ] Competitive section that ignores obvious alternatives
- [ ] Team section that reads like a resume, not a story
- [ ] Use of Funds with only generic categories
- [ ] Financials without explicitly labeled assumptions
- [ ] Missing "Why Now" argument

**Process Issues** (🟠):

- [ ] Executive summary that doesn't work as a standalone document
- [ ] Product demo longer than 3 minutes
- [ ] Investor FAQ not yet built (context/investor-faq.md)
- [ ] Any section where a key investor question isn't answered

### Phase 5: Stage-Calibrated Assessment

Read fundraising-stage.md and apply stage-specific standards:

**If Pre-Seed:**

- Team section should be the strongest section — it carries the most weight
- Missing traction is acceptable IF qualitative evidence is strong
- Financial model should be simple — flag if it's overly complex
- "Why Now" argument is critical — flag if weak or missing

**If Seed:**

- Traction must be present — waitlists and interviews are NOT enough
- Unit economics must appear even if early (use actuals, not benchmarks)
- Financial model must have monthly detail and scenario analysis
- Retention data (cohort analysis) is expected by institutional seed VCs

### Phase 6: Section-by-Section Ratings

For each completed section, rate 1–5 and identify the single highest-priority
fix:

| Section                  | Rating (1–5) | Biggest Gap | Priority Fix |
| ------------------------ | ------------ | ----------- | ------------ |
| 01 Executive Summary     |              |             |              |
| 02 Problem & Solution    |              |             |              |
| 03 Market Size           |              |             |              |
| 04 Product               |              |             |              |
| 05 Engineering           |              |             |              |
| 06 Traction & Metrics    |              |             |              |
| 07 Business Model        |              |             |              |
| 08 Competitive Landscape |              |             |              |
| 09 Go-to-Market          |              |             |              |
| 10 Team                  |              |             |              |
| 11 Financials            |              |             |              |
| 12 Use of Funds          |              |             |              |
| 13 Investment Memo       |              |             |              |
| 14 Appendix              |              |             |              |

### Phase 7: Write Review Report

Save to: `outputs/99-reviews/investor-review-[YYYY-MM-DD].md`

The report has two parts in a single file — the diagnostic first, then the
action list.

```markdown
# Investor Review Report

**Date:** [today] **Stage:** [pre-seed / seed] **Overall Readiness:** [X/10]

## The 9-Question Test

[Pass/Fail for each — with specific note on what's missing for any Fails]

## 🔴 Deal-Killers — Fix Before Sending Anything

[List only genuine deal-killers. Be specific. Don't soften.]

## 🟡 Important Gaps — Fix Before Investor Meetings

[Things that would materially hurt your chances]

## 🟠 Polish Items — Nice to Have

[Minor improvements worth making if time allows]

## Consistency Issues Found

[Any numbers or facts that conflict across documents]

## Investor Questions Not Yet Answered

[From the investor-faq.md — questions that aren't addressed in the room]

## Strongest Sections

[What's genuinely compelling — be honest about this too]

## Section Ratings

[The table from Phase 6]

## Data Room Readiness for Staged Access

- **Ready to send teaser deck?** [Yes/No — why]
- **Ready to open Stage 2 (full deck + overview)?** [Yes/No — why]
- **Ready to open Stage 3 (financials + cap table)?** [Yes/No — why]

---

## Action List

Every action item from the review above, consolidated into a single prioritised
checklist.

### 🔴 Blockers — Fix Before Any Investor Contact

- [ ] [action] — [owner]

### 🟡 Pre-Meeting — Fix Before First Investor Meeting

- [ ] [action] — [owner]

### 🟠 Stage 2 — Before Sending Full Deck

- [ ] [action] — [owner]

### 🟢 Stage 3 — Before Opening Financials + Cap Table

- [ ] [action] — [owner]

### 🔵 Strengthening — Would Materially Improve the Deal Room

- [ ] [action] — [owner]

### Summary Table

| Priority | Action | Owner                      | When                 |
| -------- | ------ | -------------------------- | -------------------- |
| 🔴       | ...    | Founder / Claude / advisor | Before any outreach  |
| 🟡       | ...    | ...                        | Before first meeting |
```

### Phase 8: Report

1. Overall readiness score out of 10
2. The 1–3 things that must be fixed before sending to any investor
3. Honest assessment: is this ready to send a teaser to investors?
4. File path for the review report
