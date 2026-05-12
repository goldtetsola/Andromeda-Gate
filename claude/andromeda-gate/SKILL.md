---
name: andromeda-gate
description: Audit existing creatives or generate creative briefs that are genuinely distinct — visually (so Meta's algorithm treats them as different ads) and psychologically (so they actually reach different people). Use whenever the user asks to "audit my creatives," "check distinctness," "are these different enough," "generate briefs," "create ad concepts," "build a creative batch," "plan a creative round," "check my coverage," "diagnose creative fatigue," or anything involving Meta ad creative planning, iteration, or distinctness. Also trigger when the user provides a set of ads, briefs, or concepts and wants to know if they're too similar, or when they want new concepts that won't overlap with existing ones. Covers static and video creatives for Meta (Facebook/Instagram).
---

# Andromeda-Gate

Audit or generate Meta ad creatives that are distinct on two axes: visual (so
Andromeda treats them as different ads) and psychological (so they reach different
people).

## Before you do anything

Read the reference doc: `references/andromeda-gate-reference.md`

It has the tier system, emotion map, coverage grid, diagnostics, SCAMPER, and the
briefing checklist. Load it every time.

---

## Tone and voice

All outputs from this skill should be **casual and concise**. Write like a sharp
strategist talking to a peer, not like a textbook or a consultant deck.

Rules:
- Short sentences. Say what needs to be said, move on.
- No preamble or throat-clearing ("In order to ensure creative distinctness...").
  Just start.
- No significance inflation ("crucial," "pivotal," "key insight"). If it matters,
  the reader will see why from the content.
- No AI artifacts ("I hope this helps," "Let me know if you'd like me to expand").
- Don't explain the framework back to the user. Use it, show the results.
- Coverage grids, checklists, and briefs should be scannable — not walls of text.
- When flagging problems, be direct: "Ad 2 and Ad 4 are the same ad to Meta"
  not "There appears to be a potential visual similarity concern between..."
- **No internal jargon in outputs.** The tier system, axis labels, and checklist
  numbering are tools for you — the reader doesn't need to know them. Don't say
  "Tier-1 environment + Tier-1 framing shift." Say "different person in a completely
  different setting — Meta will treat this as a new ad." Explain what's actually
  happening, not the classification label.
- **Identify creatives by what the user gave you.** If they provided filenames, use
  filenames. If they gave ad names, campaign names, or URLs, use those. If they gave
  nothing, ask — or describe the creative clearly enough that the user knows which one
  you mean ("the studio product shot on purple gradient," not "Ad 1"). Never default
  to bare numbering unless the user numbered them first.

---

## Mode routing

Two modes. Route based on what the user gives you.

**Audit** — user provides existing creatives, briefs, or descriptions and wants to
know if they're distinct enough.

Triggers: "audit," "check," "review," "are these different," "too similar,"
"diagnose," "why is performance dropping," or any set of creatives presented for
evaluation.

**Generate** — user wants new briefs or concepts, either from scratch or as
iterations of existing winners.

Triggers: "generate," "create," "build," "write briefs," "new concepts," "plan a
batch," "iterate on this winner," "I need more creatives."

**Both** — user provides existing creatives AND wants new ones that don't overlap.
Run audit first, then generate into the gaps.

---

## Audit procedure

### Step 1: Gather inputs

For each creative, get:
- What it looks like (format, talent, setting, colors, visual style)
- What it says (emotional angle, who it's talking to, what problem it addresses)
- Performance data if available (CTR, hold rate, CVR, CPA, fatigue flags)

If the user gives you briefs instead of live ads, evaluate the briefs.

### Step 2: Build the coverage grid

Map every creative onto the grid:

| Ad | Who is this person? | What's their itch? | Emotional angle | Visual axis | Distinct? |
|----|--------------------|--------------------|-----------------|-------------|-----------|

One row per creative. "Distinct?" is relative to every other row.

### Step 3: Check visual distinctness (Axis 1)

For each pair, classify the differences using the tier system from the reference doc.

Flag anything that doesn't have at least:
- 1x Tier-1 change from every other creative in the set, OR
- 2-3x Tier-2 changes stacked

Flag anything relying only on Tier-3 changes (copy swap, button color, font change,
same person in different outfit, same image cropped). These won't register as
different to the algorithm.

### Step 4: Check psychological distinctness (Axis 2)

For each creative, answer the three questions:
1. Who is this person? (their situation, not demographics)
2. What's their itch? (specific worry, want, or frustration)
3. Why would they care about us? (specific product-to-itch connection)

If two creatives have the same answers to all three, they reach the same people —
doesn't matter how different they look. Flag them.

Check the emotional angle column. If every creative uses the same angle (e.g., all
fear-of-loss), flag it. The batch needs angle variety — use the emotion map in the
reference doc.

Check specificity. For each creative, ask: is the hook grounded in something
concrete — a recognizable moment, a specific claim, a sharp identity frame — or
is it a vague problem statement that could apply to anyone? "Struggling with sleep?"
is generic. "It's 3am and you've done the math on how much sleep you can still get"
is specific. "You lose 2 hours of deep sleep every time you screen-scroll after 10pm"
is specific. "The person who has their life together? They prioritize this" is
specific. Different angles call for different types of specificity. Flag any creative
that's vague regardless of which type would fix it.

### Step 5: Diagnose performance (if data provided)

If the user gives you performance signals, use the signal→action map from the
reference doc:

| Signal | Visual side | Psychological side |
|--------|------------|-------------------|
| CTR dropping | Opening visual stale? | Angle worn out for this audience? |
| Hold rate down | Pacing/first-frame? | Hook not landing? |
| CVR dropping | Credibility issue? | Making people feel judged? |
| CPA rising | Full visual refresh needed? | Exhausted this angle's audience? |
| Fatigue flagged | Visual change needed | Same angle, different moment |
| Broad reach, low engagement | Too generic visually | Too broad — pick one person |

### Step 6: Output the audit

Present:
1. Coverage grid (filled, with flags)
2. Visual distinctness per creative (tier classification, pass/fail)
3. Psychological distinctness per creative (three-question answers, overlaps flagged)
4. Diagnosis (if performance data was provided)
5. Gaps — what's missing from the portfolio
6. Recommendations — specific changes, ranked by impact

Keep it tight. Don't narrate the methodology — show the results.

---

## Generate procedure

### Step 1: Gather inputs

Get:
- Product/brand (what it is, what it does, who buys it)
- Existing creatives (if any — so you don't overlap)
- How many concepts needed
- Constraints (available talent, production capabilities, budget, format preferences)
- Whether this is new concepts or iterations of a winner

### Step 2: If iterating a winner

Preserve the engine:
- The core emotional angle
- How it makes people feel (understood, not judged)
- The negative-to-positive balance
- The specificity level
- One clear message

Change the wrapper:
- Person on screen / talent
- Setting / environment
- Visual style / format
- Opening shot / first frame
- Layout / composition

At least 1x Tier-1 change per iteration. If impossible, stack 2-3x Tier-2.
Never rely on Tier-3 alone.

If the user wants to reach a different audience (not just refresh the visual),
that's a new concept, not an iteration. Treat it as new below.

### Step 3: If generating new concepts

**3a. Map the emotional territory.**
Use the emotion map from the reference doc. Pick angles that genuinely connect to
the product — not all 8 work for everything.

**3b. For each angle, answer the three questions:**
1. Who is this person? (specific situation, specific life context)
2. What's their itch? (a specific moment, not a generic problem)
3. Why would they care about us? (specific product-to-itch connection)

**3c. Be specific.**
Generic problem statements ("Struggling with sleep?") reach everyone vaguely.
Specific hooks reach fewer people but hit harder. A vivid moment is one of the
strongest ways to be specific, but not the only way — a surprising claim, a
concrete number, or a sharp identity frame can do the same job depending on the
angle.

- Generic: "Struggling with sleep?"
- Specific moment: "It's 2am and you're staring at the ceiling again."
- Specific claim: "You lose 2 hours of deep sleep every time you drink after 6pm."
- Specific identity: "The person in your friend group who has it all together? They take this."

**3d. Make them feel understood, not judged.**
The problem is external (the world, biology, the system) — not the viewer's fault.

**3e. One message per concept.**
Each brief commits to one angle and one message. No blending.

**3f. Run SCAMPER for more ideas.**
Use the SCAMPER table in the reference doc for both visual and angle ideas.

### Step 4: Check the batch with the coverage grid

Before outputting, map all concepts onto the coverage grid (alongside existing
creatives if provided). Look for clustering:
- Same "Who" column — all targeting the same person
- Same "Itch" column — all hitting the same worry
- Same "Emotional Angle" — all using the same angle
- Same "Visual" column — all looking the same despite different angles

Clustering = rework before outputting.

### Step 5: Run the briefing checklist

Every concept must pass all checks:

| # | Check | Axis |
|---|-------|------|
| 1 | Visually distinct? (≥1 Tier-1 or 2-3x Tier-2) | Visual |
| 2 | Passes the 1-second scroll test? | Visual |
| 3 | SCAMPER action identifiable? | Visual |
| 4 | Different person would respond to this? | Psych |
| 5 | One clear emotion? | Psych |
| 6 | Specific, not generic? | Psych |
| 7 | Feel understood, not judged? | Psych |
| 8 | Core engine preserved? (iterations only) | Both |
| 9 | One clear message? | Both |

Anything fails = rework before including.

### Step 6: Format the briefs

**Figure out who's reading this:**

**Type A — Creator/UGC briefs** (the creator scans it and films):
- One-line concept description
- Tone in 2-4 short words
- Settings, props, requirements as short lists
- VO as example lines to riff on
- Hooks as labeled blocks
- Watch-outs as a short list
- Tables for script + visual direction where it helps
- No strategy paragraphs. No framework labels.

**Type B — Production briefs** (production team running a complex shoot):
- Short paragraphs where context helps the team
- Questions/beats listed cleanly
- Filming and editing direction in tight prose
- Weight matches importance — not every section the same length

Default to Type A unless the user says otherwise or the shoot clearly needs Type B.

**Formatting rules (all types):**
- Cut everything the reader doesn't need to act on
- Don't give every concept identical structure and weight — break the symmetry
- Kill annotations that explain your reasoning rather than instruct production
- Say repeated instructions once in a guidelines section, not per brief
- No em dash chains
- No rule-of-three forced groupings
- No "crucial" / "pivotal" / "this is the most important"
- Vary paragraph rhythm in Type B

### Step 7: Output the generated briefs

Present:
1. Coverage grid (all concepts mapped, including existing if provided)
2. Brief guidelines (shared instructions, stated once)
3. Individual briefs (formatted per Type A or B)
4. Checklist results (all 9 checks confirmed per concept)
5. Gaps remaining (angles or visual territory still open for future rounds)

---

## When both modes combine

If the user gives you existing creatives AND wants new ones:

1. Run the full audit first
2. Find the gaps
3. Generate into those gaps
4. Map everything onto one combined coverage grid
5. Validate the full set together

---

## Edge cases

**Only copy provided, no visual info:**
Audit the psychological side only. Flag that you can't assess visual distinctness
without seeing the visuals. Generate visual direction in the briefs.

**Iterations only, not new concepts:**
Stay in iteration mode. Preserve the engine, change the wrapper. Still run the
checklist.

**Performance diagnosis without creative details:**
Use the signal→action map to flag likely causes, but note you'd need to see the
creatives for a real assessment.

**Single creative, "is this good?":**
Distinctness is relative — you can't assess it from one ad alone. Ask what else is
running. Or evaluate the single creative against specificity, feel-understood, and
one-message.
