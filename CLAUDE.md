# CLAUDE.md — SCRUM Coach Assistant
> Lis ce fichier EN ENTIER avant toute action. C'est ta mémoire de session.

## BOOT SÉQUENCE — OBLIGATOIRE À CHAQUE OUVERTURE
Sans attendre d'instruction de JS, exécute immédiatement (parallèle quand possible) :
1. `git status -s && git log --oneline -10`
2. `ls docs/adr/ && ls docs/design/` pour voir les décisions/specs en cours
3. `cd backend && uv run pytest -q 2>&1 | tail -10` (si .venv existe)
4. Envoie ce briefing :
   *Prêt JS. Phase: [scaffold/sprint X]. Git: [N commits récents]. Tests: [X/Y]. Dernier ADR: [titre]. Suggestion: [1 action concrète].*

## SOURCES DE VÉRITÉ — ORDRE STRICT
Quand JS pose une question ou demande une action, je vais chercher dans cet ordre :

1. **Conversation actuelle** — ce que JS vient de dire
2. **`docs/design/`** — specs techniques produit (sources primaires architecture)
3. **`docs/adr/`** — Architecture Decision Records (pourquoi telle techno, tel design)
4. **`docs/interviews/`** — discovery coachs (besoins terrain)
5. **MEMORY.md auto** + fiches `~/.claude/projects/.../memory/*.md` — préférences JS, WIP
6. **Ce CLAUDE.md** + `~/.claude/CLAUDE.md` global — règles projet, conventions
7. **`git status -s` + `git log`** — état actuel du code
8. **Le code lui-même** (Read, grep) — vérité technique ultime
9. **Sous-agents Explore/Plan** — brouillon de cartographie, JAMAIS source finale (vérifier chaque claim avant d'agir)

Règles posées dès le scaffold (héritées du projet SCRUM) :
- Sortie d'agent Explore = brouillon, vérifier au moins UN exemple concret (ls/grep/head) avant d'agir
- `git status -s` AVANT toute action destructive (rm, mv, checkout, reset)
- Si JS dit "je ne comprends pas" ou similaire : stop, reformuler en 3 phrases simples, demander confirmation
- Si une info est éligible aux deux : structurer dans `docs/adr/` ou `docs/design/`, memory garde un pointeur léger

## MODE D'EXÉCUTION — SOTA-FIRST, SHIP-FIRST
- **Toujours SOTA** : meilleur modèle/lib/méthode 2026 par défaut. Pas d'étape pédagogique intermédiaire.
- **Décision technique courte** : nomme le choix, 1 phrase de justification, on attaque.
- **Justification uniquement si non-évidente** ou si JS demande "pourquoi ?". Pas de définitions de termes par défaut.
- **Blocker dur (licence, RGPD, coût)** = signaler + proposer le 2e meilleur compatible.
- **JS veut comprendre ce qu'il fait** : explication brève à la demande, jamais en monologue préventif.

## CONTEXTE PRODUIT
Jean-Samuel (JS), solo founder, full-time depuis fin mars 2026.
Cible : SaaS LLM+RAG pour coachs de rugby **amateur** (FR multi-fédération, FFR + World Rugby refs).
Use cases : Q&A règlements, génération drills/plans entraînement, debrief match assisté, lien futur avec données vidéo SCRUM.
Pricing pressenti : tier gratuit + tier coach (~19-29€/mois). À aligner avec SCRUM (79€/mois vidéo).
Vision : produit standalone, **intégration premium optionnelle** avec SCRUM video core (`~/projects/sports-analytics-mvp/`).
Ship cible : **août-septembre 2026**, ~12 semaines de dev depuis 20 mai 2026.

## INFRASTRUCTURE PRÉVUE
- MSI Vector 16 HX AI A2X — Ubuntu 24.04 (dev local, **PAS de GPU requis** pour Coach Assistant)
- Python : **uv** — TOUJOURS `uv add`, jamais `pip install`
- Projet : `~/projects/scrum-coach`

Stack pressentie (à confirmer par ADR Sprint 1) :
- **Backend** : Python 3.12 + FastAPI + Pydantic v2 + SQLAlchemy 2 + Alembic
- **Frontend** : Next.js 16 (réutilise stack `app.scrum-rugby.fr`)
- **DB** : PostgreSQL 16 + pgvector (ou Qdrant si scale)
- **LLM** : Mistral AI (cloud EU, RGPD natif) prioritaire ; fallback Anthropic EU / OpenAI EU
- **Embeddings** : Mistral embed ou multilingual-e5 self-host
- **Storage** : Scaleway Object Storage (S3-compatible, fr-par)
- **Auth** : Clerk EU ou self-host (à arbitrer)
- **Paiement** : Stripe (EU entity)
- **Hosting** : Scaleway fr-par (Container ou Serverless Jobs)
- **Email** : Brevo (RGPD natif, déjà utilisé sur SCRUM)

⚠️ RGPD strict non-négociable. Tout outil EU-resident ou self-host EU dès jour 1. Clarity/Resend INTERDITS.

## CONVENTIONS CODE
- Typage strict partout : `def parse_query(q: str) -> ParsedQuery:` (ruff + mypy strict en CI)
- Tests pytest pour tout nouveau module (`backend/tests/`, mirror structure de `app/`)
- Pas de secret hardcodé — toujours via `pydantic-settings` + `.env`
- Logging structuré (à choisir : `structlog` ou stdlib `logging` + JSON formatter)
- Migrations DB via Alembic, jamais raw SQL en prod

Libs clés prévues (à compléter Sprint 1 quand stack RAG figée) :
- `fastapi`, `uvicorn`, `pydantic[email]`, `pydantic-settings`
- `sqlalchemy`, `alembic`, `psycopg[binary]`, `pgvector`
- `httpx` (LLM clients)
- À venir : `mistralai` OU `anthropic` (client SDK), `tiktoken`, `langchain` (probable veto, à arbitrer), `qdrant-client` (si pivot vector store), `pypdf` / `unstructured` (ingestion sources)

## LIENS PROJETS VOISINS
- SCRUM core (video analytics) : `~/projects/sports-analytics-mvp/`
- SCRUM Brain (wiki Karpathy) : `~/projects/scrum-brain/` — second cerveau central, décisions structurantes y sont filées
- Landing public : `~/projects/sports-analytics-mvp/landing/scrum-rugby/` (live `scrum-rugby.fr`)

## NOTION
- Boulot root : 331f4e6b-572b-8161-9b14-c8d6312d0ffb
- Dépenses DB : 204f7a0b-513f-4d87-963b-1d7b84aad7d9

## AGENTS — ROUTING MODÈLES
**Opus partout, tout le temps, pour tout.** Même règle que projet SCRUM (décision JS 16 mai 2026).
- Tout sub-agent = Opus
- Aucune contrainte budget tokens
- Main thread reste sur le modèle JS a choisi (Opus 4.7 1M context par défaut)

## FIN DE SESSION — OBLIGATOIRE
Génère ce bloc que JS colle dans Claude.ai pour mettre à jour CLAUDE.md :
```
=== RECAP SESSION COACH-ASSISTANT [DATE] ===
Fait : [liste]
Métriques : [si mesurées]
Décisions : [choix techniques → ADR si structurant]
Prochaine session : [1 action concrète]
============================================
```
