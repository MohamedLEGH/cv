# Mohamed Amine LEGHERABA's CV

## Repo Structure

- `cv.typ` — Main entry point, compiles the CV using the brilliant-cv template
- `metadata.toml` — Metadata (name, contact, language, layout, colors, ATS keywords)
- `letter.typ` — Cover letter (⚠️ currently a generic template, not personalized)
- `modules_en/` — CV sections in English (education, professional, skills, projects, publications, teaching, certificates)
- `modules_fr/` — CV sections in French (same structure)
- `assets/` — Photo, logos, publications.bib
- `.github/` — GitHub Actions for automatic compilation

## Compilation Commands

```bash
typst compile cv.typ cv.pdf                        # English version
typst compile cv.typ cv_fr.pdf --input language=fr  # French version
```

## Decisions Made

- PowerPoint removed from Tools section (April 2026)
- Ansible added to DevOps section (April 2026)

## Pending Suggestions

- [ ] Rewrite cover letter (currently a generic "Senior Data Analyst at ABC Company" template)
- [ ] Enable LinkedIn in metadata.toml (currently commented out)
- [ ] Enrich Projects section: add GitHub repos for algorithms (Elevator, HEAL, Lift, FLAIR)
- [ ] Refine skills: too many languages listed (7), prioritize Python/JS/C++ and downgrade the rest
- [ ] Move SQLAlchemy from Databases to Frameworks
- [ ] Add certificates in certificates.typ (TOEIC, etc.)
- [ ] Quantify professional results: number of audited smart contracts, team sizes, project impact
- [ ] Gap 2018-2019 unexplained between graduation and Sia Partners
