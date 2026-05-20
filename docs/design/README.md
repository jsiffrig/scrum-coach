# Design Docs — SCRUM Coach Assistant

Specs techniques produit. Source primaire pour architecture, RAG pipeline, API design, UX flows.

## Index

(Vide pour l'instant — premier doc à venir Sprint 1.)

## Conventions

- 1 fichier par sujet majeur, format `YYYY-MM-DD-<topic>.md`
- Format : Contexte → Décision → Conséquences → Alternatives → Open questions
- Tout doc structurant doit avoir un ADR correspondant dans [`../adr/`](../adr/)
- Diagrammes : Mermaid embed (markdown natif), `excalidraw` sinon

## Prochains docs attendus

- `2026-05-XX-rag-pipeline-architecture.md` — corpus ingestion → embeddings → retrieval → generation
- `2026-05-XX-llm-provider-comparison.md` — Mistral vs Anthropic vs OpenAI EU (coût / qualité FR / RGPD)
- `2026-05-XX-data-sources-corpus.md` — règlements FFR, World Rugby laws, drills publics, ground truth eval set
- `2026-05-XX-api-surface-v0.md` — endpoints FastAPI MVP
- `2026-05-XX-frontend-information-architecture.md` — UX coach flows
