# Research Hypothesis

This is a general purpose research tool/command.

First we will develop a hypothesis and will then do research to validate or
in-validate the hypothesis.

## Tool Priority

Use tools in this order for all research in this command:

1. **Perplexity** (perplexity_ask) -- Synthesized answers with citations; best
   for market trends, regulations, Why Now
2. **Exa** (web_search_exa, company_research_exa, people_search_exa) --
   Structured company and people data
3. **Firecrawl** (FIRECRAWL_SCRAPE_EXTRACT_DATA_LLM) -- Scrape specific pages
   when WebFetch fails on dynamic sites
4. **WebSearch** -- Fallback only if MCP tools are unavailable
5. **WebFetch** -- Direct URL access for static pages

See reference/mcp-setup.md to connect MCPs if not yet configured.

## Instructions

### Phase 0: Setup

Ask what the research is all about.

We just need a short paragraph to describe the research/hypothesis.

Based on that paragraph we will create a research document in the research
folder. The document is called `research_<date>_<time>.md` (e.g.
`research_2026-03-28_20-00-00.md`).

The document has the following structure/headings:

- Hypothesis - What needs to be researched
- Date - When the research was conducted (research goes stale)
- Research - The research
- Key Findings - 3–5 bullet summary of the most important data points
- Conclusion - Was/Is the hypothesis valid or not, plus a confidence level (High
  / Medium / Low)
- Caveats & Gaps - Limitations, contradictory evidence, what couldn't be found
- Sources - List of sources

Save to: `hypothesis/research_[YYYY-MM-DD]_[HH-MM-SS].md`

To get the current timestamp, run: `date +%Y-%m-%d_%H-%M-%S`

### Phase 1: Load Context

Read:

- context/business-info.md — to understand the company and industry

Use this only to ground the research in the right market/sector context. Do not
assume the hypothesis is about the problem, market, or any specific section of
the deal room.

### Phase 2: Define Hypothesis

In this phase you are a research assistant and you help the researcher to
define/develop/flesh-out the hypothesis.

A good hypothesis:

- **Is specific** — states a clear, testable claim, not a vague area of interest
- **Is falsifiable** — can be proven wrong; if it can't be disproven, it's not a
  hypothesis
- **Has a single focus** — tests one thing; compound hypotheses ("X and Y are
  true") should be split
- **Predicts an outcome** — states what you expect to find, not just what you
  want to explore
- **Is grounded** — based on prior knowledge or reasonable assumption, not
  wishful thinking
- **Has a clear scope** — defines the who, what, and where so research stays
  focused

Ask questions (using the question tool) until the hypothesis passes the
check-list above.

### Phase 3: Research

Search for evidence that supports or contradicts the hypothesis. Look across:

- **Supporting evidence** — data, studies, reports, or examples that confirm the
  hypothesis
- **Contradicting evidence** — data, examples, or expert opinion that challenge
  it
- **Neutral/contextual evidence** — background facts that help interpret the
  findings
- **Expert or analyst coverage** — authoritative sources that have an opinion on
  the claim
- **Real-world examples** — cases where the hypothesis has played out in
  practice

### Phase 4: Write/Update Research Document with Findings

Use the document structure defined in Phase 0 and write the document to the
`./hypothesis` folder.

### Phase 5: Report

Summarize to the researcher:

1. The 3 most compelling pieces of evidence found
2. Whether the hypothesis is supported, contradicted, or mixed — and how
   confident you are as a/the research assistant that you research findings are
   correct
3. Any claims that couldn't be validated (flag these explicitly)
4. Suggest which `outputs` would benfit from taking this research into
   consideration
5. File path of the saved document

Please also update/add the report the `./hypothesis/research-index.md` file.
