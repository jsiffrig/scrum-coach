# SCRUM Coach Assistant — International Discovery Survey Kit

**Created** : 2026-05-20
**Purpose** : Scalable discovery questionnaire to validate Coach Assistant concept across FR + international amateur rugby coach communities. Complements the 1:1 interview kit (5 calls/week, deep qualitative) with broader quantitative signal (50-100+ responses target).

---

## 1. Tool choice — Tally.so

**Why Tally** :
- EU-based (Belgium) → RGPD-native, no DPA US headaches
- Free tier : 200 responses/month, unlimited forms, conditional logic, file uploads
- UX modern (mobile-friendly, completion rate ~70%+ vs 40% Google Forms)
- Export CSV / Google Sheets / Notion / Airtable / Webhook
- Embed possible on `scrum-rugby.fr/coach/survey` if needed
- No login required for respondents (lowers friction)

**Alternative** if Tally restrictive : **Framaforms** (France, libre/CC) — UI plus austère mais 0€ et 100% FR association.

**Excluded** : Google Forms (US data residency), Typeform (US + payant), SurveyMonkey (US).

## 2. Distribution strategy — Where to post

### 🇫🇷 French-speaking coaches
| Canal | Membres approx | Action |
|---|---|---|
| **FB Group "Entraîneurs de Rugby"** | ~12k | Post avec lien + screenshot landing |
| **FB Group "Rugby Coachs France"** | ~5k | Idem |
| **FB Group "École de Rugby France"** | ~8k | Idem, cibler EDR (M6-M14) |
| **Discord "Rugby France"** (channels coaching) | ~2k | DM admin pour permission post |
| **LinkedIn perso JS** | — | Post + tag réseau LRGER |
| **Réseau LRGER direct** | ~50 | WhatsApp/Messenger 1:1 si pas pickup phone |
| **Le Rugbynistère commentaires** | — | Si tu connais quelqu'un éditorial, pitch un article |

### 🌍 International (EN)
| Canal | Membres approx | Action |
|---|---|---|
| **Reddit r/rugbycoaching** | ~8k | Post hebdo permis selon mods |
| **Reddit r/rugbyunion** (coach Tuesday threads) | ~250k | Wait for coach megathread |
| **FB Group "Rugby Coaches International"** | ~15k | Post avec lien EN |
| **FB Group "Rugby Union Coaches Worldwide"** | ~6k | Idem |
| **LinkedIn World Rugby Coach Network group** | ~3k | Post pro-tone |
| **X/Twitter rugby coaching hashtags** | — | #RugbyCoaching #RugbyTactics |
| **Rugby World Coaching newsletter** (if accessible) | — | Pitch éditorial |

### 🇪🇸🇵🇹 Latin (Phase 2, semaine 3-4 si premier round confirme)
- Argentine/Uruguay/Chili : groupes FB locaux, post ES
- Brésil/Portugal : groupes FB locaux, post PT
- Italie : groupe FB "Allenatori Rugby Italia" + LinkedIn

**Cadence** : 1 post FR + 1 post EN par jour pendant 5 jours d'affilée (semaine 1), puis follow-up bump à J+3 et J+7.

## 3. Questionnaire structure — 15 questions, ~5-7 min

**Logique** : warm-up profil (3) → workflow actuel (3) → pain points (2) → solution reaction (3) → WTP (2) → beta opt-in + email (2).

**Conditional logic Tally** :
- Q12 "WTP libre" : si <5€ → Q13 montre uniquement "gratuit/9€", saute 19€/29€
- Q14 "beta interest" : si NON → saute Q15 email, direct fin de form

---

## 4. Version Française (à coller dans Tally — 1 page Welcome + sections)

### Page Welcome (Tally splash)
**Titre** : SCRUM Coach Assistant — On veut comprendre comment tu prépares tes séances 🏉

**Sous-titre** :
Salut ! Je suis Jean-Samuel, coach séniors AS Lauterbourg (R3 Alsace) et je bosse plein temps depuis avril sur un outil IA pour les coachs amateurs de rugby. Avant d'écrire la moindre ligne de code, je veux comprendre comment vous bossez VRAIMENT. 5-7 minutes, anonyme si tu veux, et tu auras accès en avant-première à la beta de septembre 2026.

