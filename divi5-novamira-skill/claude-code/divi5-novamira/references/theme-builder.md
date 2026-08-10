# Theme Builder operating checklist

Theme Builder edits are high-impact because headers, footers, bodies, archives, 404 layouts, and conditional templates can be shared across many URLs.

## Before editing

Resolve:

- the template that currently matches the target URL/context;
- template conditions/assignments;
- header, body, and footer layout IDs;
- whether each area is global/shared or unique;
- overlapping/more-specific templates that could supersede the one you intend to edit.

Then summarize the expected blast radius before changing a global area.

## Scope rules

- One-page request: prefer page-local content or a page-specific Theme Builder condition.
- Site-wide header/footer request: edit the relevant shared Theme Builder layout after confirming assignment scope.
- Archive/product/post-type request: verify the exact condition hierarchy before editing.
- If the current page merely *displays* a global header/footer, do not mistake that for page ownership.

## Safe mutation sequence

1. Read template assignment and resolved layout IDs.
2. Snapshot/export/backup if the operation is structural or global.
3. Read the target layout tree.
4. Apply the smallest supported native change.
5. Re-read the layout tree.
6. Save through the supported Divi/Novamira mechanism.
7. Use supported cache invalidation.
8. Verify the intended URL.
9. Verify a second URL when scope/conditions matter.

## Common failure modes to avoid

- editing a global header to satisfy a request that applies to one landing page;
- changing a default preset used by unrelated templates;
- assuming a visible body belongs to the page rather than a Theme Builder body;
- creating duplicate headers/footers when an existing conditional template should be extended;
- validating only inside the builder and not on the actual frontend.
