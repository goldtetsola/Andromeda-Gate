---
name: andromeda-gate
version: 1.0.0
description: |
  Audit Meta ad creatives or generate new briefs that are distinct enough for delivery
  and audience coverage. Use when the user says things like "audit my creatives,"
  "are these ads too similar," "check creative fatigue," "generate new ad concepts,"
  "iterate this winner without copying it," or "build a fresh Meta creative batch."
  Use whenever the task is about making paid-social creatives look different enough
  and feel different enough that they do not overlap.
---

# Andromeda-Gate

Audit or generate Meta creatives that clear two gates:
- Visual distinctness so Andromeda treats them as different ads
- Psychological distinctness so they reach different people or moments

## Required reference

Read `references/andromeda-gate-reference.md` before auditing or generating.

Use it for:
- Tier-1, Tier-2, and Tier-3 visual distinctness rules
- The three-question psychological check
- The emotion map
- The coverage grid
- The signal-to-action map
- SCAMPER prompts
- The pre-ship checklist

## Mode routing

Route based on what the user gives you:
- `Audit`: user provides existing creatives, briefs, or descriptions and wants overlap,
  fatigue, or coverage checked
- `Generate`: user wants new concepts or briefs
- `Both`: audit first, then generate into uncovered gaps

## Non-negotiables

Do not:
- Treat copy-only changes as distinct creatives
- Call two creatives distinct if they answer the same `who / itch / why us`
- Blend multiple emotional angles into one concept
- Make the viewer feel judged
- Output generic problem statements when a specific moment, claim, or identity frame
  would be sharper

Keep outputs casual, concise, and production-usable.

## Audit workflow

1. Gather what each creative looks like, says, and how it is performing.
2. Map every creative into the coverage grid.
3. Check each pair for visual distinctness using the tier system.
4. Check each creative for psychological distinctness using:
   - Who is this person?
   - What's their itch?
   - Why would they care about us?
5. If performance data exists, use the signal-to-action map.
6. Return:
   - Coverage grid
   - Visual pass/fail
   - Psychological overlaps
   - Diagnosis
   - Missing territory
   - Ranked recommendations

## Generate workflow

1. Gather the product, constraints, required concept count, and any existing creatives.
2. If iterating a winner, keep the engine and change the wrapper.
3. If building new concepts, choose distinct emotional angles and answer the three
   questions for each concept.
4. Use the coverage grid before outputting to catch clustering.
5. Run the pre-ship checklist on every concept.
6. Format briefs for the actual reader:
   - Creator/UGC briefs: short, scannable, action-first
   - Production briefs: slightly fuller context where needed

## Combined mode

If the user gives you existing creatives and wants new ones:
1. Run the full audit first
2. Find the gaps
3. Generate into those gaps
4. Map everything onto one combined coverage grid
5. Validate the full set together

## Edge cases

- If only copy is provided, audit the psychological side and mark visual distinctness
  `UNCONFIRMED`.
- If only one creative is provided, distinctness is relative. Ask what else is live or
  assess only the single-creative quality bar.
- If the user wants a new audience, treat it as a new concept, not a visual iteration.
