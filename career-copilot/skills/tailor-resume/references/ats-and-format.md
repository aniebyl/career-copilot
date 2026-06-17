# ATS-safe formatting & output

Applicant Tracking Systems parse text; anything that breaks parsing can sink an application
before a human sees it.

## Rules

- **Single column.** No multi-column layouts, sidebars, tables, or text boxes — parsers
  scramble them.
- **No graphics carrying content.** No icons, charts, or headshots holding information.
- **Standard section headings:** Summary, Experience, Skills, Education. ATS keys off these —
  don't rename them creatively.
- **Standard fonts**, normal weights; simple bullets (• or -).
- **Real text, not text-in-image.** Dates in plain text, one consistent format.
- **Filename:** `Resume_<FullName>_<Company>_<Role>.docx`.

## Output

- Render the final resume with the **`docx` skill** (single-column, the headings above).
- Also save a **plain-text mirror** (`.txt`) — handy for paste-into-portal fields and a fast
  ATS sanity check.
- Save both into the pipeline store under the company/role folder.

## Quick self-check before delivering

- Does the plain-text version read cleanly top-to-bottom (no jumbled columns)?
- Are the JD's top must-have keywords present *verbatim* and *truthful*?
- Is every section heading standard?
