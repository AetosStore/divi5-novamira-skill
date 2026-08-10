---
description: Build, inspect, edit, debug, or refactor Divi 5 WordPress pages and Theme Builder templates through Novamira. Use for Divi pages, modules, presets, variables, responsive fixes, headers, footers, loops, dynamic content, or site-wide Divi design work. Prefer native Novamira Divi 5 abilities when available, preserve Visual Builder editability, inspect before writing, and verify frontend results.
---

# Divi 5 + Novamira operator

Use this skill whenever the task touches a WordPress site running Divi 5 and Novamira is available.

## Non-negotiable operating model

Work in this order:

1. **Inspect before changing.** Identify WordPress version, active Divi version, relevant plugins, target post/template IDs, current page/module tree, Theme Builder assignment, and available Novamira abilities.
2. **Determine capability mode.** If Novamira exposes Divi 5-specific abilities, use them. Do not recreate their functionality with ad-hoc PHP or direct database writes.
3. **Preserve native Divi structure.** Build real Divi sections, rows/columns/containers, groups, and modules. Never fake a Divi page by replacing it with a large Code module or raw HTML unless the user explicitly asks for code-only content.
4. **Protect global scope.** Before changing Theme Builder templates, default presets, global fonts, colors, or Design Variables, enumerate what will inherit the change. Prefer local overrides when the requested scope is local.
5. **Snapshot before structural or global writes.** Use the safest available backup/snapshot/export mechanism. Never claim a backup exists unless you verified it.
6. **Make the smallest change that solves the task.** Reuse existing presets, variables, modules, and design patterns instead of creating near-duplicates.
7. **Re-read after structural writes.** Node addresses can change after add/move/delete operations. Refresh the Divi tree before the next structural edit.
8. **Verify the rendered result.** For visual work, use browser/visual tools when available. Check DOM/output and desktop/tablet/mobile behavior. Do not declare success from database state alone.
9. **Publish only when requested.** Prefer draft/staging for new pages and risky changes. Do not silently modify production scope.

## Capability detection

At the beginning of a Divi task, inspect the MCP/tool catalog rather than assuming tool names.

### Preferred mode: Novamira Divi 5 specialization available

Prefer specialized abilities for:

- reading/building/rebuilding Divi pages as a node tree;
- adding, editing, moving, or deleting modules;
- loops and dynamic bindings;
- module presets and defaults;
- global colors, Design Variables, fonts, and typography;
- display conditions;
- Theme Builder templates and Divi Library items.

Use generic PHP/WP-CLI only for supporting inspection or operations not covered by the specialization.

### Fallback mode: base Novamira only

If Divi-specific abilities are absent:

- You may inspect WordPress through PHP, `$wpdb`, filesystem reads, and WP-CLI.
- Prefer official WordPress/Divi APIs or internal functions discovered from the installed version over direct SQL writes.
- Treat Divi 5 `post_content` as structured block-module data, not legacy Divi 4 shortcode text.
- Do **not** invent serialization formats, block attributes, preset schemas, Theme Builder assignments, or cache internals.
- Before a structural write, prove the installed format by inspecting a small known-good native Divi 5 object and identify the supported save path.
- If a safe native save path cannot be established, stop before the mutation and explain what capability is missing.

## First inspection checklist

Collect only what the task needs, but normally establish:

- site URL/environment and whether it is staging/development/production;
- WordPress version;
- Divi version and confirmation it is Divi 5 for native Divi 5 operations;
- Novamira version and available Divi-specific abilities;
- target page/post/template title, ID, status, slug, and URL;
- whether the target is controlled by a Theme Builder body/header/footer;
- current module tree and important module IDs/addresses;
- global/default presets used by the target;
- relevant Design Variables, global palette, fonts, and base typography;
- active custom CSS, child theme, Code Snippets, or Divi extensions that can affect output;
- caching layers relevant to verification.

For architecture details, read `references/divi5-architecture.md`.

## Building and editing pages

When creating or rebuilding a page:

