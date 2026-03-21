# Build Financial Model

Build a stage-appropriate financial model grounded in VC expectations. Different
outputs for pre-seed vs. seed. Always delivered as a structured document (not an
interactive spreadsheet — Underscore VC: "Don't post a fully interactive Excel
model").

## Variables

No arguments — reads context/fundraising-stage.md to determine the right model
type.

---

## Instructions

### Phase 1: Load Context

Read:

- context/fundraising-stage.md ← determines model complexity
- context/current-data.md ← actual metrics to use as inputs
- context/strategy.md ← fundraise goals and milestones
- context/business-info.md ← business model type
- reference/investor-benchmarks.md ← what investors expect at this stage

### Phase 2: Determine Model Type

**Pre-Seed Model** (when stage = pre-seed):

- Format: 1-sheet structure, PDF delivery
- Time horizon: 12–18 months monthly; 3 years directional annual
- Required tabs: Cash Flow, Headcount, Assumptions
- NOT required: P&L, balance sheet, scenario analysis

**Seed Model** (when stage = seed):

- Format: Multi-tab structure, PDF delivery (full model available on request)
- Time horizon: Monthly for 18–36 months; annual for years 3–5
- Required tabs: Income Statement, Cash Flow, Unit Economics, Headcount,
  Assumptions, Scenarios
- Optional: Balance sheet, cohort model, sales capacity model

### Phase 3: Build the Model

**CRITICAL RULE**: Every assumption must be explicitly labeled and separated
from calculated outputs. Chris Hoyt of Moonshots Capital: "We need the model to
show us how vision translates into growth."

**Pre-Seed Model Structure:**

```
## Financial Model — [Company Name]
**Date:** [today] | **Stage:** Pre-Seed | **Prepared for:** Investor diligence

---

### Assumptions (all clearly labeled — change these to run scenarios)

**Revenue Assumptions**
- First paying customer: [Month X]
- Initial ARPU: $[X]/month
- Month 1 customers: [X]
- Monthly customer growth rate: [X]% (assumption — based on [rationale])
- Churn rate: [X]%/month (assumption — based on industry benchmark: [source])

**Cost Assumptions**
- Founder salaries: $[X]/year each (assumption — deferred/market rate)
- First engineering hire: Month [X] at $[X]/year
- [List each planned hire with start month and salary]
- 25% overhead on all salaries (benefits, taxes, equipment)
- Infrastructure/tools: $[X]/month
- Sales & marketing: $[X]/month starting Month [X]

---

### Cash Flow Projection (Monthly)

| | M1 | M2 | M3 | M4 | M5 | M6 | M7 | M8 | M9 | M10 | M11 | M12 |
|--|----|----|----|----|----|----|----|----|----|----|-----|-----|
| Customers (cumul.) | | | | | | | | | | | | |
| MRR | | | | | | | | | | | | |
| **Revenue** | | | | | | | | | | | | |
| Team costs | | | | | | | | | | | | |
| Infrastructure | | | | | | | | | | | | |
| S&M | | | | | | | | | | | | |
| Other OpEx | | | | | | | | | | | | |
| **Total Burn** | | | | | | | | | | | | |
| **Net Cash Flow** | | | | | | | | | | | | |
| **Cash Balance** | | | | | | | | | | | | |

---

### Headcount Waterfall

| Role | Start Month | Annual Salary | Monthly Cost | With 25% Overhead |
|------|------------|---------------|--------------|-------------------|
| Founder 1 (CEO) | M1 | $[X] | $[X] | $[X] |
| Founder 2 (CTO) | M1 | $[X] | $[X] | $[X] |
| [Next hire] | M[X] | $[X] | $[X] | $[X] |

---

### Year 1–3 Summary (Directional)

| | Year 1 | Year 2 | Year 3 |
|--|--------|--------|--------|
| Revenue | | | |
| Total Costs | | | |
| Net Cash Flow | | | |
| Customers (end of year) | | | |
| MRR (end of year) | | | |

---

### Key Metrics Summary

| Metric | Month 12 | Month 18 | Year 3 |
|--------|----------|----------|--------|
| MRR | | | |
| ARR | | | |
| Gross Margin | | | |
| Burn Rate | | | |
| Cash Balance | | | |
| Runway from Raise | | | |

---

### Use of Raise: $[X]

| Category | Amount | % | Milestone Enabled |
|----------|--------|---|------------------|
| Team / Hiring | $[X] | [X]% | [specific milestone] |
| Product / R&D | $[X] | [X]% | [specific milestone] |
| Sales & Marketing | $[X] | [X]% | [specific milestone] |
| Operations / Tools | $[X] | [X]% | [specific milestone] |
| Buffer / Reserve | $[X] | [X]% | 3-month emergency runway |
| **Total** | **$[X]** | **100%** | |

---

### Runway Analysis

- Cash in bank today: $[X]
- Raise amount: $[X]
- Total available: $[X]
- Monthly burn (Month 12): $[X]
- **Runway post-raise: [X] months**
- Next fundraise trigger: [specific metrics — e.g., "$150K MRR" or "100 paying customers"]
```

**Seed Model** adds:

- Monthly P&L with gross margin by product line
- Scenario analysis (base/upside/downside with toggle assumptions)
- Unit economics tab: CAC by channel, LTV calculation, cohort payback
- Sales capacity model: reps × quota × ramp = bookings

### Phase 4: Save

Save to: `research/financials/financial-model-[stage]-[YYYY-MM-DD].md` Also save
summary to: `outputs/11-financials/financials-summary-[YYYY-MM-DD].md`

### Phase 5: Report

1. Confirm model built and saved
2. Key headline numbers: runway, MRR at 12 months, cash-out date without raise
3. Flag any assumptions that are unusually aggressive or conservative
4. Note: "This model is ready to share as PDF. Full assumptions available on
   request."
5. File paths