🇪🇺 Hébergement EU, RGPD natif, aucune data partagée hors UE. Tes réponses servent uniquement à construire le produit.

**Bouton** : C'est parti

### Section 1 — Toi (profil)

**Q1. Dans quel pays tu coaches ?**
Type : Select country (dropdown Tally natif)
*Required*

**Q2. Quelle fédération nationale ?**
Type : Single choice
- FFR (France)
- RFU (Angleterre)
- WRU (Pays de Galles)
- IRFU (Irlande)
- SARU (Afrique du Sud)
- RA (Australie)
- NZR (Nouvelle-Zélande)
- USAR (États-Unis)
- Rugby Canada
- FIR (Italie)
- FER (Espagne)
- FPR (Portugal)
- UAR (Argentine)
- Autre (texte libre)
*Required*

**Q3. Quelle catégorie tu coaches principalement ?**
Type : Single choice
- École de rugby M6-M10
- Jeunes M12-M14
- Cadets/Juniors M16-M19
- Seniors club
- Seniors compétition régionale/nationale
- Universitaire
- Féminin (toutes catégories)
- Plusieurs catégories (préciser texte)
*Required*

**Q4. Depuis combien d'années tu coaches ?**
Type : Single choice
- Moins d'1 an
- 1-3 ans
- 4-7 ans
- 8-15 ans
- Plus de 15 ans
*Required*

**Q5. Ton statut au club ?**
Type : Single choice
- Bénévole intégral
- Bénévole indemnisé (défraiement)
- Salarié partiel
- Salarié temps plein
- Brevet fédéral (BF/BPJEPS/DEJEPS/DESJEPS)
- Aucun diplôme formel

### Section 2 — Ton workflow actuel

**Q6. Sur une semaine type, combien d'heures tu passes pour le club HORS terrain (prépa séance, admin, comm, vidéo) ?**
Type : Single choice
- Moins de 2h
- 2-5h
- 5-10h
- 10-15h
- Plus de 15h

**Q7. Quand tu prépares une séance d'entraînement, tu pars de quoi ?** *(plusieurs choix possibles)*
Type : Multiple choice
- Feuille blanche, je reconstruis à chaque fois
- Je réutilise/adapte mes anciennes séances
- Je copie d'un livre de coaching
- Je cherche sur YouTube
- Je demande à des collègues coachs
- J'utilise une appli (préciser : ___)
- J'utilise ChatGPT/Claude/IA générale
- Je suis le plan imposé par le club/DTN

**Q8. Combien de temps tu mets en moyenne pour préparer UNE séance complète ?**
Type : Single choice
- Moins de 15 min
- 15-30 min
- 30-60 min
- 1-2 heures
- Plus de 2 heures

### Section 3 — Tes pain points

**Q9. Quels sont les 3 trucs qui te gonflent le plus dans ton boulot de coach HORS-TERRAIN ?** *(ouvert, max 200 caractères)*
Type : Long text
*Required*
**Helper text** : Tout sauf ce qui se passe sur le pré (donc pas "mon ouvreur écoute pas" 😄). Ce qui est autour : prépa, admin, comm, recrutement, etc.

**Q10. Sur les règles du jeu (interpretations, modifications, cas litigieux), où tu vas chercher l'info quand t'es coincé ?** *(plusieurs choix)*
Type : Multiple choice
- Je demande à l'arbitre du dernier match
- Site officiel World Rugby Laws
- Site de ma fédération nationale
- Forums / groupes Facebook coachs
- ChatGPT/IA générale
- Bouquins coaching
- Je sais pas trop, je devine
- Autre (préciser)

### Section 4 — Réaction au concept

