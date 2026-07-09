# Repository Guidance

## Scope

This repo contains the `rpi-clone` Bash utility and its setup helper. Keep
changes focused on script behavior, documentation, or validation.

## Validation

Run before handing off changes:

```bash
./scripts/validate.sh
```

The validator is intentionally non-destructive and does not require a real
clone target.
