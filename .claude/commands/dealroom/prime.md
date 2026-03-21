# Prime

> Initialize this session. Always run this first. Do not skip.

## Run

```
ls -la
find . -type f -name "*.md" | sort
```

## Read — Core Context

Read ALL of these files before doing anything else:

- CLAUDE.md
- context/business-info.md
- context/personal-info.md
- context/product-description.md
- context/target-customer.md
- context/current-data.md
- context/strategy.md
- context/competitors-list.md
- context/fundraising-stage.md ← determines how Claude calibrates everything
- context/investor-faq.md ← captures what investors have actually asked
- context/legal-readiness.md ← flags deal-killers before investors find them

## Read — Reference

- reference/investor-benchmarks.md ← real VC benchmarks; Claude uses these to
  evaluate our numbers
- context/brand/brand-guidelines.md ← your visual identity; read before ANY
  visual output

## Check Progress

```
find research/ -type f -name "*.md" | sort
find hypothesis/ -type f -name "*.md" | sort
find outputs/ -type f -name "*.md" | sort
```

## Summary

After reading everything, provide a concise status brief:

1. **Company**: [one line — who we are, what we do]
2. **Stage**: [pre-seed or seed — and what that means for how Claude will work]
3. **Round**: [amount, instrument, target close]
4. **Strongest proof points**: [top 2–3 traction or validation signals]
5. **Known gaps**: [what's missing that investors will ask about]
6. **Legal flags**: [any red flags from legal-readiness.md — 🔴 deal-killers or
   🟡 flags]
7. **Research done**: [which research files exist]
8. **Sections built**: [which output sections are drafted]
9. **Recommended next step**: [specific, actionable — what should we work on
   right now?]
   - If research is complete but no narrative brief exists → recommend
     `/dealroom:build-pitch-narrative`
   - If narrative brief exists but sections are unbuilt → recommend
     `/dealroom:build-section 02` first
   - If sections exist but no investor review has run → recommend
     `/dealroom:investor-review`

Keep it concise — this is a status brief, not a report.
