# Changelog

All notable changes to AutoSellGrey will be documented in this file.

## [3.10] - 2026-05-02

### Added
- **`/asg silent`** — Toggles silent mode from chat (same as the settings checkbox); prints a short confirmation and refreshes the options panel if it is open.
- **`/asg summary`** — Toggles the post-sell gold summary; prints a short confirmation and refreshes the options panel if it is open.
- **`/asg bags`** — Reports how many sellable grey items are in your bags and their total vendor value (respects silent mode for the output line). Uses the same item rules as auto-sell (poor quality, non–quest items, positive vendor price).
- **Minimap tooltip** — Shows grey-item count and approximate vendor value in bags when hovering the minimap button (or a line stating there are none).

### Improved
- **Grey item detection** — `GatherGreyItems()` centralizes bag scanning and sorting; the sell queue is built from that list, so `/asg bags`, the minimap tooltip, and auto-sell stay consistent without duplicating loops.

### Changed
- **`AutoSellGrey.toc`** — Version set to 3.10.

## [3.9] - 2026-04-24

### Improved
- **Sell queue order** — Grey items are sorted by bag index then slot before selling, so with a per-visit limit the same items are chosen in a stable order (backpack and lower bag slots first).
- **Locale after language override** — `/asg` (and `/autosellgrey`) refreshes the active locale from saved `language` before printing, so chat output matches the chosen addon language even if strings were not refreshed earlier in the session.
- **`/asg status`** — Status lines use a fresh locale from settings (same source as the slash handler), avoiding stale `L` if the panel was not used to change language.
- **SavedVariables: `language`** — Invalid or non-string `language` values are reset to default (`""` = follow game client); unknown locale codes are cleared so the client does not stick on a broken override.

### Changed
- **`AutoSellGrey.toc`** — Version set to 3.9.

## [3.8] - 2026-04-17

### Added
- **Minimap tooltip status** — The minimap button tooltip now shows whether auto-sell is currently on or off (`TOOLTIP_AUTOSELL`), localized for every supported language.

### Improved
- **SavedVariables hygiene** — On load, `maxItemsPerSession` is clamped to 1–48 and written back so corrupt or out-of-range values do not linger in the saved file. Checkbox-related booleans (`enabled`, `limitSell`, `silentMode`, `showSummary`, `minimapButton`) are normalized to real Lua booleans when they were stored as `0`/`1` from older clients.
- **Minimap tooltip locale** — Tooltip `OnEnter` refreshes the active locale from `AutoSellGrey_GetLocale`, so the hint text matches the chosen addon language even if it was changed earlier in the session.
- **Sell queue safety** — `ProcessSellQueue` returns early if localization is not ready, avoiding a rare nil-index error on unexpected load ordering.

### Changed
- **`AutoSellGrey.toc`** — Version set to 3.8.

## [3.7] - 2026-04-11

### Added
- **`/asg status`** — Prints the current auto-sell, per-visit limit (and max items), minimap button, post-sell summary, and silent mode settings to chat, localized like other slash help lines.

### Improved
- **Chat output helpers** — Centralized `PrintChat` / `PrintChatUnlessSilent` so “silent mode” consistently suppresses informational vendor messages (`NO_ITEMS`, `SELL_LIMIT_REACHED`) without affecting intentional feedback (settings toggles, slash commands, sell summary when enabled).
- **Localized default language label** — The language dropdown’s “follow game client” option now uses `L.DEFAULT_LANGUAGE_OPTION` in every supported locale instead of a hardcoded English string.
- **Sell limit constants** — `DEFAULT_MAX_ITEMS_PER_SESSION` (12) and `MAX_ITEMS_PER_SESSION_CAP` (48) replace magic numbers in defaults and clamping logic.
- **Safer merchant entry** — `OnMerchantShow` and `ProcessSellQueue` bail out if `AutoSellGreySettings` is unexpectedly missing.
- **Minimap drag** — While dragging the minimap button, position updates only when the cursor is over the minimap or the button, reducing accidental jumps when the pointer leaves the minimap.

