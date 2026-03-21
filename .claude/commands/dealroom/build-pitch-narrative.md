# Build Pitch Narrative

Craft the story architecture and slide-by-slide narrative for the investor pitch
deck. This command produces the _narrative layer_ — the story that runs through
every slide — not the slides themselves. Run this BEFORE
`/dealroom:build-section` for any section that appears in the deck. The output
is a master narrative brief that anchors every slide written afterward.

Grounded in: Nancy Duarte's Sparkline, Andy Raskin's "Greatest Sales Deck"
framework, April Dunford's positioning-first approach, YC/Sequoia/a16z slide
standards, and Oren Klaff's STRONG method.

## Variables

mode: $ARGUMENTS

- (no argument): Build the full narrative architecture from scratch
- `review`: Audit an existing deck narrative and flag weaknesses
- `section [name]`: Write the narrative brief for one specific slide only
- `logline`: Output only the one-sentence logline and tagline variants
- `sawtooth`: Build only the problem section contrast waves
- `opening`: Build only the hook + sparkline opening sequence

---

## When to run this command

Run `/dealroom:build-pitch-narrative` at these moments in the workflow:

**1. Before your first investor meeting** — even before slides are designed. The
narrative brief becomes your verbal pitch script. You don't need slides to tell
the story well. You need the story before you can design slides.

**2. After `/dealroom:prime` and research, but BEFORE
`/dealroom:build-section`.** Every section built with `/dealroom:build-section`
should reference the narrative brief. Without it, sections are islands. With it,
every slide is a chapter in a coherent story.

**3. When pitching to a new audience type** — different investor types,
strategic buyers, or enterprise customers. The core story is the same; the
opening frame and language shifts. Run with `section opening` to reframe.

**4. When a pitch "isn't landing."** If you're getting second meetings but
investors aren't converting, or if you sense the pitch loses momentum somewhere,
run with `review` to diagnose the narrative structure.

**5. After a significant business development** — new enterprise customer, a
pivot, a major metric hit. The story has changed. The narrative should too.

**Sequence in the full workflow:**

```
/dealroom:prime
  → /dealroom:stage-check
    → /dealroom:research-problem
    → /dealroom:research-market
    → /dealroom:research-customer
    → /dealroom:research-competitors
    → /dealroom:research-funding
    → /dealroom:build-financial-model
→ /dealroom:build-pitch-narrative      ← THIS COMMAND
  → /dealroom:build-section 02         (Problem & Solution)
  → /dealroom:build-section 03         (Market Size)
  → /dealroom:build-section 04         (Product)
  → /dealroom:build-section 05         (Engineering)
  → /dealroom:build-section 06         (Traction & Metrics)
  → /dealroom:build-section 10         (Team)
  → /dealroom:build-section 07         (Business Model)
  → /dealroom:build-section 08         (Competitive Landscape)
  → /dealroom:build-section 09         (Go-to-Market)
  → /dealroom:build-section 11         (Financials)
  → /dealroom:build-section 12         (Use of Funds)
  → /dealroom:build-investment-memo
  → /dealroom:build-section 01         (Executive Summary — ALWAYS LAST)
→ /dealroom:investor-review
```

---

## Instructions

### Phase 1: Load All Context

Read in this order:

1. `CLAUDE.md` — operating principles
2. `context/fundraising-stage.md` — CRITICAL: stage determines tone and what
   evidence exists
3. `context/business-info.md` — company overview, problem, solution
4. `context/product-description.md` — what has been built
5. `context/target-customer.md` — who suffers the problem and buys the solution
6. `context/current-data.md` — traction, metrics, customer evidence
7. `context/strategy.md` — GTM, business model, vision
8. `context/competitors-list.md` — competitive landscape
9. `reference/investor-benchmarks.md` — VC benchmarks and data
10. All files in `research/` that exist
11. Any completed `outputs/` sections

Then run:

```
find research/ -type f -name "*.md" | sort
find outputs/ -type f -name "*.md" | sort
```

---

### Phase 2: Pre-Narrative Gap Check

Before writing, answer these questions internally:

**Story foundation checklist:**

- [ ] Can I state what the company does in one sentence?
- [ ] Can I name a specific, undeniable change in the world that creates
      urgency?
