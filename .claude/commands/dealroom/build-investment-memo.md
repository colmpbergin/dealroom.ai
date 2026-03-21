# Build Investment Memo

Write the executive investment memo — the forwardable one-pager that reads like
a VC's internal investment memo. This is a separate, critical document that many
founders skip.

Research insight: Ali Tamaseb of DCVC recommends founders write the memo the VC
will write to convince her partners — "Why not prepare this document yourself?"

## Variables

No arguments needed — reads all context and completed outputs.

---

## Instructions

### Phase 1: Prerequisites Check

Before writing, confirm these sections are drafted:

- 02-problem-solution
- 03-market-size
- 06-traction
- 10-team
- 11-financials or financial model

If any are missing, list them and ask: "Should I build those first, or draft the
memo from context files?"

### Phase 2: Load Everything

Read all context/ files, reference/investor-benchmarks.md, and all outputs/
files.

### Phase 3: Write the Investment Memo

**Format**: 1–2 pages maximum. Dense, analytical prose. Not a pitch — an
argument. **Audience**: A VC associate sharing this with their investment
partners. **Tone**: Third-person, analytical, balanced. Show strengths AND
acknowledge risks honestly.

Structure (Sequoia-informed, a16z-validated):

```markdown
# [Company Name] — Investment Memo

**Date:** [today] | **Stage:** [Pre-Seed/Seed] | **Ask:** $[X] at $[Y]
valuation/cap

## Company Purpose

[One sentence. What does this company do and for whom?]

## The Problem

[2–3 sentences. The pain, the affected market, quantified if possible.]

## Why Now

[2–3 sentences. The specific external change that makes this the right moment.]

## The Solution

[2–3 sentences. What they've built and the core value proposition.]

## Market Opportunity

- **TAM**: $[X]B ([source])
- **SAM**: $[X]B ([reasoning])
- **SOM**: $[X]M (3–5 year target)
- **Growth**: [X]% CAGR

## Traction

[The strongest proof points in 3–5 bullet points. Quantified. No vague claims.]

## Business Model

[2 sentences: how they make money, unit economics summary]

## Why This Team

[2–3 sentences connecting team backgrounds to this specific opportunity]

## Competitive Landscape

[2 sentences: who else exists, why this team wins]

## Financials

- **Current MRR/ARR**: $[X]
- **Burn Rate**: $[X]/month
- **Runway**: [X] months
- **Raise**: $[X] at $[Y] cap/valuation
- **Post-raise runway**: [X] months

## Risks

[2–3 honest risks. This section builds trust. Don't skip it.]

1. [Risk 1 and how it's being mitigated]
2. [Risk 2]
3. [Risk 3]

## Use of Funds

[3–4 bullet points: $ allocation tied to specific milestones]

## Next Milestone / Series A Trigger

[What metrics will this company have when they raise the next round?]

## Why We Should Invest

[3 reasons. Lead with the most compelling.]

1.
2.
3.
```

### Phase 4: Save

Save to: `outputs/13-investment-memo/investment-memo-[YYYY-MM-DD].md`

Also save a shorter version (under 400 words) as:
`outputs/01-executive-summary/one-pager-[YYYY-MM-DD].md`

> Note: `outputs/01-executive-summary/` intentionally contains three documents:
> the executive summary (written by `/dealroom:build-section 01`), the
> investment memo, and the one-pager. All three are investor-facing documents
> for Stage 1–2 access. Each has a distinct filename.

### Phase 5: Report

1. Confirm memo written and saved
2. Note if any section is thin and why
3. Identify the single most compelling element of this memo
4. Flag any risk that was softened and suggest being more direct about it
5. File paths for both documents
