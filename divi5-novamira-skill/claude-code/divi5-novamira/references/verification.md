# Verification checklist

Use a proportional checklist. A text typo does not need the same verification as a global header rebuild.

## Page-local content/style change

- target page loads;
- changed content/module is present;
- Visual Builder editability is preserved;
- no obvious console/PHP error introduced;
- relevant responsive widths are checked;
- links/interactions touched by the change still function.

## Structural page rebuild

Additionally verify:

- module hierarchy is valid after save/reload;
- native modules were used rather than a code-only surrogate;
- presets/variables resolve correctly;
- spacing/overflow at configured breakpoints;
- headings and basic accessibility semantics;
- dynamic bindings or loops render expected data and empty states.

## Theme Builder or global design-system change

Additionally verify:

- assignment/consumer scope before and after;
- at least one intended target URL;
- at least one representative non-target URL when conditions matter;
- header/footer responsiveness and navigation;
- global preset/variable consumers did not regress unexpectedly.

## Completion language

Use precise status:

- "Changed and visually verified" only if rendered frontend was checked.
- "Changed and structurally verified" if you re-read stored/native structure but lacked a visual browser.
- "Prepared but not published" for drafts/staging.
- Explicitly state anything that remains unverified.
