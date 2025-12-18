# Accessibility Quick Checklist

- [ ] All images have meaningful `alt` text (verify product images).
- [ ] All interactive elements (buttons, links) have `aria-label` or visible text.
- [ ] Modals have `role="dialog"`, `aria-labelledby`, and `aria-hidden` managed when opened/closed.
- [ ] Focus management: focus moves into the modal when opened and returns to the triggering element when closed.
- [ ] Keyboard navigation: ensure `Tab` cycles through interactive elements and `Esc` closes modals.
- [ ] Color contrast: check foreground/background contrast for text and buttons.
- [ ] Forms: label inputs clearly and associate with `label` elements.

Suggested next steps:
- Run Lighthouse Accessibility audit in Chrome.
- Test keyboard-only navigation (Tab/Shift+Tab, Enter, Esc).
- Consider adding `role="alert"` for important messages.
