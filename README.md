# Divi 5 + Novamira Skill Pack

A complementary skill pack for Claude Code and Novamira-connected WordPress sites using Divi 5.

This pack does **not** replace Novamira's Divi 5 specialization. If Divi-specific Novamira abilities are available, the skill instructs Claude to use them first. If they are unavailable, the fallback path is conservative: inspect first, prefer WordPress/Divi APIs, avoid raw structural writes, and stop before unsafe mutations.

## What is included

- `claude-code/divi5-novamira/SKILL.md` — personal/project Claude Code skill.
- `claude-code/divi5-novamira/references/` — concise Divi 5, Theme Builder, safety, and verification references.
- `claude-code/divi5-novamira/scripts/validate-skill.sh` — local package sanity check.
- `claude-code/divi5-novamira/scripts/install-personal.sh` — installs the Claude Code skill into `~/.claude/skills/divi5-novamira/`.
- `novamira/divi5-site-workflow.md` — single-file skill for **WordPress → Novamira → Skills**.

## Recommended setup

1. Use a staging or development site with a current backup.
2. Keep Novamira connected to Claude Code.
3. If you have Novamira Pro, enable the Divi 5 specialization.
4. Pair Novamira with browser control or another visual feedback loop whenever frontend appearance is being changed.
5. Install the Claude Code skill:

```bash
cd /path/to/divi5-novamira-skill
bash claude-code/divi5-novamira/scripts/install-personal.sh
```

6. Optionally upload `novamira/divi5-site-workflow.md` in **Novamira → Skills** so the same operating rules travel with the WordPress site and apply to other connected agents too.

## Invoke explicitly

In Claude Code:

```text
/divi5-novamira
```

Or ask naturally, for example:

```text
Inspect this Divi 5 site through Novamira. Rebuild the product page using the existing design system, keep it editable in Divi, create a draft first, and verify desktop/tablet/mobile before publishing.
```

## Design principle

The skill follows this order:

**inspect → determine capabilities → capture current design system → snapshot/backup → make the smallest native Divi change → re-read structure → visually verify → report → publish only when requested**

## Safety boundary

The skill treats Theme Builder edits, global presets, design variables, and global typography as site-wide changes. It requires impact inspection before modifying them and avoids direct database manipulation when a supported Novamira/Divi ability exists.
