# Brand Guidelines

> Your visual identity system for investor materials, pitch decks, infographics,
> and communications. Every visual produced in this workspace must comply with
> these guidelines. Fill this in before running /dealroom:build-visual. Last
> updated: [DATE]

---

## Brand Positioning (Visual Voice)

[Describe the visual personality of your brand in 2-3 sentences. What feeling
should every visual communicate?]

**Three words to feel in every visual:**

1. [e.g., Trustworthy]
2. [e.g., Bold]
3. [e.g., Clear]

**What we are not:** [e.g., Over-designed. Cold. Generic. Corporate.]

---

## Colour Palette

### Primary Colours

| Name                | Hex       | RGB              | Use                               |
| ------------------- | --------- | ---------------- | --------------------------------- |
| **[Primary Dark]**  | `#______` | **_, _**, \_\_\_ | Primary backgrounds, headings     |
| **[Primary Light]** | `#______` | **_, _**, \_\_\_ | Light backgrounds, breathing room |
| **White**           | `#FFFFFF` | 255, 255, 255    | Text on dark, clean space         |

### Accent Colours

| Name           | Hex       | Use                               |
| -------------- | --------- | --------------------------------- |
| **[Accent 1]** | `#______` | Highlights, callouts, CTAs        |
| **[Accent 2]** | `#______` | Positive/solution indicators      |
| **[Accent 3]** | `#______` | Data, charts, supporting elements |

### Semantic Colour Mapping

| Purpose              | Colour        | Notes                     |
| -------------------- | ------------- | ------------------------- |
| Problem / pain       | [colour name] | Used in "before" panels   |
| Solution / positive  | [colour name] | Used in "after" panels    |
| Highlight / emphasis | [colour name] | Key numbers, callouts     |
| Muted text           | [colour name] | Labels, captions, sources |

---

## Typography

### Font Family

- **Primary font**: [e.g., Inter] — headings and display text
- **Body font**: [e.g., Inter] — body copy and labels
- **Fallback stack**: `'[Font]', 'Arial', sans-serif`

> If using a Google Font, import it at the top of any React artifact:
> `@import url('https://fonts.googleapis.com/css2?family=[Font]:wght@300;400;600;700;800&display=swap');`

### Type Scale

| Use                   | Size    | Weight          | Colour        |
| --------------------- | ------- | --------------- | ------------- |
| Hero number / display | 72–96px | ExtraBold (800) | Primary Dark  |
| Section headline      | 24–32px | Bold (700)      | Primary Dark  |
| Sub-headline          | 18–20px | SemiBold (600)  | Primary Dark  |
| Body / description    | 14–16px | Regular (400)   | Primary Dark  |
| Label / caption       | 11–12px | Regular (400)   | Muted         |
| Source citation       | 10px    | Regular (400)   | Muted, italic |

---

## Layout Principles

- **Max content width**: 900px, centered
- **Minimum padding**: 32px on all sides
- **Minimum gap between elements**: 24px
- **Rule of one**: one dominant element per visual (large number, bold panel,
  key chart)
- **Colour limit**: maximum 3 brand colours in use simultaneously
- **No 3D effects** — flat design only
- **No gradients** — solid fills only
- **No pie charts** — use donut charts (single proportion only) if needed

---

## Slide Templates

### Dark Layout (Title, Ask/CTA)

- Background: Primary Dark
- Text: White
- Accent: Accent 1

### Light Layout (Content slides)

- Background: Primary Light or White
- Text: Primary Dark
- Accent: Accent 2 for positive, Accent 1 for highlights

---

## Logo Usage

- Logo appears once per visual, typically bottom right or top left
- Minimum clear space: [X]px on all sides
- Do not stretch, recolour, or add effects to the logo

---

## Visual Don'ts

- ❌ No clip art or stock photo illustrations
- ❌ No rainbow colour schemes
- ❌ No text below 10px
- ❌ No content touching the edge of the canvas
- ❌ No more than 3 typeface weights in one visual
- ❌ No unsourced statistics

---

_Read this file before every /dealroom:build-visual command. Consistent brand =
professional credibility._
