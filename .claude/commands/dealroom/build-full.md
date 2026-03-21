# Build Full Data Room

Build all sections of the investor data room in the correct order. Runs research
first, then builds, then reviews. The complete pipeline.

> This command takes time. It's thorough by design. Critical: stops before
> starting if context files are empty — garbage in = garbage out.

## Variables

No arguments needed.

---

## Instructions

### Phase 1: Pre-Flight Check

Read ALL context files:

- CLAUDE.md
- context/fundraising-stage.md ← most important — determines everything
- context/business-info.md
- context/personal-info.md
- context/product-description.md
- context/target-customer.md
- context/current-data.md
- context/strategy.md
- context/competitors-list.md
- context/investor-faq.md
- context/legal-readiness.md
- context/engineering.md
- reference/investor-benchmarks.md

**STOP and report if any of these are empty or thin:**

- fundraising-stage.md (stage, raise amount, instrument)
- business-info.md (what we do, industry)
- current-data.md (any metrics we have)
- personal-info.md (founding team)

Ask: "These context files need to be filled in before I can build a credible
data room. Which would you like to fill in now, or shall I proceed with
assumptions clearly labeled?"

Report what's complete and what's missing. Give a readiness score (e.g., "7/10 —
missing competitor list and financial metrics").

### Phase 2: Legal Flag Check

Read context/legal-readiness.md. Flag any 🔴 deal-killers before doing anything
else.

If there are deal-killers (missing IP assignments, no vesting, messy cap table),
say: "Before we build the data room, there are legal issues that would likely
kill a deal in diligence: [list them]. Do you want to continue building or
address these first?"

### Phase 3: Research Sprint

Run in parallel where possible:

**Batch 1 (simultaneously):**

- `/dealroom:research-problem` ← surfaces "Why Now" argument
- `/dealroom:research-market` ← bottom-up + top-down TAM
- `/dealroom:research-customer` ← ICP validation + acquisition channels

**After Batch 1:**

- `/dealroom:research-competitors` ← uses customer + market context; always
  include status-quo competitor
- `/dealroom:research-funding` ← stage-calibrated valuation benchmarks

**Also build:**

- `/dealroom:build-financial-model` ← stage-appropriate model before writing
  financials section

### Phase 4: Narrative Sprint

Before writing any slides, build the story architecture:

`/dealroom:build-pitch-narrative` — Produces the master narrative brief:

- One-sentence logline (investor + customer + elevator variants)
- Sparkline map (What Is / What Could Be for every slide)
- Raskin's 5 steps applied to your startup context
- Sawtooth contrast waves (tactical → operational → commercial)
- Opening hook (3 options; recommended choice)
- Why Now paragraph (specific, not generic)
- Slide headline drafts (every headline a standalone assertion)

Save to: `outputs/00-narrative/pitch-narrative-brief-[date].md`

> Every `/dealroom:build-section` run after this point reads the narrative brief
> first. Do not skip this phase — sections built without a brief become
> disconnected islands.

### Phase 5: Build Sprint

Build sections in dependency order, referencing the narrative brief:

1. `/dealroom:build-section 02` — Problem/Solution (anchored to sawtooth waves
   - Promised Land)
2. `/dealroom:build-section 03` — Market Size (bottom-up lead; SOM aligned with
   financials)
3. `/dealroom:build-section 04` — Product (demo placement: after problem
   established)
4. `/dealroom:build-section 05` — Engineering (architecture, tech stack, dev +
   ops processes)
5. `/dealroom:build-section 06` — Traction & Metrics (from current-data.md;
   stage-calibrated)
6. `/dealroom:build-section 10` — Team (story > resume; founder-market fit
   narrative)
7. `/dealroom:build-section 07` — Business Model (uses financial model output)
8. `/dealroom:build-section 08` — Competitive Landscape (uses all competitor
   profiles; Power Grid format)
9. `/dealroom:build-section 09` — Go-to-Market (one sharp wedge; channel
   evidence required)
10. `/dealroom:build-section 11` — Financials (stage-appropriate model; PDF
    summary)
11. `/dealroom:build-section 12` — Use of Funds (every dollar tied to a
    milestone)
12. `/dealroom:build-investment-memo` — Standalone forwardable one-pager
    (Section 13; saves to `outputs/13-investment-memo/`)
13. `/dealroom:build-section 14` — Appendix (aggregates everything; includes FAQ
    from investor-faq.md)
14. `/dealroom:build-section 01` — Executive Summary (ALWAYS LAST — synthesises
    everything)

### Phase 6: Consistency Check

After all sections are built, cross-check these numbers across ALL documents:

| Number            | Check                             |
| ----------------- | --------------------------------- |
| Market size (TAM) | Same in sections 01, 03, 08       |
| MRR/ARR           | Same in sections 01, 06, 11       |
| Raise amount      | Same in sections 01, 11, 12       |
| Runway post-raise | Consistent with burn + raise      |
| Team count        | Same in sections 01, 10           |
| SOM figure        | Matches year-5 in financial model |
| Use of funds %    | Adds to 100%                      |

Flag any conflicts — they must be fixed before sending to investors.

### Phase 7: Stage-Specific Final Check

**If Pre-Seed:**

- [ ] "Why Now" argument present in Section 02
- [ ] Team section is the strongest section
- [ ] Missing data handled transparently (not hidden)
- [ ] Financial model is simple — not an over-engineered 50-tab monster
- [ ] Investment memo works as a standalone forwardable document

**If Seed:**

- [ ] MRR/growth data present and sourced
- [ ] Cohort retention data present (or clearly flagged as missing)
- [ ] Unit economics (CAC, LTV) present with actuals
- [ ] Scenario analysis in financial model
- [ ] Customer references available

### Phase 8: Run Investor Review

Run `/dealroom:investor-review` on the completed data room. This produces a
single file at `outputs/99-reviews/investor-review-[date].md` containing both
the diagnostic report and the prioritised action list.

### Phase 9: Final Report

1. All sections completed (with file paths)
2. Consistency issues found and fixed
3. Any sections that are thin (and why)
4. Legal flags still outstanding
5. Investor review score and top 3 fixes needed
6. **Data room readiness:**
   - Ready to send teaser deck? [Yes/No]
   - Ready for Stage 2 access (full deck)? [Yes/No]
   - Ready for Stage 3 (financials + cap table)? [Yes/No]
7. File path for review report
8. Recommended next step
