import AppKit

/// Default theme used by Runestone when no other theme has been set.
public final class DefaultTheme: Theme {
    public let font: NSFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    public let textColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            : NSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.85)
    }
    public let gutterBackgroundColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            : NSColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    public let gutterHairlineColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            : NSColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    public let lineNumberColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 0.455, green: 0.455, blue: 0.471, alpha: 1.0)
            : NSColor(displayP3Red: 0.651, green: 0.651, blue: 0.651, alpha: 1.0)
    }
    public let lineNumberFont: NSFont = .monospacedSystemFont(ofSize: 14, weight: .regular)
    public let selectedLineBackgroundColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(red: 30, green: 32, blue: 38, alpha: 1.0)
            : NSColor(red: 0.910, green: 0.949, blue: 1.0, alpha: 1.0)
    }
    public let selectedLinesLineNumberColor = NSColor(
        name: nil
    ) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            : NSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.85)
    }
    public let selectedLinesGutterBackgroundColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            : NSColor(displayP3Red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    public let invisibleCharactersColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 0.259, green: 0.302, blue: 0.357, alpha: 1.0)
            : NSColor(displayP3Red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
    }
    public let pageGuideHairlineColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 76, green: 77, blue: 86, alpha: 0.5)
            : NSColor(
                displayP3Red: 0xEB / 256, green: 0xEB / 256, blue: 0xEB / 256,
                alpha: 1.0)
    }
    public let pageGuideBackgroundColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(
                displayP3Red: 0x2F / 256, green: 0x30 / 256, blue: 0x36 / 256,
                alpha: 0.4)
            : NSColor(
                displayP3Red: 250 / 256, green: 250 / 256, blue: 250 / 256,
                alpha: 1.0)
    }
    public let markedTextBackgroundColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(displayP3Red: 0.306, green: 0.329, blue: 0.392, alpha: 1.0)
            : NSColor(displayP3Red: 0.918, green: 0.933, blue: 0.973, alpha: 1.0)
    }
    public let selectionColor = NSColor(name: nil) {
        appearance in
        appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
            ? NSColor(red: 0.318, green: 0.357, blue: 0.439, alpha: 1.0)
            : NSColor(red: 0.643, green: 0.804, blue: 1.0, alpha: 1.0)
    }

    public init() {}

    // swiftlint:disable:next cyclomatic_complexity
    public func textColor(for highlightName: String) -> NSColor? {
        guard let highlightName = HighlightName(highlightName) else {
            return nil
        }
        switch highlightName {
        case .comment:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(red: 0.424, green: 0.475, blue: 0.525, alpha: 1.0)
                    : NSColor(red: 0.365, green: 0.424, blue: 0.475, alpha: 1.0)
            }
        case .constantBuiltin:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.631, green: 0.404, blue: 0.902,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.424, green: 0.212, blue: 0.663,
                        alpha: 1.0)
            }
        case .constantCharacter:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.631, green: 0.404, blue: 0.902,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.424, green: 0.212, blue: 0.663,
                        alpha: 1.0)
            }
        case .constructor:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.620, green: 0.945, blue: 0.867,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.110, green: 0.275, blue: 0.290,
                        alpha: 1.0)
            }
        case .function:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.404, green: 0.718, blue: 0.643,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.196, green: 0.427, blue: 0.455,
                        alpha: 1.0)
            }
        case .keyword:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.988, green: 0.373, blue: 0.639,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.608, green: 0.138, blue: 0.576,
                        alpha: 1.0)
            }
        case .number:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.988, green: 0.373, blue: 0.639,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.608, green: 0.137, blue: 0.576,
                        alpha: 1.0)
            }
        case .property:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.631, green: 0.404, blue: 0.902,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.424, green: 0.212, blue: 0.663,
                        alpha: 1.0)
            }
        case .string:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.988, green: 0.416, blue: 0.365,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.769, green: 0.102, blue: 0.086,
                        alpha: 1.0)
            }
        case .type:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.365, green: 0.847, blue: 1.0,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.043, green: 0.310, blue: 0.475,
                        alpha: 1.0)
            }
        case .variable:
            return nil
        case .variableBuiltin:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.816, green: 0.659, blue: 1.0,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.224, green: 0.0, blue: 0.627,
                        alpha: 1.0)
            }
        case .operator:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.573, green: 0.631, blue: 0.694,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.290, green: 0.333, blue: 0.376,
                        alpha: 1.0)

            }
        case .punctuation:
            return NSColor(name: nil) {
                appearance in
                appearance.bestMatch(from: [.darkAqua, .aqua]) == .darkAqua
                    ? NSColor(
                        displayP3Red: 0.573, green: 0.631, blue: 0.694,
                        alpha: 1.0)
                    : NSColor(
                        displayP3Red: 0.290, green: 0.333, blue: 0.376,
                        alpha: 1.0)
            }
        }
    }

    @MainActor
    public func fontTraits(for highlightName: String) -> FontTraits {
        guard let highlightName = HighlightName(highlightName) else {
            return []
        }
        if highlightName == .keyword {
            return .bold
        } else {
            return []
        }
    }
}
