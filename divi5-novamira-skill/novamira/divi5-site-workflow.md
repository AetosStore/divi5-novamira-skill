---
name: divi5-site-workflow
description: Safe workflow for building, inspecting, editing, or debugging Divi 5 pages and Theme Builder templates through Novamira. Use for Divi modules, pages, presets, variables, fonts, responsive fixes, headers, footers, loops, dynamic content, or global Divi design work.
enable_agentic: true
enable_prompt: true
---

# Divi 5 site workflow

Use native Novamira Divi 5 abilities whenever they are available. Discover the current ability catalog first; do not guess tool names. Specialized Divi abilities take priority over ad-hoc PHP, raw SQL, filesystem hacks, or direct `post_content` replacement.

## Operating sequence

1. Inspect the environment: WordPress version, Divi version, Novamira version/capabilities, target page/template ID and status, active Theme Builder assignment, relevant module tree, presets/variables, and custom code that can affect the result.
2. Confirm whether the target is native Divi 5. Do not treat Divi 5 content as legacy Divi 4 shortcodes.
3. Determine scope. Before changing a Theme Builder template, default/global preset, global font, palette, or Design Variable, identify what else will inherit the change.
4. For structural or global work, use the safest available snapshot/export/backup first. Never claim a backup exists unless verified.
5. Make the smallest native Divi change that satisfies the request. Reuse the site's existing presets, variables, modules, and design patterns rather than creating near-duplicates.
6. Preserve Visual Builder editability. Build real Divi sections, rows/columns/containers, groups, and modules. Do not replace a page with one giant Code module or raw HTML unless explicitly requested.
7. After add/move/delete operations, re-read the Divi tree before using node addresses again.
8. Save using the supported Divi/Novamira path and clear relevant caches only through supported mechanisms.
9. For frontend changes, visually verify with browser/DOM/screenshot tooling when available. Check the site's configured responsive breakpoints, not just an assumed desktop/tablet/phone trio.
10. Publish only when the user requests it. Prefer draft/staging for new pages or risky changes.

## Fallback when Divi-specific abilities are unavailable

Base Novamira may inspect WordPress using PHP, WP-CLI, filesystem reads, and `$wpdb`, but do not invent Divi 5 block schemas, preset formats, Theme Builder assignments, or cache internals. Before any structural write, inspect a known-good native Divi 5 object and establish a supported save path from the installed version. If you cannot establish one safely, stop before the mutation and explain the missing capability.

## Theme Builder

Treat headers, footers, bodies, archives, 404 templates, and conditional layouts as high-impact. Resolve the matching template and actual layout IDs before editing. If the request is local to one page, do not modify a global template unless that scope is explicitly intended. After conditional/global changes, verify an intended target URL and a representative non-target URL.

## Design system

Reuse existing global colors, Design Variables, fonts, base typography, and module presets. Before editing a shared asset, inspect its consumers. Use shared assets for intentionally global changes and local overrides for intentionally local changes.

## Responsive and layout quality

Prefer native Divi Flexbox/Grid, fluid units, responsive controls, and semantic structure over arbitrary offsets. Inspect the site's configured breakpoints. Check overflow, menu behavior, typography, spacing, image cropping, visibility, and interaction states at relevant widths.

## Custom code

Never edit Divi core. Add custom PHP/JS/CSS only when native Divi capabilities are insufficient or code is explicitly requested. Prefer a child theme, dedicated plugin/Divi Extension, or the Novamira sandbox as appropriate. Keep CSS scoped and avoid brittle builder-generated selectors when stable alternatives exist.

## Completion report

Report what changed, whether scope was local or global, affected page/template IDs, shared presets/variables/templates touched, verification performed, and anything that remains unverified. Do not claim a visual change is fully complete if only stored structure was checked.