- [ ] Can I describe a human scenario that makes the problem viscerally felt?
- [ ] Do I have at least one quantified proof point for the problem?
- [ ] Can I name 3 types of people who feel this pain (ICP)?
- [ ] Is the "Why Now" specific — a recent shift, not a generic trend?
- [ ] Is there a "Promised Land" — an outcome, not a product?
- [ ] Do I have evidence the solution works (even at pre-seed level)?
- [ ] Can I name the competitors honestly, including "doing nothing"?
- [ ] Does the founding team have a compelling founder-market fit story?

If 3+ items are missing: flag them and ask which research commands to run first.
If 1-2 items are missing: proceed, clearly label what's assumed, and offer to
fill later.

---

### Phase 3: Build the Narrative Architecture

#### 3A. The One-Sentence Logline

Write the logline first. Everything else must serve it.

Template: **[Company] is the [category] that helps [ICP] [achieve outcome], by
[mechanism].**

Rules:

- Under 30 words
- Lead with outcome, not feature
- "Category" must be a real market category the investor can place mentally
- No jargon
- Must work spoken aloud at a networking event

Then write 3 variants:

- **Investor logline**: Emphasises market size and return potential
- **Customer logline**: Emphasises pain relief and practical outcome
- **Elevator logline**: What you say at a conference to someone in the industry

---

#### 3B. The Sparkline Mapping

Map the full pitch on a Sparkline grid — "What Is" vs "What Could Be." (Nancy
Duarte: the most persuasive presentations oscillate between these two states
rather than grouping all pain upfront and all hope at the end.)

```
SPARKLINE MAP
=============
Slide         What Is (Current Reality)          What Could Be (Future State)
─────────────────────────────────────────────────────────────────────────────
1. Hook
2. Problem Wave 1
3. Problem Wave 2
4. Problem Wave 3
5. Why Now
6. Solution reveal
7. Product
8. Traction
9. Market Size
10. Business Model
11. Competition
12. Team
13. Financials
14. Ask / CTA
```

Fill in both columns for every slide. This forces oscillation — you cannot run a
sequence of pure pain slides or pure hope slides. Every problem slide must carry
the implicit shadow of a better world. Every solution slide must acknowledge the
real starting point.

---

#### 3C. Andy Raskin's Five-Step Framework

Apply each step explicitly to your startup's context.

**Step 1: The Undeniable World Change** Name the macro shift that makes the
current moment different. This is NOT the problem. It's the force that makes the
problem more urgent NOW.

Format: One bold, declarative statement. Name the trend. Own the language if
possible.

**Step 2: Winners and Losers** Who adapts to the world change and thrives? Who
doesn't and suffers? Use named examples if possible. Loss aversion is more
powerful than gain optimism — lead with who's being left behind.

**Step 3: The Promised Land** Describe the outcome state for the customer — NOT
the product, NOT the features. The Promised Land is where the customer ends up
AFTER working with you. It must be: desirable, specific, and difficult to reach
without your help.

**Step 4: Magic Gifts (Capabilities as Enablers)** Only NOW introduce what
you've built. Frame capabilities as the mechanism that bridges the customer from
their current reality to the Promised Land. Each feature must be a "gift" in
service of the journey — not a feature for its own sake.

**Step 5: Evidence It's Real** Customer proof, pilot results, case studies.
Ground the story. At pre-seed: even one strong customer conversation or pilot
result counts. At seed: quantified outcomes required.

---

#### 3D. The Sawtooth Contrast Waves (Problem Section Architecture)

Build 3 escalating contrast waves. Each wave must contain:

**a) Context** — a specific, human scenario in today's workflow (the "dip")

- Name a role
- Name a moment (Monday morning, deadline day, week 3 of a project)
- Name a task being done the current painful way
- Make it something any practitioner in your market would recognise immediately

**b) Contrast** — a believable improved future state for that same scenario

- NOT utopia. A specific, plausible improvement.
- The contrast should feel like relief, not revolution.

**c) Proof** — the strongest supporting fact for the pain and/or improvement

- Quantified where possible. Named source.
- Pulled from `reference/investor-benchmarks.md` or `research/` files

**d) Value escalation** — each wave must move UP the impact ladder:

- Wave 1: TACTICAL (saves time for one person on one task)
- Wave 2: OPERATIONAL (improves team coordination, reduces rework across
  project)
- Wave 3: COMMERCIAL/STRATEGIC (P&L impact: revenue won, margin protected,
  firm-level risk)