1. Inspect one or more existing pages that represent the site's intended design language.
2. Reuse existing Design Variables and presets where possible.
3. Prefer native Divi layout constructs over bespoke CSS.
4. Use Flexbox/Grid and responsive settings intentionally rather than reproducing desktop layout with arbitrary margins.
5. Keep semantic heading order and accessible labels in mind.
6. Prefer real Image, Button, Heading/Text, Menu, Blog/Loop, and other native modules over HTML replicas.
7. Save as draft unless publishing is explicitly requested.
8. Re-read the page tree after structural changes.
9. Verify visually and functionally.

Do not clone an existing page blindly if it carries page-specific IDs, dynamic bindings, forms, tracking, schema, canonical metadata, or Theme Builder assumptions. Inspect those first.

## Theme Builder rules

Theme Builder changes can have site-wide impact. Before editing:

1. Resolve the active template assignment for the target context.
2. Resolve the actual header/body/footer layout IDs.
3. Report the scope: which pages, posts, archives, products, roles, or conditions use it.
4. If the user asked for a change to one page only, do not alter a global Theme Builder template unless that is truly the intended scope.
5. After save, verify at least one target URL and one non-target URL when the change is conditional.

Read `references/theme-builder.md` for the detailed checklist.

## Presets, variables, fonts, and palette

Treat these as design-system assets, not convenient local values.

- Reuse before creating.
- Do not create duplicate colors, spacing tokens, fonts, or presets with tiny differences unless there is a clear design reason.
- Before editing a preset/default/global variable, inspect its consumers and state the blast radius.
- Prefer editing a shared token when the requested change is intentionally global.
- Prefer a local/module override when the change is intentionally isolated.

## Responsive behavior

Divi 5 supports multiple customizable breakpoints. Do not assume only the classic desktop/tablet/phone trio exists.

- Inspect the site's actual breakpoint configuration.
- Test layout, visibility, typography, spacing, overflow, menus, buttons, interactive states, and image cropping at relevant breakpoints.
- Avoid fixed pixel positioning where flow layout, Flexbox, Grid, `clamp()`, relative units, or Divi responsive controls are more robust.
- Preserve existing responsive conventions unless the task is to redesign them.

## Dynamic content, loops, and conditions

Prefer Divi/Novamira-native mechanisms:

- use dynamic bindings rather than hardcoded copies of post/site/ACF/WooCommerce data;
- use loop-capable modules and supported query definitions rather than PHP-generated markup when possible;
- verify empty states and query boundaries;
- inspect condition scope before setting login, role, date, device, post, or commerce conditions.

## Code and extensions

Only introduce custom PHP/JS/CSS when native Divi capabilities are insufficient or code is explicitly requested.

- Never edit Divi core files.
- Prefer a child theme, dedicated plugin/Divi Extension, or Novamira sandbox code according to the task and persistence required.
- Keep custom CSS scoped and minimal.
- Avoid brittle selectors based on transient builder-generated IDs/classes when a stable selector or native setting exists.
- For reusable custom functionality, use Divi's supported extension/module APIs rather than theme-core patches.

## Caches

After writes, use supported cache invalidation mechanisms exposed by the active Divi/Novamira version. Do not delete cache directories or mutate cache tables by guesswork.

## Visual verification

For frontend changes, inspect with a browser tool if available. Novamira alone can change WordPress while remaining visually blind.

Minimum verification for visual work:

- page loads without PHP/JS errors;
- intended modules are present and editable;
- desktop layout is correct;
- relevant responsive breakpoints are correct;
- header/footer/template inheritance is correct;
- links/buttons/forms still work where touched;
- no unexpected global changes are visible.

Read `references/verification.md` before claiming a high-impact change is complete.

## Reporting

After work, report concisely:

- what was changed;
- whether it was page-local or global;
- which page/template IDs were affected;
- which presets/variables/templates were reused or changed;
- verification performed;
- anything not verified or any remaining risk.

Do not say "done" when only the stored content was changed but the rendered frontend was not checked.
