# Divi 5 architecture notes

Use these notes as orientation, then inspect the installed site/version before relying on implementation details.

## Core model

- Divi 5 is a rebuilt system rather than a continuation of the legacy Divi 4 shortcode engine.
- Native Divi 5 content uses a block-based/module storage model in `post_content`.
- A Divi page should remain composed of native Divi structures and modules so it stays editable in the Visual Builder.
- Modern Divi 5 layout tools include Flexbox, CSS Grid, nested structures/groups, reusable presets, Design Variables, dynamic content, loops, conditions, and a redesigned responsive system.

## Agent implications

- Never parse or generate Divi 5 as if it were Divi 4 shortcodes.
- Do not assume internal block names or attribute schemas. Discover them from Novamira specialization metadata or from the installed Divi version.
- Structural mutations can invalidate node addresses. Re-read after add/move/delete.
- Prefer supported specialization abilities over generic PHP because the specialization is responsible for preserving the valid structural skeleton and save/cache behavior.

## Design system hierarchy

When deciding where a visual value belongs, consider this rough order:

1. global/base typography, palette, Design Variables;
2. default/global module presets;
3. named reusable presets;
4. page/section/row/module local settings;
5. narrowly scoped custom CSS only when the builder cannot express the requirement.

The higher the layer, the larger the likely blast radius.

## Migration and legacy content

A Divi 5 site can contain backward-compatible legacy content or third-party modules. Do not assume every module on a Divi 5 site is native Divi 5.

For migrated sites:

- inspect compatibility state on the target page/template;
- avoid forcing conversion as a side effect of unrelated edits;
- test third-party modules after changes;
- use staging for migration work.
