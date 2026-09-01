## [Unreleased]

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

## [0.1.0] - 2024-07-01

- Initial release
