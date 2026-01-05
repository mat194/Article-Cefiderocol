# Systematic Review of Cefiderocol

This repository contains the full writing, bibliography, and build artifacts for a **systematic review on cefiderocol**, prepared for journal submission using **Quarto / LaTeX** with an Elsevier-compatible workflow.

The project includes the main manuscript, supplementary material, bibliography management, and compiled outputs (PDF/DOCX), ensuring full reproducibility of the manuscript preparation process.

---

## Repository Structure

```bash
.
├── Utils/                              # Utility scripts and helper files
│
├── _extensions/
│   └── quarto-journals/
│       └── elsevier/                   # Elsevier Quarto journal template
│
├── images/                             # Figures used in the manuscript
│
├── .gitignore                          # Git ignore rules
├── Article-Cefiderocol.Rproj           # RStudio project file
│
├── Main.qmd                            # Main manuscript (Quarto source)
├── Main.tex                            # LaTeX output (generated)
├── Main.pdf                            # Compiled PDF of the manuscript
├── Main.docx                           # Compiled Word document
├── Main.spl                            # Elsevier submission file (generated)
│
├── Supplementary.qmd                   # Supplementary material (Quarto source)
├── Supplementary.tex                   # LaTeX supplementary output (generated)
├── Supplementary.pdf                   # Compiled supplementary PDF
├── Supplementary.docx                  # Compiled supplementary Word document
├── Supplementary.spl                   # Elsevier supplementary submission file
│
├── bibliography.bib                    # BibTeX bibliography database
├── elsarticle.cls                      # Elsevier LaTeX class
├── elsarticle-num.bst                  # Elsevier numeric bibliography style
│
└── README.md                           # Project documentation
```
---

## Build System

The manuscript is written in **Quarto (`.qmd`)** and can be rendered to multiple formats:

- **PDF** (LaTeX / Elsevier style)
- **DOCX** (for collaborative review)
- **SPL** (Elsevier submission format)

Rendering is handled by Quarto, with LaTeX used as the primary typesetting engine.

---

## Bibliography

References are managed via **BibTeX** (`bibliography.bib`) and formatted using Elsevier numeric style.  
Conference abstracts, posters, and oral presentations (e.g., ECCMID) are explicitly included and curated.

By default, the manuscript is rendered to **DOCX** using the Vancouver CSL style:

```yaml
bibliography: bibliography.bib
csl: Utils/elsevier-vancouver.csl
format: docx
```
It is possible to switch the output to an **Elsevier-formatted PDF** by:
- **Commenting** out `csl: Utils/elsevier-vancouver.csl` and `format: docx`
- **Uncommenting** the `format: elsevier-pdf` block in the Quarto YAML header

---

## Related Work

A **related and complementary meta-analysis on cefiderocol** is maintained in a separate repository:

🔗 https://github.com/mat194/Cefiderocol-Meta-analysis
