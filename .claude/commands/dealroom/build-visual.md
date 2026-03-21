# Build Visual

Create a single investor-ready visual — infographic, chart, data callout,
diagram, or slide illustration — fully consistent with your brand guidelines.

This command is the entry point for ALL visual production in the workspace. It
routes to the right output format based on the visual type and target platform.

## Variables

type: $ARGUMENTS

**Visual types:**

- `before-after [topic]` — Problem/Solution contrast panel (most common)
- `stat [number + context]` — Large data callout / hero statistic
- `process [steps]` — Workflow or product flow diagram
- `chart [data description]` — Bar, line, or comparison chart
- `comparison [options]` — Feature matrix or competitive table
- `sawtooth [wave number]` — Visual for one sawtooth contrast wave from
  narrative brief
- `timeline [events]` — Roadmap, traction timeline, or product milestones
- `infographic [topic]` — Full multi-element infographic combining stats +
  flow + icons
- `slide [section name]` — Full slide design for a named pitch deck section
- `deck-theme` — Apply brand guidelines to an existing .pptx file
- `financial-chart [data]` — Financial projection chart (revenue, burn, runway)
- `diagram [type + topic]` — Auto-generated diagram via Napkin AI: flowchart,
  mindmap, timeline, comparison, or framework. Falls back to React if Napkin
  unavailable.
- `icon [description]` — SVG vector icon via Recraft AI matching your brand
  style. Falls back to inline SVG in React.

---

## When to run this command

Run `/dealroom:build-visual` at these points in the workflow:

**During pitch deck building:** After `/dealroom:build-section` produces a
written section, run `/dealroom:build-visual slide [section]` to produce the
visual design of that slide or infographic.

**When a sawtooth wave needs illustration:** Run
`/dealroom:build-visual sawtooth [1/2/3]` to create the contrast panel for each
wave from the narrative brief.

**When presenting data to investors:** Any time you have a strong number — a
market stat, a traction metric, a pain point figure — run
`/dealroom:build-visual stat [number + context]` to make it land visually.

**When the competitive landscape section is drafted:** Run
`/dealroom:build-visual comparison competitors` to create the comparison matrix.

**For standalone infographics** (investor one-pagers, LinkedIn, conference
materials): Run `/dealroom:build-visual infographic [topic]` to produce a
shareable, self-contained graphic.

**When applying brand to a PowerPoint file**: Run
`/dealroom:build-visual deck-theme` and provide the .pptx file. The command will
apply your brand colours, fonts, and layouts to the entire deck.

---

## Instructions

### Phase 1: Load Brand Guidelines

**ALWAYS read this file first before producing any visual:**
`context/brand/brand-guidelines.md`

Extract and hold in working memory:

- Primary and accent colours with hex values
- Semantic colour mapping (which colour = problem, solution, highlight)
- Typography (font family, size hierarchy)
- Layout principles (padding, dominant element rule, colour limit)

Then read:

- `context/business-info.md` — company name, product name, core value
  proposition
- `context/product-description.md` — what the product does (for product visuals)
- `outputs/00-narrative/pitch-narrative-brief-*.md` — if it exists, for tone and
  key messages
- The relevant written section from `outputs/` if building a visual for a
  specific section

---

### Phase 2: Choose Output Format

Match the visual type to the right output format:

| Visual Type       | Best Format                             | Why                                         |
| ----------------- | --------------------------------------- | ------------------------------------------- |
| `before-after`    | **React artifact (.jsx)**               | Interactive, scalable, exportable           |
| `stat`            | **React artifact (.jsx)**               | Clean rendering, easy to adjust             |
| `process`         | **React artifact (.jsx)** or SVG        | Flow layouts are easier in React            |
| `chart`           | **React artifact (.jsx)** with Recharts | Best chart rendering quality                |
| `comparison`      | **React artifact (.jsx)**               | Table control and brand styling             |
| `sawtooth`        | **React artifact (.jsx)**               | Dual-panel contrast layout                  |
| `timeline`        | **React artifact (.jsx)**               | Flexible horizontal/vertical layout         |
| `infographic`     | **React artifact (.jsx)**               | Full composition control                    |
| `slide`           | **PPTX** (via pptx skill)               | Required for PowerPoint integration         |
| `deck-theme`      | **PPTX** (via pptx skill)               | Applying brand to an existing file          |
| `financial-chart` | **React artifact (.jsx)** with Recharts | Clean financial charts                      |
| `diagram`         | **Napkin AI** (or React fallback)       | Auto-layout diagrams                        |
| `icon`            | **Recraft AI SVG** (or inline SVG)      | Production-ready brand-matched vector icons |

