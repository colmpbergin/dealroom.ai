# Napkin AI Skill

Generate professional diagrams from text descriptions using Napkin AI.

## When to Use Napkin AI

Use Napkin AI when you need to produce a diagram that would be tedious to code
by hand:

- Process flows (how our product works, step by step)
- Comparison frameworks (us vs. competitors, before vs. after)
- Mindmaps (problem space, market landscape)
- Timelines (product roadmap, traction milestones)
- 2x2 matrices and positioning frameworks

> Napkin AI produces cleaner, faster diagrams than hand-coded React flowcharts.
> Use it as the first option for any diagram visual type.

## MCP Tools Available

The Napkin AI MCP exposes these tools (once connected):

- napkin_generate -- Generate a diagram from a text prompt
- napkin_export -- Export the generated diagram as SVG, PNG, or PPTX

See reference/mcp-setup.md for setup instructions.

## How to Use

### Step 1: Describe the diagram

Write a clear text description of what the diagram should show.

Good prompts include:

- Diagram type (flowchart, timeline, comparison, mindmap, framework)
- Number of elements (3 steps, 4 options, 5 milestones)
- The specific content for each element

Example prompt:

```
Create a flowchart showing the Ailtir product workflow:
1. Site surveyor captures defect with mobile app
2. AI classifies defect type and severity
3. System generates snag list entry automatically
4. Project manager reviews and assigns to contractor
5. Contractor resolves and marks complete
6. Automated sign-off report generated for client
```

### Step 2: Generate

Call napkin_generate with your description.

### Step 3: Export

Export as SVG for web/deck use, PNG for docs, or PPTX for PowerPoint
integration.

### Step 4: Apply Brand

After generating, verify the output aligns with Ailtir brand guidelines:

- Navy (#1B2A4A) for primary elements
- Teal (#2A7F78) for solution/positive elements
- Amber (#E8A427) for highlights and CTAs
- Inter font if editable

If Napkin does not support custom brand colours, note this and consider a React
fallback.

## Fallback: React Flowchart

If Napkin AI is not connected, produce a React artifact with:

- Navy rounded rectangles for steps
- Teal arrows between steps
- Inter font
- White text on dark backgrounds
- Amber highlight for the most important step

Example structure:

```jsx
const steps = [
  { id: 1, label: "Step One", sub: "brief description" },
  { id: 2, label: "Step Two", sub: "brief description" },
];
// Render as vertical or horizontal flow with brand colours
```

## Diagram Types Reference

| Type       | Best For                        | Napkin Keyword |
| ---------- | ------------------------------- | -------------- |
| Flowchart  | Product workflow, process       | flowchart      |
| Mindmap    | Problem space, market landscape | mindmap        |
| Timeline   | Roadmap, traction milestones    | timeline       |
| Comparison | Competitive positioning         | comparison     |
| Framework  | 2x2 matrix, positioning map     | framework      |
| Org chart  | Team structure                  | org-chart      |

## Quality Checklist

Before saving a diagram:

- [ ] Content is accurate (matches context/ files)
- [ ] Brand colours applied (navy, teal, amber)
- [ ] Text is readable at presentation size
- [ ] Exported in correct format for target use
- [ ] Saved to outputs/[section]/ with descriptive filename
