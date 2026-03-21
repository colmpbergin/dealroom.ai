# Build Section

Write one investor-ready data room section using all available context and
research. Grounded in standards from a16z, Underscore VC, Sequoia, YC, First
Round, and DocSend research.

## Variables

section: $ARGUMENTS (e.g., "03" for Market Size, "05" for Engineering, "08" for
Competitive Landscape)

---

## Section Map

| #   | Section               | Primary Research                      | Primary Context                           | Stage Notes                                                                     |
| --- | --------------------- | ------------------------------------- | ----------------------------------------- | ------------------------------------------------------------------------------- |
| 01  | Executive Summary     | ALL outputs must exist                | All context                               | Build last; must work as standalone forwardable doc                             |
| 02  | Problem & Solution    | research/problem/                     | business-info, target-customer            | Must include "Why Now" — missing from 75% of decks                              |
| 03  | Market Size           | research/market/                      | business-info                             | Bottom-up primary; top-down cross-check. TAM must be $1B+ for institutional VCs |
| 04  | Product               | (no research needed)                  | product-description                       | Demo video must be ≤3 minutes; screenshots required                             |
| 05  | Engineering           | (no research needed)                  | engineering                               | Non-technical opening; Architecture, Technologies, Processes subsections        |
| 06  | Traction & Metrics    | (no research needed)                  | current-data, fundraising-stage           | Stage-calibrated: pre-seed = qualitative OK; seed = actuals required            |
| 07  | Business Model        | research/financials/                  | business-info, strategy                   | Pricing must be coherent with GTM motion                                        |
| 08  | Competitive Landscape | research/competitors/                 | business-info, target-customer            | Never claim "no competition" — instant credibility loss                         |
| 09  | Go-to-Market          | research/market/, research/customers/ | target-customer, strategy                 | One sharp wedge, not a list of every channel                                    |
| 10  | Team                  | (no research needed)                  | personal-info                             | Story > resume; why THIS team. DocSend: team now rivals traction in importance  |
| 11  | Financials            | research/financials/                  | current-data, strategy, fundraising-stage | Stage-calibrated model; share as PDF only                                       |
| 12  | Use of Funds          | (no research needed)                  | strategy, current-data                    | Every dollar tied to a milestone, not a category                                |
| 13  | Investment Memo       | All completed sections                | All sections, investor-benchmarks         | Standalone forwardable one-pager; see `/build-investment-memo`                  |
| 14  | Appendix              | ALL research/ files                   | All context                               | Include FAQ built from investor-faq.md                                          |

---

## Instructions

### Phase 1: Load Context

Read:

1. CLAUDE.md
2. `./context/fundraising-stage.md` ← CRITICAL — calibrates everything
3. All other `./context` files
4. reference/investor-benchmarks.md ← for metrics standards and VC expectations
5. All relevant research files for this section (Note: The research is in the
   `./research` folder AND the `./hypothesis` folder (in the `./hypothesis`
   folder there is a `research-index.md` file that will explain what research
   might be relevant for what `output`))
6. Any other completed output sections (for consistency)

Identify: what stage are we? What proof points do we have? What's missing?

### Phase 2: Pre-Write Gap Check

Before writing, assess:

- Do we have enough material to write this section credibly?
- Are there missing pieces investors will definitely notice?
- Does this section's content connect to adjacent sections?

If critical research is missing: "I don't have [X] — should I run [command]
first, or proceed with clearly labeled assumptions?"

Do NOT silently fill gaps with invented data. Flag them, label assumptions, and
offer to research.

### Phase 3: Write — Stage-Calibrated Standards

**Universal standards for every section:**

- Tone: Confident but not arrogant. Evidence-backed, not hype.
- Every factual claim must come from context/ or research/ files
- Numbers must match exactly what appears in other sections
- Length: Tight and purposeful. Every sentence earns its place.

---

### Section-Specific Standards (updated from VC research)

**01 — Executive Summary**

- Max 1 page / 400 words. Must function as a standalone, forwardable document.
- Cover: what we do (1 sentence), problem + solution (2 sentences), market size,
  traction highlights, team hook, ask
- Structure like an investment memo — Ali Tamaseb: "prepare the document the VC
  partner wants to write to convince her partners"
- Lead with company purpose, not company history

**02 — Problem & Solution**

- Open with a specific customer experiencing a specific pain — make the investor
  feel it