> **Why React first?** React artifacts render instantly in Claude, allow
> real-time preview, are easy to iterate, and can be exported to PNG. Use PPTX
> when the output needs to go directly into a PowerPoint file.

---

### Phase 3: Build the Visual

#### For React Artifacts — Universal Rules

Always apply these before writing a single line of code:

**Brand constants to define at top of component:**

Read `context/brand/brand-guidelines.md` and replace these placeholders with
your actual brand colours:

```jsx
const BRAND = {
  primary: "#______", // Your primary dark colour
  light: "#______", // Your light background colour
  white: "#FFFFFF",
  accent1: "#______", // Highlight / CTA colour
  accent2: "#______", // Solution / positive colour
  accent3: "#______", // Data / supporting colour
  mutedText: "#______", // Labels, captions
  lightBorder: "#______", // Dividers, borders
};

const FONTS = {
  display: "'[YourFont]', 'Arial Black', sans-serif",
  body: "'[YourFont]', 'Arial', sans-serif",
};
```

**Layout rules:**

- Container: max-width 900px, centred, background white or light
- Padding: minimum 32px on all sides
- Font family: your brand font (Inter is a safe fallback)
- All text: minimum 12px, body text 14–16px
- One dominant visual element (large number, bold panel, chart)
- Never more than 3 brand colours in use simultaneously

---

#### Visual Type — Build Instructions

---

##### `before-after [topic]`

Build a two-panel contrast layout.

**Structure:**

```
┌────────────────────────────────────────────────────────────┐
│  Thin headline above both panels: [topic framing]          │
├──────────────────────────┬─────────────────────────────────┤
│  TODAY                   │  WITH [YOUR COMPANY]            │
│  (problem colour bg)     │  (solution colour bg)           │
│                          │                                 │
│  ✗ [Pain point 1]        │  ✓ [Benefit 1]                  │
│  ✗ [Pain point 2]        │  ✓ [Benefit 2]                  │
│  ✗ [Pain point 3]        │  ✓ [Benefit 3]                  │
│                          │                                 │
│  [Stat: quantified pain] │  [Stat: quantified gain]        │
└──────────────────────────┴─────────────────────────────────┘
```

Rules:

- "TODAY" label: ALL CAPS, SemiBold, problem colour
- "WITH [YOUR COMPANY]" label: ALL CAPS, SemiBold, solution colour
- Pain items: prefix ✗ in muted colour; never red ✗
- Benefit items: prefix ✓ in solution colour
- Bottom stat callouts: large number (32–40px), small label below
- Source citation: tiny text (10px, muted) at very bottom

---

##### `stat [number + context]`

Build a hero statistic callout — one number that needs to land hard.

**Structure option A (dark card):**

```
┌────────────────────────────┐
│  [Big Number]              │  72–96px, ExtraBold, white
│  ────────────              │  3px accent rule, 40% width
│  [Short label]             │  16px, Light, background colour
│  [Context/source]          │  11px, muted, italic
└────────────────────────────┘
Background: Primary dark colour
```

**Structure option B (light card):**

```
┌────────────────────────────┐
│  [Big Number]              │  64px, ExtraBold, primary or accent
│  ────────────              │  2px accent rule
│  [Label]                   │  14px, Regular, primary
│  [Source]                  │  10px, muted
└────────────────────────────┘
Background: White, border 1px light
```

Rules:

- The number must be the dominant element — everything else is subordinate
- Maximum 3 lines of supporting text (label + source)
- Always include source attribution

---

##### `sawtooth [1 / 2 / 3]`

Build the visual for one sawtooth contrast wave from the narrative brief. This
is a more narrative version of before-after, with 4 zones.

Read the narrative brief first:
`outputs/00-narrative/pitch-narrative-brief-*.md`

