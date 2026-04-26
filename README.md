# Curriculum Vitae — Mohamed Amine LEGHERABA

My CV, built with [Typst](https://typst.app/) and the [brilliant-CV](https://github.com/yunanwg/brilliant-CV) template.

## Preview

- 🇬🇧 [cv.pdf](cv.pdf) — English version
- 🇫🇷 [cv_fr.pdf](cv_fr.pdf) — French version

## Compilation

Prerequisite: [Typst](https://github.com/typst/typst) installed.

```bash
typst compile cv.typ cv.pdf                        # English
typst compile cv.typ cv_fr.pdf --input language=fr  # French
```

## Structure

```
cv.typ              # Main entry point
metadata.toml       # Metadata (identity, contact, layout, ATS keywords)
letter.typ          # Cover letter
modules_en/         # CV sections in English
modules_fr/         # CV sections in French
assets/             # Photo, logos, publications.bib
.github/            # GitHub Actions (automatic compilation)
```

## License

This is a personal repository. The brilliant-CV template is licensed under MIT.
