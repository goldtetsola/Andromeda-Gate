# Contributing

Thanks for improving Andromeda-Gate.

## Repo conventions

- Keep the skill package under `skills/andromeda-gate/`.
- Keep the frontmatter `name` in `SKILL.md` aligned with the directory name:
  `andromeda-gate`.
- Keep high-level routing and workflow in `SKILL.md`.
- Put long-form reference material in `skills/andromeda-gate/references/`.
- Update `VERSIONS.md` when the skill changes in a way that affects behavior,
  structure, or guidance.

## Local validation

Run:

```bash
./scripts/validate-skill-repo.sh
```

## Pull request checklist

- Skill name and folder taxonomy still match
- Reference paths still resolve
- No loose root-level skill files were reintroduced
- `README.md` and `VERSIONS.md` reflect material changes
- Validation passes
