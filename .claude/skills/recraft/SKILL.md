# Recraft AI Skill

Generate SVG vector icons and illustrations using Recraft AI.

## When to Use Recraft

Use Recraft when you need:

- Line icons for slides, infographics, or the product section
- Custom illustrations that match Ailtir brand (navy/teal, clean lines)
- SVG icons for a specific AEC/construction concept not in generic icon
  libraries
- Vectorizing raster images for clean brand use

> Recraft produces production-ready SVG icons. Better than emoji or stock icons
> for a polished, brand-consistent data room.

## MCP Tools Available

The Recraft MCP exposes these tools (once connected):

- recraft_generate_image -- Generate a raster or vector image from a text prompt
- recraft_vectorize -- Convert a raster image to SVG

See reference/mcp-setup.md for setup instructions.

## How to Use

### Step 1: Write a clear icon prompt

Good icon prompts include:

- Subject (what the icon represents)
- Style (line icon, flat, outline)
- Colour instruction (navy blue, single colour, monochrome)
- Size/complexity (simple, minimal, 24px equivalent)

Example prompts:

```
Simple outline line icon of a construction defect checklist, navy blue, minimal, clean
```

```
Outline icon of a building under construction with a checkmark, navy and teal, flat style
```

```
Simple line icon of a mobile phone with a camera scanning a wall, construction context, navy blue
```

### Step 2: Generate

Call recraft_generate_image with your prompt. Request SVG format if supported.

### Step 3: Verify brand alignment

Check the generated icon against Ailtir brand:

- Line style (not filled/solid)
- Navy (#1B2A4A) or teal (#2A7F78) as primary colour
- Clean, minimal -- no excess detail
- Consistent stroke weight with other icons in the deck

### Step 4: Save

Save SVG to: outputs/[section]/icons/[descriptive-name].svg

## Common AEC Icon Subjects

For Ailtir's construction/AEC context, common icon needs:

| Subject               | Description for Prompt                          |
| --------------------- | ----------------------------------------------- |
| Defect / snag         | Outline of wall with crack and magnifying glass |
| Checklist / snag list | Clipboard with checkboxes                       |
| Mobile capture        | Phone with camera, arrow pointing at surface    |
| AI classification     | Brain or circuit outline with arrows            |
| Report / sign-off     | Document with signature line                    |
| Contractor            | Hardhat outline                                 |
| Project manager       | Person with clipboard                           |
| Timeline / schedule   | Calendar with milestones                        |
| Cost / budget         | Pound/euro sign in circle outline               |

## Fallback: Inline SVG in React

If Recraft is not connected, produce an inline SVG using:

- Stroke-based paths (not filled)
- strokeWidth: 1.5
- stroke: '#1B2A4A' (navy) or '#2A7F78' (teal)
- viewBox: '0 0 24 24'
- Standard Lucide/Heroicons geometric style

Example:

```jsx
<svg viewBox="0 0 24 24" fill="none" stroke="#1B2A4A" strokeWidth="1.5">
  <rect x="3" y="3" width="18" height="18" rx="2" />
  <path d="M9 12l2 2 4-4" />
</svg>
```

## Quality Checklist

Before using an icon in a visual:

- [ ] Style matches: line/outline, not filled
- [ ] Colour: navy or teal (not both, unless dual-tone intended)
- [ ] Scalable: looks clean at both 24px and 120px
- [ ] Subject is clear at a glance (no overdetail)
- [ ] Consistent with other icons used in the same deck section
