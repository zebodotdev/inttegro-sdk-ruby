## [Unreleased]

## [4.1.0] - 2026-09-03

- Added focused `Inttegro::Wallets` and `Inttegro::BankAccounts` modules for financial-account variants.
- Preserved the generated root constants for compatibility.

## [4.0.2] - 2026-09-03

- Normalize legacy uppercase currency values when decoding typed amount responses while keeping lowercase wire values for requests.
- Restore the product identifier on typed catalog-price responses.

## [4.0.1] - 2026-09-03

- Breaking: renamed order-prefixed payment models to semantic payment domain types.
- Added focused `Inttegro::Money` access for amount types and separated request and response price shapes.
- Kept generated transport response and envelope constants private while resource methods return domain objects directly.

## [3.0.1] - 2026-09-03

- Corrected the release-verification example to reference the current package version.

## [3.0.0] - 2026-09-03

- Breaking: resource methods now unwrap transport payloads and return domain objects and pages directly.
- Hid response and envelope classes from the public constant surface and replaced response-oriented nested financial-account names.
- Removed the explicit `Enums` namespace and exposed enum types directly from `Inttegro`.

## [2.0.0] - 2026-09-02

- Breaking: moved generated request, response, and domain types from `Inttegro::Models` to `Inttegro`.
- Breaking: moved generated enum types from `Inttegro::Enums` to `Inttegro`.
- Renamed the generated API error schema to `Inttegro::ErrorPayload` to avoid colliding with the SDK exception.

## [1.0.0] - 2026-09-01

- Breaking: rename the gem, root module, require paths, and generated RBI namespace to `inttegro` and `Inttegro`.
- Add `typed: strict` Sorbet coverage, runtime signatures, and packaged RBI
  declarations for every client resource, endpoint method, model, and enum.
- Remove Sorbet escape hatches from the SDK type surface, validate custom HTTP
  adapter responses at the transport boundary, and reject generic response
  fallbacks for documented endpoints.
- Generate immutable `T::Struct` request and response resources plus real
  `T::Enum` values from the public OpenAPI contract.
- Add exact response typing for every documented JSON operation and local/CI
  drift checks that fail when OpenAPI, generated models, or resource RBIs differ.
- Remove the financial-account archive and verification SDK methods because the
  current API does not implement them and exposes no successful response shape.
- Align package metadata, examples, and the transport user agent with the public Inttegro service name.