- Show how they solve it today and WHY that fails (the gap your product fills)
- Transition to solution: map it directly to the pain points, feature by feature
- Include a "Why Now" argument — technology shift, regulation, behavior change,
  cost inflection
- Include one real customer quote if available
- ⚠️ Flag if "Why Now" is weak or missing — this is the most commonly missing
  element

**03 — Market Size**

- Lead with bottom-up TAM (# of target customers × ARPU) as the primary
  calculation
- Cross-check with top-down analyst report figures (Gartner, IDC, Grand View,
  etc.)
- Show SAM with reasoning (geographic + segment restrictions)
- Show SOM that ALIGNS with financial projections — if SOM = $50M, year-5
  revenue should be ≤$50M
- Include CAGR and market timing argument
- ⚠️ SOM that implies >30% market share is not credible

**04 — Product**

> Key investor question: **What are we building?** Architecture, tech stack, and
> engineering processes belong in Section 05 — Engineering.

- Lead with the user experience and the value they get, not a feature list
- Show 3–5 steps of a core use case
- Key features framed as outcomes ("You can do X" not "Feature Y exists")
- Product roadmap: near-term (0–6mo), medium-term (6–18mo), vision
- Note demo video location (should be ≤3 minutes)
- Describe defensibility / moat clearly

**05 — Engineering**

- Open with a non-technical one-paragraph statement of what the engineering
  approach signals to investors: production-readiness, scalability, security
  posture, defensibility
- **Architecture & Design:** Describe the overall pattern (microservices,
  serverless, monolith), cloud infrastructure, key design decisions with
  rationale, and security posture
  - Frame decisions as strategic choices, not just technical ones
  - Highlight anything that creates defensibility (e.g., proprietary data
    pipeline, custom ML infra)
- **Technologies:** List the core stack by layer (backend, frontend, AI/ML,
  DevOps)
  - Avoid exhaustive lists — focus on choices that signal quality or
    differentiation
  - Note any notable third-party dependencies that investors may ask about
- **Processes:** Cover both development/delivery (CI/CD, testing, code review,
  deployment) and operational (monitoring, incident response, SLAs, security
  practices)
  - Frame as execution discipline signals, not internal docs
  - Quantify where possible: "Every PR runs ruff, mypy, bandit, and pytest
    before merge"
- ⚠️ Avoid jargon without explanation — this must be readable by a non-technical
  investor
- ⚠️ Do not invent claims about test coverage, uptime, or certifications —
  source from context/engineering.md

**06 — Traction & Metrics** _If Pre-Seed:_

- Lead with the strongest proof point — waitlist size, LOIs, pilot agreements,
  customer interviews
- Quantify everything possible: "Interviewed 47 potential customers — 38
  confirmed pain X"
- Show engagement data from any beta or prototype users
- Accelerator acceptance, press, or advisor endorsements
- Label clearly: "We are pre-revenue. Here is what we have validated:"

_If Seed:_

- Lead with the single most impressive metric — typically MRR or growth rate
- Include revenue growth chart (month-by-month at minimum 6 months)
- Show cohort retention if available — this is what seed VCs most want to see
- Include unit economics: CAC, LTV, LTV:CAC ratio, payback period
- Benchmark against reference/investor-benchmarks.md and note where we stand
- ⚠️ Yoskovitz: "Don't wait 12 slides to show traction. If you've got proof,
  bring it forward."

**07 — Business Model**

- Revenue model first — be specific about the model type:
  - Subscription (SaaS): recurring monthly/annual, predictable revenue
  - Freemium → paid: free tier drives adoption, premium converts
  - Marketplace/transactional: take rate on GMV
  - Pay-as-you-go: usage-based (common in API, infra, AI)
  - Freeterprise: free individual → enterprise account pull-through (Slack, Zoom
    model)
  - Fee-for-service: fixed/variable fee per transaction (Stripe model)
- Pricing tiers with actual price points — investors will look these up anyway
- Key metrics for your model type:
  - SaaS: MRR, NRR, churn, LTV:CAC (target >3:1), payback period
  - Marketplace: GMV, take rate, liquidity (supply/demand ratio)
  - Usage-based: average revenue per unit, cohort expansion curves
- Gross margin target: 40%+ to be VC-backable; SaaS should target 60–80%
- Path to scale: why do margins improve as you grow?
- ⚠️ Pricing must be coherent with GTM motion — enterprise sales costs don't
  work for a $29/mo product
- ⚠️ Note from pricing research: "A 1% change in price = 8.6% change in
  profitability" (McKinsey). Validate pricing with customer willingness-to-pay
  data, not assumptions.

**08 — Competitive Landscape**

- NEVER claim "no competition" — every problem has alternatives, including "do
  nothing"
- Always include the "do nothing / status quo" as a competitor row
- Use a feature comparison table with quantified benefits — avoid the 2×2 magic
  quadrant
- Show 5–10 rows of SPECIFIC capabilities, not generic buzzwords
- Include direct competitors, indirect competitors, and status quo
- "Why we win" section: 3 specific, defensible reasons with evidence
- Honest acknowledgment of where competitors are stronger — this builds
  credibility
- ⚠️ Iskender Dirik: "A feature is not a sustainable differentiator — show your
  moat"

**09 — Go-to-Market**

- Start with ONE sharp wedge: one customer type, one motion, one channel
- Then describe the expansion strategy
- For each channel: Why this channel? What evidence does it work? Expected CAC?
- Show the math: if CAC = $X and ARPU = $Y, how many customers to cover S&M
  spend?
- ⚠️ "Social media, word of mouth, influencer marketing" without numbers is the
  #1 GTM failure
- Success looks like: "We'll reach 100 pilot users via LinkedIn outbound to
  VP-Finance in FinTech, at $40 CAC, converting at 15%"

**10 — Team**

- Open with why THIS team specifically wins — founder-market fit narrative
- For each founder: the 1–2 pieces of experience that make them credible HERE
- Avoid listing every job — only include relevant experience
- Advisors: name, credibility signal, and specifically how they help (not just
  logos)
- Key hires: what roles you're hiring and why those roles next
- ⚠️ DocSend: team section now rivals traction and business model in investor
  attention
- ⚠️ Charles Hudson: "Hard to have >2–3 people who are core at founding stage" —
  don't list everyone as a co-founder

**11 — Financials** _If Pre-Seed:_

- Simple format: 12–18 month cash flow, 3-year directional
- Burn rate and runway front and center
- Explicitly labeled assumptions section — separate from outputs
- Headcount waterfall: each role, start date, salary, 25% overhead
- Show when cash runs out under base assumptions
- Key question to answer: "When we need more money and what metrics will we have
  hit?"
- ⚠️ Share as PDF only — never share interactive Excel with investors

_If Seed:_

- Monthly P&L for 18–36 months; annual for years 3–5
- Three scenarios: base, upside, downside
- Unit economics tab with actuals and projections
- Cohort-based revenue model (not just top-line)
- Cash flow statement with cash balance timeline
- Key metrics dashboard linking to traction section
- ⚠️ Numbers must be 100% consistent with deck and all other sections

**12 — Use of Funds**

- Total raise amount shown prominently
- Breakdown by category with % and $ amounts — must sum to 100%
- Typical seed allocation: 40–50% team/hiring, 20–30% product/R&D, 15–25% sales
  & marketing, 10–15% operations/overhead
- Connect each category to a specific milestone
- Show runway in months (must be 18+ months)
- Next round trigger: "We raise Series A at $[X]M ARR / [X] customers / [X]
  months"
- ⚠️ 56% of decks have this section weak or missing — this is a free win

**14 — Appendix**

- Detailed financial model (with assumptions doc)
- Technical architecture (if relevant)
- Extended competitive analysis (all competitor profiles from
  research/competitors/)
- Customer case studies or testimonials
- IP/patent documentation
- Material contracts and LOIs
- FAQ document built from context/investor-faq.md — every recurring investor
  question answered
- Press coverage and awards
- Extended team bios
- Prior investor updates (demonstrates communication discipline)
- ⚠️ Bradford Cross: "If the same questions keep coming up, create appendix
  slides that address them"

---

### Phase 4: Save Output

Save to: `outputs/[XX-section-name]/[section-name]-[YYYY-MM-DD].md`

### Phase 5: Report

1. Confirm section written and file path
2. Note any claims that needed assumptions (label them clearly in the doc)
3. Flag any inconsistencies spotted with other sections
4. Note if any research should be run to strengthen this section
5. One-line assessment: strong / needs work / missing critical element