```
SAWTOOTH WAVE TEMPLATE
======================

WAVE 1 — TACTICAL
─────────────────
Context (the dip):
  "Right now, [role] is doing [task] by [current painful method].
   The result: [specific consequence]. This happens [frequency]."

Contrast:
  "With [company], [same role] [does same task] [improved way].
   Result: [specific improvement]."

Proof:
  "[Statistic]. Source: [source]."

Value level: Time saved / frustration reduced for one person.

WAVE 2 — OPERATIONAL
─────────────────────
Context (the dip):
  [A team or coordination scenario]

Contrast:
  [A specific coordination improvement]

Proof:
  "[Statistic or industry data]."

Value level: Rework reduced / throughput improved / team time recovered.

WAVE 3 — COMMERCIAL / STRATEGIC
────────────────────────────────
Context (the dip):
  [A P&L or firm-level consequence]

Contrast:
  [Firm-level outcome]

Proof:
  "[Market statistic or benchmark]."

Value level: Revenue won or protected / margin defended / strategic capability unlocked.
```

After all three waves, write the bridge: "These aren't three different problems.
They're the same problem at three different altitudes — and all three have the
same root cause: [fundamental insight about why the market operates this way]."

---

#### 3E. The Signposting Architecture (Rule of Three)

Every pitch must reinforce three and only three core messages. State them now —
everything in the deck must serve one of these three.

```
CORE MESSAGE MAP
================
Message 1: [The problem is structural and large — not a minor annoyance]
Message 2: [Our approach is differentiated — not a feature increment]
Message 3: [This team is specifically equipped to win — not just competent]

Reinforcement plan:
  Message 1 appears in slides: [list]
  Message 2 appears in slides: [list]
  Message 3 appears in slides: [list]
```

Signposting rules:

- Every slide headline is a standalone assertion — never a label ❌ "The
  Problem" → ✅ "Stagnant productivity has cost the industry $X in the last
  decade"
- Slide 2 previews the three-act structure ("Here's what we're going to show
  you")
- Slide 14 (Ask) returns to the opening image or statement for emotional
  bookending
- The VC should be able to read ONLY the headlines and understand the full
  argument

---

#### 3F. The Emotional Arc

Map the intended investor emotional state for every slide grouping:

```
EMOTIONAL ARC
=============
Slides 1–2:  Curiosity + stakes established → investor leans forward
Slides 3–5:  Discomfort + recognition → investor feels the problem
Slide 6:     Relief + aha moment → the gap between problem and solution closes
Slides 7–8:  Excitement + credibility → product seen, traction felt
Slides 9–10: Confidence + scale → market and model make sense
Slides 11:   Reassurance → competitive landscape handled honestly
Slides 12:   Trust → team is right for this
Slides 13–14: Urgency + clarity → ask is specific, terms are clear, next step is obvious
```

---

#### 3G. The Opening Hook (First 60 Seconds)

Write the opening hook in full. Three options — write all three, then recommend
which to lead with:

**Option A: The Founder Story** A personal story that connects the founder's
lived experience to the problem. Must be: specific, brief (3–4 sentences),
emotionally resonant, and end with the question the company was built to answer.

**Option B: The Human Scenario** "Meet [name], a [role] at a [type of
organisation]." Walk through a day-in-the-life moment that makes the problem
viscerally felt before any data appears. The investor should think "I know
someone like this."

**Option C: The Provocation** A bold, counterintuitive statement about the
industry that disrupts the investor's assumptions. Must be defensible with data.

Recommendation rule: Lead with the founder story if it's compelling and short.
Lead with the human scenario if the problem is not yet widely understood. Lead
with the provocation if the investor audience is sophisticated in the space.

---

#### 3H. The "Why Now" Narrative

Write this as a paragraph, not a bullet list. The Why Now must be specific to
THIS moment — not generic industry trends.

Identify which of these inflection points apply to your market:

- **Labor crisis trigger**: Shortage forcing automation or new approaches
- **AI maturity trigger**: Specific capability that didn't exist 2 years ago
- **Regulatory trigger**: Specific legislation, mandate, or compliance deadline
- **Economic trigger**: Cost pressure forcing margin discipline or new buying
  patterns
- **Adoption trigger**: Smartphones, cloud, APIs — switching costs falling
- **Competitive trigger**: A well-funded competitor validating the market

Format: "For [X] years, [the problem] persisted because [constraint that
prevented solving it]. That constraint has changed. [Specific evidence of
change]. The window is NOW — organisations that move in the next 18 months will
establish advantages that late adopters cannot close."

