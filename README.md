# Andromeda-Gate

Andromeda-Gate is a reusable skill for AI coding tools.

It helps an agent do one job well: check whether Meta ads are too similar, explain
where the overlap is, and create new ad ideas that feel genuinely different.

If you use Claude Code, Codex, Cursor, or another tool that supports skills, this repo
gives that tool a ready-made playbook for creative distinctness work.

## What is a skill?

A skill is a small instruction pack you give to an AI tool.

After you install it, you can ask in plain English:

- "Audit these ads and tell me if they are too similar."
- "Why is this creative batch fatiguing?"
- "Give me six new Meta ad concepts that do not overlap with these winners."

You do not need to learn a new system. The point is to make your AI tool better at one
specific job.

## Who this is for

- People running Meta ads
- Founders and marketers using Claude Code or similar tools
- Teams that want better creative variation without guessing

## What is in this repo

- One skill: `andromeda-gate`
- One reference guide the skill reads when it needs deeper detail
- Install files for Claude Code and other skill-friendly tools

## Repository layout

```text
.
├── .codex/
│   └── napkin.md
├── .claude-plugin/
│   └── marketplace.json
├── .github/
│   └── workflows/
│       └── validate.yml
├── docs/
│   └── CONTINUITY.md
├── scripts/
│   └── validate-skill-repo.sh
├── skills/
│   └── andromeda-gate/
│       ├── agents/
│       │   └── openai.yaml
│       ├── SKILL.md
│       └── references/
│           └── andromeda-gate-reference.md
├── AGENTS.md
├── CONTRIBUTING.md
├── VERSIONS.md
└── README.md
```

## Install in Claude Code

If you plan to publish this repo under a different GitHub name, update the commands
below first. Right now they assume the repo will live at `goldtetsola/Andromeda-Gate`.

### Option 1: Claude plugin install

If you use Claude Code, this is the nicest path:

```text
/plugin marketplace add goldtetsola/Andromeda-Gate
/plugin install andromeda-gate
```

### Option 2: `npx skills`

This works well if you use Claude Code, Codex, Cursor, or another tool that supports
the common skills layout:

```bash
npx skills add goldtetsola/Andromeda-Gate --skill andromeda-gate
```

If you just want to see whether the repo is discoverable before publishing, this also
works from the folder on your computer:

```bash
npx skills add . --list
```

Local proof: `npx skills add . --list` was tested in this repo and it found the
`andromeda-gate` skill correctly.

### Option 3: Copy the folder yourself

If you do not want to use an installer, copy the skill folder into your own skills
folder:

```bash
git clone https://github.com/goldtetsola/Andromeda-Gate.git
cp -r Andromeda-Gate/skills/andromeda-gate .agents/skills/
```

## How to use it

After install, talk to your AI tool normally.

Typical prompts:

- "Audit these Meta ads for overlap and fatigue."
- "Generate six new concepts that do not overlap with these current winners."
- "Iterate this winning ad without making a near-clone."

The skill should notice when the job is about Meta creative overlap, fatigue, or fresh
concept generation and use the right playbook.

If your tool supports directly calling a skill, use `andromeda-gate`.

## Will this work outside Claude?

Yes.

This repo uses the standard `skills/<name>/SKILL.md` layout that many agent tools
understand. The Claude plugin files are included for convenience, but the skill itself
is not Claude-only.

## Development

When changing the skill:

1. Keep the folder name, skill name, and install name aligned as
   `andromeda-gate`.
2. Keep `SKILL.md` focused on the main workflow. Put deeper tables and examples in
   `references/`.
3. Update `VERSIONS.md` when behavior or instructions materially change.
4. Run the repo validator before publishing changes.

```bash
./scripts/validate-skill-repo.sh
```

## Public repo notes

This repo now includes the pieces that usually make public skill repos easier to adopt:

- A normal skill folder layout
- Claude plugin install support
- A small metadata file for OpenAI/Codex-style skill pickers
- Contribution guidance
- A version file
- A validation script plus CI workflow

## License

Apache-2.0. See [LICENSE](/Users/goldtetsola/Desktop/Coding%20Projects/Andromeda-Gate/LICENSE:1).
