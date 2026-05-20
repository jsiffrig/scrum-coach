# SCRUM Coach Assistant

LLM + RAG SaaS for amateur rugby coaches — règlements, drills, plans d'entraînement et debrief de match assistés par IA, en français multi-fédération (FFR, World Rugby).

## Status

Early-stage MVP, scaffold initialisé **20 mai 2026**. Ship cible : **août-septembre 2026** (12 semaines de dev). Produit standalone, intégration premium optionnelle avec [SCRUM core video analysis](https://scrum-rugby.fr).

## Structure

```
scrum-coach/
├── backend/      # FastAPI + RAG + LLM orchestration (Python 3.12, uv)
├── frontend/     # Next.js 16 UI (placeholder, init Sprint 1)
├── docs/         # ADR, design specs, interview notes
├── data/         # Sources règlements + drills + scraped corpus + eval set
├── scripts/      # Dev tooling + deploy scripts
└── infra/        # Docker compose + Scaleway IaC
```

## Quick start (dev)

```bash
cd backend
uv sync --extra dev          # crée .venv/ + install deps
uv run pytest -q             # run tests (vide pour l'instant)
uv run ruff check .          # lint
uv run mypy app              # type-check
```

Pour le setup initial complet : `bash scripts/dev/setup.sh`.

## Hosting + RGPD

Cible déploiement : **Scaleway fr-par** (Paris, RGPD natif). Tout sous-traitant LLM doit être EU-resident (Mistral AI cloud EU) ou self-hosted GPU. Pas de transfert hors UE.

## Documentation

- Design technique : [`docs/design/`](docs/design/)
- Décisions architecture : [`docs/adr/`](docs/adr/)
- Interviews coachs (discovery) : [`docs/interviews/`](docs/interviews/)
- Instructions agent IA : [`CLAUDE.md`](CLAUDE.md)

## Licence

Apache 2.0 (à confirmer). Voir `LICENSE`.