**Structure:**

```
┌──────────────────────────────────────────────────────────────┐
│  WAVE [N]: [LEVEL — TACTICAL / OPERATIONAL / COMMERCIAL]     │
├──────────┬──────────────┬──────────┬────────────────────────┤
│ CONTEXT  │   CONTRAST   │  PROOF   │   VALUE IMPACT         │
│          │              │          │                        │
│ [Human   │  [Improved   │ [Stat /  │  [Impact at this       │
│ scenario │   future     │  data    │   level of the         │
│ — the    │   state]     │  point]  │   hierarchy]           │
│ "dip"]   │              │          │                        │
└──────────┴──────────────┴──────────┴────────────────────────┘
```

Use your semantic colour mapping from brand-guidelines.md:

- Context panel: problem colour (the dip)
- Contrast panel: solution colour (the lift)
- Proof panel: data/supporting colour (the evidence)
- Value panel: highlight/accent colour (the stakes)

---

##### `process [description]`

Build a horizontal or vertical workflow/product flow diagram.

**Layout:**

- Horizontal for 3–5 steps
- Vertical for 6+ steps or when steps have substantial descriptions
- Each step: rounded rectangle, primary dark background, white icon + label
- Arrows: accent colour, 2px, with arrowheads
- Final step (outcome): solution colour instead of primary — signals resolution

**Step block structure:**

```
┌──────────┐
│  [Icon]  │  ← Lucide-style line icon, white, 24px
│──────────│
│  [Label] │  ← SemiBold, 13px, white
│  [Sub]   │  ← Regular, 11px, muted (light colour)
└──────────┘
```

---

##### `chart [description]`

Build a data chart using Recharts in a React artifact.

**Read the data** from:

- The argument description
- `context/current-data.md` for traction data
- `reference/investor-benchmarks.md` for industry benchmarks
- The relevant `outputs/` section

**Chart type decision:**

- Comparing categories → horizontal bar chart
- Growth over time → line chart
- Before/after two values → grouped bar chart (2 bars)
- Single proportion → donut chart (single segment only)
- Distribution → vertical bar chart

**Styling rules:**

- Primary data: your primary dark colour
- Comparison/secondary: your accent3 colour
- Positive/solution data: your solution colour
- Highlight bar: your accent1 colour
- Grid lines: light border colour
- Axis labels: muted text, fontSize 11

Always include:

- Headline above chart: states the insight, not just the metric title
- X and Y axis labels
- Data labels on bars
- Source attribution at bottom (10px, muted)

---

##### `comparison [topic]`

Build a feature comparison matrix.

**Structure:**

```jsx
// Column layout: [Your Company] | Competitor 1 | Competitor 2 | Status Quo
// Row = a feature or capability
// Cell value: ✓ (full) | ◑ (partial) | ✗ (absent)
```

**Styling:**

- Your company column: primary dark background, white text — the standout column
- Competitor columns: light background, muted text
- Status Quo column: light grey background
- ✓: solution colour
- ◑: highlight/accent colour
- ✗: muted colour (not red)
- Header row: primary dark background, white SemiBold

Include: A short callout below the table stating the most important
differentiator in plain English.

---

##### `timeline [description]`

Build a horizontal timeline showing milestones, traction, or roadmap.

**Structure:**

```
────●──────────────●──────────────●──────────────●────
  [Date]          [Date]          [Date]          [Date]
  [Event]         [Event]         [Event]         [Event]
  [Sub-detail]    [Sub-detail]    [Sub-detail]    [Sub-detail]
```

**Styling:**

- Timeline line: 2px, primary dark colour
- Past milestones: Primary dark filled circles
- Current position: Highlight/accent filled circle (larger)
- Future milestones: Accent colour outline circles
- Date labels: 10px, muted, above line
- Event labels: SemiBold, 13px, below line
- Sub-detail: Regular, 11px, muted

---

##### `financial-chart [description]`

Build financial projection charts for investor use.

**Common variants:**

- Revenue projection (MRR/ARR growth, 3-year)
- Burn and runway chart
- Unit economics (CAC vs. LTV)
- Revenue waterfall

**Rules specific to financial charts:**