### Changed
- **`AutoSellGrey.toc`** — Version set to 3.7; optional `## IconTexture` and `## Notes-ukUA` for the addon list.

## [3.6] - 2026-04-06

### Improved
- **Settings UI vs slash commands** — Toggling via `/asg on`, `/asg off`, `/asg limit`, or `/asg minimap` now refreshes the options panel if it is open, so checkboxes stay in sync with saved settings.
- **Locale fallbacks** — Clients reporting `ptPT` or `enGB` now use the existing `ptBR` and `enUS` strings instead of falling back blindly to English-only where a close match exists.

### Changed
- **Sell queue delay** — The delay between each sell attempt is now a named constant (`SELL_QUEUE_DELAY_SEC`) with a short comment explaining why it should not be reduced without care.

### Fixed
- **Duplicate settings registration** — `CreateOptionsPanel` returns early if the settings category was already registered (defensive guard for unusual load paths).

## [3.5] - 2026-04-01

### Fixed
- **Lua error when building the sell queue** — `C_Item.GetItemInfo(ItemLocation)` can throw `bad argument #1` on retail when reading some bag slots. Quality and vendor price now use `C_Item.GetItemInfoInstant` (item ID from `GetContainerItemInfo`) and `GetItemInfo` (link) only.

## [3.4] - 2026-04-01

### Improved
- **Item data when building the sell queue** — Resolves quality and vendor price via `C_Item.GetItemInfo` (bag slot), then `C_Item.GetItemInfoInstant` (item ID), then `GetItemInfo` (link). Fewer skipped greys when the link cache is not ready yet.

### Fixed
- **Sell totals vs. actual sales** — After each `UseContainerItem`, the addon only adds gold and increments the sold count if the bag slot is empty or the item link changed, so failed or blocked sells no longer skew the summary.
- **Russian locale** — Minor wording fix for the enable-auto-sell string (`ruRU`).

### Changed
- **Minimap tooltip title** — Uses the localized settings title (`L.TITLE`) instead of a hardcoded English string.

## [3.3] - 2026-03-20

### Added
- **Configurable sell limit** — `maxItemsPerSession` (default 12, range 1–48) with a small numeric field under the limit checkbox in settings. Chat and checkbox text use the current value.

## [3.2] - 2025-03-15

### Fixed
- **Settings panel crash on left-click** — Fixed Lua error when left-clicking the minimap icon: `OpenSettingsPanel` expects a numeric category ID, not a string. Now uses `category:GetID()` for retail Settings API.
- **Minimap button positioning (retail)** — The minimap is larger in retail WoW; the drag positioning now uses dynamic radius based on `Minimap:GetWidth()` and `Minimap:GetHeight()` so the icon respects the full diameter on both classic and retail.

---

## [3.1] - 2025-03-13

### Added
- **Language selection** — Add a language dropdown in the addon settings to override the game locale. You can now use any supported addon language regardless of your WoW client language.
- **Tooltip localization** — Minimap button tooltip (left-click, right-click, drag hints) is now fully localized.
- **12 language support** — English, Ukrainian, Russian, German, French, Spanish, Portuguese (Brazil), Italian, Simplified Chinese, Traditional Chinese, and Korean.

### Fixed
- **Minimap button drag** — Fixed "Frame is not movable" error and Lua taint when dragging the minimap icon to reposition it. The button now uses custom positioning logic instead of `StartMoving`/`StopMovingOrSizing`.

### Changed
- **Localization refactor** — Rebuilt localization system to support language override and centralize all locale data in `AutoSellGrey_Locales`.
- New setting: `language` (default: `""` = use game locale).

---

## [3.0]

- Initial release with auto-sell grey items, sell limit (12 per session), silent mode, minimap button, and slash commands (`/asg`, `/autosellgrey`).
