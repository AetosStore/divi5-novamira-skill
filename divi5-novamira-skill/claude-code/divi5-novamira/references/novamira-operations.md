# Novamira operating notes

## Preferred abilities

If Novamira Pro Divi 5 specialization is present, it is the preferred write path for Divi structure and design-system operations. Discover the actual available ability names from the current MCP catalog. Do not hardcode names from memory.

The specialization is designed for native Divi 5 operations including page/module trees, presets, colors/variables/fonts, loops/dynamic bindings, conditions, and Theme Builder/Library work.

## Base Novamira capabilities

Base Novamira can execute PHP in the loaded WordPress environment and can read/write/edit files, run WP-CLI, and interact with the database. These capabilities are powerful but lower-level.

Use lower-level tools for:

- environment/version inspection;
- plugin/theme discovery;
- supporting WordPress operations not covered by a specialization;
- diagnostics;
- controlled custom functionality.

Do not use them to bypass a safe specialized Divi operation merely because raw SQL or string replacement appears quicker.

## Production safety

Treat unrestricted WordPress execution as development/staging tooling. On a live site:

- minimize write scope;
- confirm a current backup when risk is material;
- avoid experiments;
- prefer draft/staged artifacts;
- do not perform migrations or destructive bulk operations casually.

## Visual feedback

Novamira can inspect and mutate WordPress but is not itself a visual browser. For frontend design tasks, pair it with browser/DOM/screenshot tooling when available and use that to close the feedback loop.