**Q11. Imagine un assistant IA qui (1) génère des séances structurées à partir d'une thématique que tu tapes — "défense en ligne séance 75 min M14" → plan complet, drills, schémas, timing —, (2) répond à toutes tes questions règles ou tactique en citant la source officielle FFR/World Rugby. Spontanément, t'en penses quoi ?**
Type : Single choice (Likert 5)
- 🤩 Ça me parle énormément, j'en ai besoin
- 🙂 Sympa, je testerais
- 😐 Bof, je vois pas trop l'intérêt pour moi
- 😕 Pas convaincu, j'aime préparer moi-même
- ❌ Mauvaise idée, je veux pas d'IA dans mon coaching

**Q12. Classe ces 5 features de la PLUS utile à la MOINS utile pour TON quotidien :**
Type : Ranking (Tally natif)
- Générateur de séances structurées sur thématique
- Chat IA pour poser n'importe quelle question règle ou tactique
- Bibliothèque de drills filtrable par catégorie/objectif
- Veille auto news World Rugby / fédération nationale / coachs réputés
- Intégration future avec analyse vidéo automatique de tes matchs (SCRUM video)

### Section 5 — Willingness-to-pay

**Q13. À ton avis, un tel outil ça coûterait combien par mois ?** *(ouvert, juste ton instinct)*
Type : Short text
**Helper** : Pas de bonne ou mauvaise réponse — ton chiffre spontané. En euros ou en monnaie locale (précise).

**Q14. Pour les niveaux suivants, tu paierais pour ton usage perso ?**
Type : Matrix (Likert 3 : Oui / Peut-être / Non)
- Gratuit avec pub : ___ / ___ / ___
- 9 €/mois : ___ / ___ / ___
- 19 €/mois : ___ / ___ / ___
- 29 €/mois : ___ / ___ / ___

### Section 6 — Beta opt-in

**Q15. Beta privée gratuite septembre 2026 — t'es intéressé ?**
Type : Single choice
- Oui, prends mon email
- Peut-être plus tard
- Non merci

**Q16. (conditional, si Oui Q15) — Ton email pour la beta** :
Type : Email
**Helper** : Utilisé uniquement pour la beta. Aucune newsletter, aucun spam. Suppression sur simple demande (RGPD).

**Q17. (conditional, si Oui Q15) — Tu connais 2-3 coachs amateurs qui devraient aussi recevoir cette enquête ? Tu peux partager ce lien ou me filer un contact (optionnel).**
Type : Long text

### Page Fin (Tally thank-you)

**Titre** : Merci ! 🏉

**Corps** :
Ton input fait avancer le produit. Si t'es OK, partage le lien : `tally.so/r/XXXXX`
- À 50 réponses je te tweete une synthèse publique des résultats
- Beta septembre = early bird locked à -50% pendant 12 mois

Suis le projet :
- LinkedIn : linkedin.com/in/jean-samuel-iffrig
- Site : scrum-rugby.fr

---

## 5. English version (parallel)

Same structure, translated. Key differences :
- Q2 federation list : add ARU, FIRA-AER, etc. → keep "Other (specify)" as catch-all
- Q11 reaction concept : keep emoji Likert
- Q14 WTP : same prices in € + add note "(or local equivalent ~$10/$22/$33 USD)"

### Welcome page (EN)
**Title** : SCRUM Coach Assistant — Help us understand how you prep your sessions 🏉

**Subtitle** :
Hi! I'm Jean-Samuel, senior coach at AS Lauterbourg (FR R3) and I'm working full-time since April on an AI assistant for amateur rugby coaches worldwide. Before writing a single line of code, I want to understand how you ACTUALLY work. 5-7 minutes, anonymous if you prefer, and you'll get early access to the September 2026 beta.

🇪🇺 EU hosting, GDPR-native, no data shared outside EU. Your answers are used only to build the product.

**Button** : Let's go

[Sections 1-6 mirror FR version — full EN translation to be done by JS or via DeepL pro before publishing]

---

## 6. Pre-launch checklist (avant 1er post)

