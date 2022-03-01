# Dialog Web Content for iOS Platforms

This swift package contains static content for the ios wallet app in all supportet languages as a html representation. It comes also with the IBM-Plex font.

The packages cares about the language of the user and returns the right html file.

## Usage

To use this package you have to:
- Include it as a package
- Import the Package `import HelpScreens`
- Access the Identifier: `HelpScreens.HTMLResourceIdentifier.learnMore`

## How To

### Add new content

- add the content in the corresponding language sub-folder within [html](Sources/HelpScreens/Resources/html).
- add the content to the [Identifier.swift](Sources/HelpScreens/Identifier.swift).

### Add new language

- add the language sub-folder within [html](Sources/HelpScreens/Resources/html).
- the name of the sub-folder must match a [languageCode](https://developer.apple.com/documentation/foundation/nslocale/1643026-languagecode) from Apple.

## Open tasks

- seperate css content