- Always label the fundraise milestone (vertical marker: "Raise closes")
- Show break-even point if within 36 months
- Use ExtraBold for key numbers (MRR at end of year 1, 2, 3)
- Revenue: primary dark bars or line
- Burn: highlight/accent colour line (not red)
- Break-even line: solution colour dashed horizontal
- Never show hockey-stick without annotating the driver (e.g., "New enterprise
  sales hire")

---

##### `infographic [topic]`

Build a full, self-contained multi-element infographic.

**Layout A: Problem/Opportunity Overview**

```
┌─────────────────────────────────────────────────────┐
│  [Bold headline — the one insight]                  │
├──────────┬──────────┬──────────┬────────────────────┤
│  [Stat]  │  [Stat]  │  [Stat]  │  [Stat]            │
│  [Label] │  [Label] │  [Label] │  [Label]           │
├──────────┴──────────┴──────────┴────────────────────┤
│  [Short narrative paragraph — 2-3 sentences]        │
├─────────────────────────────────────────────────────┤
│  [Visual: before/after split or process flow]       │
├─────────────────────────────────────────────────────┤
│  [Call to action or company name + tagline]         │
└─────────────────────────────────────────────────────┘
```

**Layout B: Product Explanation**

```
┌─────────────────────────────────────────────────────┐
│  [Product name + one-line description]              │
├─────────────────────────────────────────────────────┤
│  [3-column: Step 1] → [Step 2] → [Step 3 = Outcome]│
├────────────────────────┬────────────────────────────┤
│  [Benefit 1 + icon]    │  [Benefit 2 + icon]        │
├────────────────────────┤                            │
│  [Benefit 3 + icon]    │  [Stat callout]            │
└────────────────────────┴────────────────────────────┘
```

Rules:

- Maximum 4 distinct sections
- Text must be minimal — labels and numbers, not paragraphs
- Every section has one dominant element
- Company name/logo appears once, bottom right or left
- Source citations at bottom in 9pt muted text
- Export size: 1200×900px (standard for LinkedIn/presentations)

---

##### `slide [section name]`

Build a full slide design for a pitch deck section. This uses the pptx skill for
.pptx output OR React for preview.

**Ask:** "Do you want this as a PowerPoint slide file, or as a React preview
first?"

**For React preview:** Build as a 16:9 ratio (960×540px) React component with
the full slide layout — exactly as it would appear in a deck.

**For .pptx:** Read the pptx skill at `.claude/skills/pptx/SKILL.md` before
building.

**Slide type routing:**

- Title slide → Dark primary layout
- Problem slides → Light layout + sawtooth contrast panel
- Solution slide → Light layout + product visual + Promised Land statement
- Market size → Full-bleed stat layout + chart
- Traction → Timeline + key metric callouts
- Team → Photo grid layout (placeholder boxes) + names + credentials
- Competitive landscape → Comparison matrix
- Financials → Chart(s) + key metric callouts
- Ask/CTA → Dark primary layout + raise details + milestone table

---

### Phase 4: QA Before Delivering

Before presenting any visual, verify:

**Brand compliance:**

- [ ] Colours used: only your brand colours — max 3 simultaneously
- [ ] Font: your brand font (or safe fallback) used throughout
- [ ] Semantic colours applied correctly (problem vs. solution vs. highlight)
- [ ] No 3D effects, no gradients (flat only)
- [ ] No pie charts (unless single-proportion donut)

**Content quality:**

- [ ] One dominant visual element
- [ ] Every chart has a "so what" headline
- [ ] Every stat has a source
- [ ] Text is minimal — labels and numbers, not paragraphs

**Layout:**

- [ ] Minimum 32px padding on all sides
- [ ] No content touching edges
- [ ] Minimum gap between elements: 24px
- [ ] All text is legible at intended display size

---

### Phase 5: Deliver and Offer Iterations

After presenting the visual:

1. State what type of visual was built and which brand template was used
2. Confirm brand compliance (colours, fonts, layout)
3. Identify the strongest element and the weakest
4. Offer 3 specific iteration options:
   - Colour variant (dark vs. light version)
   - Data update (if the numbers change)
   - Format variant (React → PPTX, or adding/removing sections)
5. If the visual is for a specific pitch section, suggest which other visuals
   would complement it