- [ ] Créer compte Tally.so (EU residency confirmed in settings)
- [ ] Construire le form FR section par section (Tally drag-and-drop, ~45 min)
- [ ] Activer conditional logic Q12-Q14 et Q15-Q17
- [ ] Tester sur mobile (target 70%+ mobile completion)
- [ ] Activer Tally Analytics (completion rate, drop-off, time-to-complete)
- [ ] Connecter export → Google Sheets ou Notion DB
- [ ] Build form EN (duplicate FR + traduire)
- [ ] Domaine custom Tally (`survey.scrum-rugby.fr` via CNAME) — optionnel mais pro
- [ ] Préparer 1 screenshot par canal (carré FB/IG, paysage LinkedIn, vertical IG Story)
- [ ] Tracker source : Tally URL params `?src=fb_group_a` pour mesurer canal performant

## 7. Stratégie d'analyse — "Chiffrer" les résultats

### À cumul 30 / 50 / 100 réponses

**Export CSV depuis Tally → Pandas notebook ou Google Sheets pivot**.

**Métriques clés à tracker** :

| Métrique | Source | Signal GO | Signal NO-GO |
|---|---|---|---|
| Completion rate | Tally Analytics | ≥65% | <50% (form trop long) |
| Time-to-complete médian | Tally Analytics | 5-8 min | >12 min |
| Q9 pain points : "prépa séance" / "trouver exos" mention rate | Pandas word freq | ≥40% | <20% |
| Q11 réaction concept positive (🤩 + 🙂) | % calcul | ≥55% | <30% |
| Q12 ranking : "générateur séances" en top 2 | % calcul | ≥45% | <25% |
| Q13 WTP libre médian | Stats descriptives | ≥12€/mois | <5€ |
| Q14 OUI à 19€/mois | % calcul | ≥35% | <15% |
| Q15 beta opt-in rate | % calcul | ≥40% | <20% |
| Q17 contacts referrals (nb total) | Comptage | ≥10 | <3 |

**Notebook template** (à créer dans `~/projects/scrum-coach/data/eval/survey_analysis.ipynb` après premiers résultats) :
```python
import pandas as pd
df = pd.read_csv("tally_export.csv")

# Segmentation par pays
df.groupby("country")["wtp_19eur_yes"].mean()

# Segmentation par catégorie coachée
df.groupby("category_coached")["concept_reaction_positive"].mean()

# Word cloud pain points Q9
from wordcloud import WordCloud
text = " ".join(df["pain_points_q9"].dropna())
WordCloud().generate(text).to_file("pain_points_wordcloud.png")
```

### Segmentation prioritaire

- **Par pays** : valider si demande est globale ou FR-only
- **Par catégorie coachée** : EDR M6-M14 vs Seniors → priorité feature différente
- **Par statut bénévole/salarié** : WTP très différent
- **Par années d'expérience** : novices = besoin contenu fort, expérimentés = besoin gain temps

## 8. Décision GO / NO-GO post-survey (40+ réponses minimum)

**GO POC build** si ≥4/6 :
- Q11 réaction positive ≥55%
- Q12 "générateur séances" top 2 ≥45%
- Q14 OUI à 19€ ≥35%
- Q9 "prépa séance" mention ≥40%
- Q15 beta opt-in ≥40%
- ≥10 emails beta collectés

**NO-GO ou pivot** si ≥2/4 :
- Q11 réaction <30%
- Q14 OUI à 19€ <15%
- Q9 pain dominant ailleurs (admin, recrutement, finances)
- 0 référral Q17

## 9. Timeline suggérée

| Semaine | Action |
|---|---|
| **S20 (20-24 mai)** | 5 interviews téléphoniques FR (kit séparé) + build Tally form FR |
| **S21 (25-31 mai)** | Form EN ready, test interne, premier post FB + Reddit FR/EN |
| **S22 (1-7 juin)** | Distribution 5 canaux FR + 5 EN, bump J+3 |
| **S23 (8-14 juin)** | Analyse 30 premiers résultats, ajustement si needed |
| **S24 (15-21 juin)** | Phase 2 ES/PT/IT si signal global validé. Décision GO/NO-GO POC à 50 réponses |

---

**Owner** : JS
**Last updated** : 2026-05-20
**Related** : `docs/design/coach_assistant_spec_2026_05_20.md`, kit interviews 1:1 (livré séparément)
