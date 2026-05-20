# Architecture Decision Records (ADR) — SCRUM Coach Assistant

Décisions techniques structurantes : quoi, pourquoi, alternatives écartées, conséquences.

## Index

(Vide pour l'instant — ADR-0001 à venir Sprint 1.)

## Convention

Fichiers nommés `ADR-NNNN-<slug>.md` (numérotation séquentielle, 4 chiffres).

## Template

```markdown
# ADR-NNNN — <Titre court>

- **Date** : YYYY-MM-DD
- **Status** : Proposed | Accepted | Deprecated | Superseded by ADR-XXXX
- **Auteur** : Jean-Samuel Iffrig

## Contexte
Le problème ou la décision à prendre, en 1-3 paragraphes.

## Décision
Le choix retenu, 1 phrase claire + détails.

## Alternatives considérées
- Option A : [pourquoi écartée]
- Option B : [pourquoi écartée]

## Conséquences
- Positives : ...
- Négatives / coûts : ...
- Risques / dette technique : ...

## Open questions
- ...
```

## ADRs prévus tôt

- ADR-0001 — Choix du LLM provider (Mistral vs Anthropic EU vs OpenAI EU)
- ADR-0002 — Vector store (pgvector vs Qdrant)
- ADR-0003 — Stratégie ingestion corpus (PDF parsing, chunking, métadonnées fédération)
- ADR-0004 — Auth provider (Clerk vs self-host JWT)
- ADR-0005 — Frontend stack (Next.js 16 — confirm + App Router, shadcn/ui réutilisé de SCRUM)
- ADR-0006 — Politique RGPD données coachs (consentement, droit accès, conservation)
