# Prompt master Claude in Chrome — Build Tally form Coach Assistant Discovery FR

**Date** : 2026-05-21
**Usage** : copier le bloc entre les `===` ci-dessous, le coller dans l'extension Claude for Chrome (icône dans la barre Chrome), avec l'onglet Tally du form "SCRUM Coach Assistant — Discovery FR" actif. Mode "Planning" recommandé : Claude propose un plan, tu valides, il exécute en supervisé.

## Pré-requis

- Extension **Claude for Chrome** installée (https://chromewebstore.google.com/publisher/anthropic)
- Plan Claude Pro/Max actif (déjà OK pour JS)
- Onglet Tally ouvert sur le form "SCRUM Coach Assistant — Discovery FR" (URL à noter au moment du run)
- Form actuel contient déjà : Heading 1 "SCRUM Coach Assistant…" + Text intro + Divider

## État de référence avant lancement

✅ Welcome page faite (Heading + Text de présentation avec mention "N'hésitez pas à me contacter si vous voulez participer à la réussite de ce projet")
✅ Divider en place
❌ 17 questions à construire (Section 1 à 6)
❌ Conditional logic Q15 → Q16/Q17 à activer
❌ Thank You page à ajouter

## Le prompt master à coller dans Claude in Chrome

```
=== MISSION ===
Tu es Claude in Chrome. Tu dois construire un form Tally complet pour un survey de discovery d'un projet appelé "SCRUM Coach Assistant" — un SaaS LLM+RAG pour coachs de rugby amateur français et internationaux. Tu travailles dans l'onglet Tally actuellement ouvert. L'utilisateur (Jean-Samuel, JS) supervisera et corrigera au fur et à mesure.

=== ÉTAT ACTUEL DU FORM ===
Le form FR est déjà créé et nommé "SCRUM Coach Assistant — Discovery FR".
Il contient DÉJÀ :
- Un Heading 1 : "SCRUM Coach Assistant — On veut comprendre comment tu prépares tes séances 🏉"
- Un bloc Text de présentation (intro JS + appel à participer)
- Un Divider

Ta mission : ajouter 17 questions structurées en 6 sections, puis configurer conditional logic + Thank You page.

=== STRATÉGIE UX HYBRIDE ===
Par défaut, suis cette répartition :
- Questions profil (Q1-Q5) : Multiple choice quand catégories finies, Short answer pour pays/fédération libres
- Questions workflow (Q6-Q8) : Multiple choice avec ranges
- Questions pain points (Q9, Q11-libre, Q18) : LONG ANSWER (texte libre — le plus précieux)
- Q10 sources règles : Checkboxes (multi-select)
- Q11 réaction concept : Multiple choice Likert 5 (emojis 🤩🙂😐😕❌)
- Q12 ranking features : Ranking (bloc natif Tally)
- Q13 WTP libre : Short answer
- Q14 WTP ancres : Matrix (Linear scale ou Multiple choice par ligne)
- Q15 beta opt-in : Multiple choice (Oui / Peut-être / Non)
- Q16 email : Email block (validation native)
- Q17 referrals : Long answer

Si tu hésites sur un type de bloc, demande-moi avant.
Marque "Required" toutes les questions sauf Q16-Q17 (conditional) et Q18 (closing optionnel).

=== LES 17 QUESTIONS À CRÉER ===

--- Section 1 : Toi (profil) ---

Q1. Dans quel pays tu coaches ?
Type : Short answer
Placeholder : "ex: France, Argentina, New Zealand…"
Required : oui

Q2. Quelle fédération nationale ?
Type : Multiple choice (single select)
Options :
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
- Autre
Required : oui

Q3. Quelle catégorie tu coaches principalement ?
Type : Multiple choice (single select)
Options :
- École de rugby M6-M10
- Jeunes M12-M14
- Cadets/Juniors M16-M19
- Seniors club
- Seniors compétition régionale/nationale
- Universitaire
- Féminin (toutes catégories)
- Plusieurs catégories
Required : oui

Q4. Depuis combien d'années tu coaches ?
Type : Multiple choice (single select)
Options :
- Moins d'1 an
- 1-3 ans
- 4-7 ans
- 8-15 ans
- Plus de 15 ans
Required : oui

Q5. Ton statut au club ?
Type : Multiple choice (single select)
Options :
- Bénévole intégral
- Bénévole indemnisé (défraiement)
- Salarié partiel
- Salarié temps plein
- Brevet fédéral (BF/BPJEPS/DEJEPS/DESJEPS)
- Aucun diplôme formel
Required : non

--- Ajoute un "New page" (séparateur Section 1 / Section 2) ---

--- Section 2 : Ton workflow actuel ---

Q6. Sur une semaine type, combien d'heures tu passes pour le club HORS terrain (prépa séance, admin, comm, vidéo) ?
Type : Multiple choice (single select)
Options :
- Moins de 2h
- 2-5h
- 5-10h
- 10-15h
- Plus de 15h
Required : oui

Q7. Quand tu prépares une séance d'entraînement, tu pars de quoi ? (plusieurs choix possibles)
Type : Checkboxes (multi-select)
Options :
- Feuille blanche, je reconstruis à chaque fois
- Je réutilise/adapte mes anciennes séances
- Je copie d'un livre de coaching
- Je cherche sur YouTube
- Je demande à des collègues coachs
- J'utilise une appli (préciser)
- J'utilise ChatGPT/Claude/IA générale
- Je suis le plan imposé par le club/DTN
Required : oui

Q8. Combien de temps tu mets en moyenne pour préparer UNE séance complète ?
Type : Multiple choice (single select)
Options :
- Moins de 15 min
- 15-30 min
- 30-60 min
- 1-2 heures
- Plus de 2 heures
Required : oui

--- Ajoute un "New page" ---

--- Section 3 : Tes pain points ---

Q9. Quels sont les 3 trucs qui te gonflent le plus dans ton boulot de coach HORS-TERRAIN ?
Type : Long answer
Helper text : "Tout sauf ce qui se passe sur le pré. Ce qui est autour : prépa, admin, comm, recrutement, etc."
Required : oui

Q10. Sur les règles du jeu (interpretations, modifications, cas litigieux), où tu vas chercher l'info quand t'es coincé ?
Type : Checkboxes (multi-select)
Options :
- Je demande à l'arbitre du dernier match
- Site officiel World Rugby Laws
- Site de ma fédération nationale
- Forums / groupes Facebook coachs
- ChatGPT/IA générale
- Bouquins coaching
- Je sais pas trop, je devine
- Autre
Required : oui

--- Ajoute un "New page" ---

--- Section 4 : Réaction au concept ---

Q11. Imagine un assistant IA qui (1) génère des séances structurées à partir d'une thématique que tu tapes — "défense en ligne séance 75 min M14" → plan complet, drills, schémas, timing —, (2) répond à toutes tes questions règles ou tactique en citant la source officielle FFR/World Rugby. Spontanément, t'en penses quoi ?
Type : Multiple choice (single select)
Options :
- 🤩 Ça me parle énormément, j'en ai besoin
- 🙂 Sympa, je testerais
- 😐 Bof, je vois pas trop l'intérêt pour moi
- 😕 Pas convaincu, j'aime préparer moi-même
- ❌ Mauvaise idée, je veux pas d'IA dans mon coaching
Required : oui

Q12. Classe ces 5 features de la PLUS utile à la MOINS utile pour TON quotidien :
Type : Ranking (bloc natif Tally)
Options à ordonner :
- Générateur de séances structurées sur thématique
- Chat IA pour poser n'importe quelle question règle ou tactique
- Bibliothèque de drills filtrable par catégorie/objectif
- Veille auto news World Rugby / fédération nationale / coachs réputés
- Intégration future avec analyse vidéo automatique de tes matchs (SCRUM video)
Required : oui

--- Ajoute un "New page" ---

--- Section 5 : Willingness-to-pay ---

Q13. À ton avis, un tel outil ça coûterait combien par mois ?
Type : Short answer
Helper text : "Pas de bonne ou mauvaise réponse — ton chiffre spontané. En euros ou en monnaie locale (précise)."
Required : oui

Q14. Pour les niveaux suivants, tu paierais pour ton usage perso ?
Type : Matrix (si Tally a Matrix natif) OU 4 questions Multiple choice séparées
Lignes : Gratuit avec pub | 9 €/mois | 19 €/mois | 29 €/mois
Colonnes (3 choix) : Oui / Peut-être / Non
Required : oui

--- Ajoute un "New page" ---

--- Section 6 : Beta opt-in ---

Q15. Beta privée gratuite septembre 2026 — t'es intéressé ?
Type : Multiple choice (single select)
Options :
- Oui, prends mon email
- Peut-être plus tard
- Non merci
Required : oui

Q16. Ton email pour la beta
Type : Email
Helper text : "Utilisé uniquement pour la beta. Aucune newsletter, aucun spam. Suppression sur simple demande (RGPD)."
Required : non
LOGIC : afficher SEULEMENT si Q15 = "Oui, prends mon email"

Q17. Tu connais 2-3 coachs amateurs qui devraient aussi recevoir cette enquête ?
Type : Long answer
Helper text : "Tu peux partager ce lien ou me filer un contact (optionnel)."
Required : non
LOGIC : afficher SEULEMENT si Q15 = "Oui, prends mon email"

Q18. Dernière — qu'est-ce que je t'ai pas demandé que tu aurais aimé que je te demande ?
Type : Long answer
Required : non

=== THANK YOU PAGE ===
À la fin du form, ajoute une "Thank you page" Tally avec :

Titre : Merci ! 🏉

Corps :
"Ton input fait avancer le produit. Si t'es OK, partage ce lien dans tes groupes coachs.
À 50 réponses je tweete une synthèse publique des résultats.
Beta septembre = early bird locked à -50% pendant 12 mois.

Suis le projet :
- LinkedIn : linkedin.com/in/jean-samuel-iffrig
- Site : scrum-rugby.fr"

=== MODE OPÉRATIONNEL ===
1. Travaille SECTION PAR SECTION. Après chaque section (5 sections de questions + Thank You page), pause et demande-moi "Section X terminée — je continue ?" avec un screenshot ou résumé visuel de ce que tu as fait.
2. Si un type de bloc Tally n'existe pas comme prévu (ex: Matrix natif), propose-moi 2 alternatives avant de trancher.
3. À la toute fin : vérifie que conditional logic Q15→Q16/Q17 est bien activée, et que toutes les questions marquées "Required" sont bien required.
4. Estime durée totale ~30-40 min. Si plus, signale-le-moi.

=== COMMENCE ===
Commence par la Section 1 (Q1 à Q5). Quand fini, propose un récap visuel et attends ma validation avant Section 2.
```

## Après la construction Tally

Une fois le form FR complet :

1. **Tester sur mobile** (target 70%+ mobile completion)
2. **Tally → Integrations → Google Sheets** : connecter export
3. **Dupliquer le form** → renommer "SCRUM Coach Assistant — Discovery EN"
4. **Re-lancer Claude in Chrome** sur le form EN avec un prompt traduction (similaire structure, contenu en anglais)
5. **Optionnel** : custom domain `survey.scrum-rugby.fr` (Pro feature Tally)

## Stratégie de distribution

Voir `~/projects/scrum-coach/docs/interviews/2026-05-20-international-survey-kit.md` section 2 — 10 canaux FR + EN, posts adaptés par canal à générer le moment venu.