---

### Phase 4: Produce the Narrative Brief

Output a complete narrative brief document containing all the above. Structure
it for human use — this is a working document, not a report.

**Format:**

```markdown
# [Company Name] — Pitch Narrative Brief

Date: [today] Stage: [pre-seed/seed] Audience: [investor type]

---

## The Logline

**Primary:** [investor logline — under 30 words] **Customer variant:** [customer
logline] **Elevator variant:** [networking event version]

---

## The Core Argument (One Paragraph)

[Write the entire pitch in one paragraph. If you can't do it in one paragraph,
the story isn't clear enough yet.]

---

## Three Core Messages

1. [Message 1]
2. [Message 2]
3. [Message 3]

---

## The Sparkline Map

[Complete table — What Is / What Could Be for each slide]

---

## Raskin's Five Steps Applied

**Step 1 — World Change:** [One bold sentence. Name the shift.]

**Step 2 — Winners and Losers:** [2–3 sentences.]

**Step 3 — Promised Land:** [2–3 sentences. The outcome, not the product.]

**Step 4 — Magic Gifts:** [3 bullet points: capability → how it bridges to the
Promised Land]

**Step 5 — Evidence:** [Key proof points to deploy]

---

## Sawtooth Waves

### Wave 1 — Tactical

**Context (the dip):** **Contrast:** **Proof:**

### Wave 2 — Operational

**Context (the dip):** **Contrast:** **Proof:**

### Wave 3 — Commercial / Strategic

**Context (the dip):** **Contrast:** **Proof:**

**Bridge:**

---

## Opening Hook

**Recommended option:** [A / B / C] — [reason]

**Full text:** [Write the opening hook in full — exactly as it would be spoken]

---

## Why Now

[Full paragraph. Specific. Grounded in data. Not generic.]

---

## Emotional Arc

[Map by slide group — what should investor feel at each point?]

---

## Slide Headline Drafts

[One headline per slide — each a standalone assertion, not a label]

01 Cover: 02 Hook / Opening: 03 Problem Wave 1: 04 Problem Wave 2: 05 Problem
Wave 3: 06 Why Now: 07 Solution / Promised Land: 08 Product / Demo: 09 Traction:
10 Market Size: 11 Business Model: 12 Competitive Landscape: 13 Team: 14
Financials / Ask: 15 CTA:

---

## Narrative Gaps & Flags

[What's missing that weakens the story? What should be researched or validated?]

---

## Instructions for Slide Writers

[3–5 guiding principles for anyone building the deck from this brief]
```

---

### Phase 5: Save

Save the narrative brief to:
`outputs/00-narrative/pitch-narrative-brief-[YYYY-MM-DD].md`

---

### Phase 6: Report

After saving, provide a short debrief:

1. **Logline**: The recommended primary logline
2. **Strongest narrative element**: What's the most compelling part of this
   story?
3. **Weakest point**: Where is the story thinnest? What would a VC push back on?
4. **Recommended opening**: Which hook option and why
5. **Gaps that need research**: Specific commands to run to strengthen the story
6. **Next step**: Which section to build first with `/dealroom:build-section`

---

## Common Narrative Failure Modes — Diagnostic Questions

Run these checks after completing the brief:

1. **The 3-Minute Test**: Can a stranger understand what the company does, why
   it matters, and why this team wins — in 3 minutes of reading headlines only?

2. **The "So What" Test**: For every statistic in the narrative, ask: "So what
   does this mean for the investor?" If the answer isn't obvious, the connection
   is missing.

3. **The Human Test**: Is there at least one named person doing a named task in
   the problem section? If not, the problem is too abstract.

4. **The Promised Land Test**: Does the solution reveal describe an OUTCOME or a
   FEATURE? If it describes a feature, rewrite it as the life the customer will
   lead.

5. **The Investor Shoes Test**: After reading the narrative brief, would a VC
   say "I want to know more" or "I already know the answer"? If they can predict
   where you're going before you get there, the narrative is too conventional.

6. **The "Why Now" Specificity Test**: Remove the company name from the Why Now
   paragraph. Could it apply to any other startup pitching in the same space in
   the last 5 years? If yes, it's not specific enough.

7. **The Consistency Test**: Read every slide headline in sequence. Does it tell
   a coherent story? Can the investor follow the argument from headline to
   headline without the body copy?
