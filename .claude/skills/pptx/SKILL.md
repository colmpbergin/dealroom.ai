# PPTX Skill

Build investor-ready PowerPoint (.pptx) slide files using the python-pptx
library, fully consistent with Ailtir brand guidelines.

---

## When to use this skill

Use when `/build-visual slide [section]` or `/build-visual deck-theme` requires
an actual .pptx file rather than a React preview. React previews are faster for
iteration; this skill is for final production files that go directly into a
PowerPoint deck.

---

## Requirements

- Python 3.x
- `python-pptx` library: `pip install python-pptx`

---

## Brand Constants

Always define these at the top of any pptx script:

```python
from pptx import Presentation
from pptx.util import Inches, Pt, Emu
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN

# Ailtir Brand Colours
NAVY       = RGBColor(0x1B, 0x2A, 0x4A)   # #1B2A4A — primary bg, headings
CONCRETE   = RGBColor(0xF4, 0xF3, 0xEF)   # #F4F3EF — light bg
WHITE      = RGBColor(0xFF, 0xFF, 0xFF)   # #FFFFFF
AMBER      = RGBColor(0xE8, 0xA4, 0x27)   # #E8A427 — CTAs, highlights
TEAL       = RGBColor(0x2A, 0x7F, 0x78)   # #2A7F78 — solution states
BLUE       = RGBColor(0x4A, 0x7F, 0xB5)   # #4A7FB5 — features, links
WARM_GREY  = RGBColor(0x9C, 0x90, 0x82)   # #9C9082 — problem/pain states
MUTED_TEXT = RGBColor(0x6B, 0x65, 0x60)   # #6B6560 — captions, labels
BORDER     = RGBColor(0xE0, 0xDD, 0xD8)   # #E0DDD8 — grid lines, dividers

# Slide dimensions (16:9 widescreen)
SLIDE_WIDTH  = Inches(13.33)
SLIDE_HEIGHT = Inches(7.5)

# Margins
MARGIN = Inches(0.5)
```

---

## Slide Layout Templates

### Dark Title Slide

```python
def dark_title_slide(prs, company_name, tagline, date=""):
    slide_layout = prs.slide_layouts[6]  # blank
    slide = prs.slides.add_slide(slide_layout)

    # Navy background
    background = slide.background
    fill = background.fill
    fill.solid()
    fill.fore_color.rgb = NAVY

    # Company name — Inter ExtraBold equivalent, 44pt, White
    txBox = slide.shapes.add_textbox(MARGIN, Inches(2.5), Inches(12), Inches(1.2))
    tf = txBox.text_frame
    p = tf.paragraphs[0]
    p.text = company_name
    p.font.bold = True
    p.font.size = Pt(44)
    p.font.color.rgb = WHITE
    p.font.name = "Inter"

    # Tagline — Inter Light, 18pt, Concrete
    txBox2 = slide.shapes.add_textbox(MARGIN, Inches(3.9), Inches(12), Inches(0.8))
    tf2 = txBox2.text_frame
    p2 = tf2.paragraphs[0]
    p2.text = tagline
    p2.font.size = Pt(18)
    p2.font.color.rgb = CONCRETE
    p2.font.name = "Inter"

    # Amber accent line
    line = slide.shapes.add_connector(1, MARGIN, Inches(3.7), Inches(4), Inches(3.7))
    line.line.color.rgb = AMBER
    line.line.width = Pt(2)

    return slide
```

### Light Content Slide

```python
def content_slide(prs, title, body_text=""):
    slide_layout = prs.slide_layouts[6]  # blank
    slide = prs.slides.add_slide(slide_layout)

    # Concrete background
    background = slide.background
    fill = background.fill
    fill.solid()
    fill.fore_color.rgb = CONCRETE

    # Slide title — Inter Bold, 28pt, Navy
    txBox = slide.shapes.add_textbox(MARGIN, Inches(0.4), Inches(12.3), Inches(0.8))
    tf = txBox.text_frame
    p = tf.paragraphs[0]
    p.text = title
    p.font.bold = True
    p.font.size = Pt(28)
    p.font.color.rgb = NAVY
    p.font.name = "Inter"

    # Amber accent line — 3px, spans ~40% of width
    line = slide.shapes.add_connector(1, MARGIN, Inches(1.3), Inches(5.3), Inches(1.3))
    line.line.color.rgb = AMBER
    line.line.width = Pt(3)

    # Body content area starts at ~1.5"
    if body_text:
        txBox2 = slide.shapes.add_textbox(MARGIN, Inches(1.5), Inches(12.3), Inches(5.5))
        tf2 = txBox2.text_frame
        tf2.word_wrap = True
        p2 = tf2.paragraphs[0]
        p2.text = body_text
        p2.font.size = Pt(16)
        p2.font.color.rgb = NAVY
        p2.font.name = "Inter"

    return slide
```

---

## How to Build a Complete Deck

```python
from pptx import Presentation

prs = Presentation()
prs.slide_width  = SLIDE_WIDTH
prs.slide_height = SLIDE_HEIGHT

# Add slides using the templates above
dark_title_slide(prs, "Ailtir", "The construction intelligence platform", "March 2026")
content_slide(prs, "Construction loses $17B/year to poor communication", "Body text here...")

# Save
prs.save("ailtir-deck.pptx")
```

---

## Rules

- **Never use 3D effects** — python-pptx flat shapes only
- **Font**: Inter throughout; fall back to Calibri if Inter not embedded
- **Colours**: Maximum 3 per slide — background + primary + one accent
- **Margins**: Minimum 0.5" on all sides — no content touching edges
- **Slide titles**: Always sentence case, never ALL CAPS
- **Every chart**: Must have a "so what" headline, not just a metric label
- **Deliver as**: Save to `outputs/` and tell the user the file path. Never
  share an interactive model — PDFs or .pptx files only.

---

## Output Location

Save generated .pptx files to:
`outputs/[section-folder]/[filename]-[YYYY-MM-DD].pptx`

For full decks: `outputs/pitch-deck-[YYYY-MM-DD].pptx`
