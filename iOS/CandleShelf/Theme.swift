import SwiftUI

/// Candle Shelf unique visual theme.
enum Theme {
    static let accent = Color(red: 0.7098, green: 0.4667, blue: 0.1804)
    static let accentSecondary = Color(red: 0.4784, green: 0.3608, blue: 0.2431)
    static let background = Color(red: 0.1098, green: 0.0784, blue: 0.0471)
    static let card = Color(red: 0.1490, green: 0.0980, blue: 0.0588)
    static let textPrimary = Color(red: 0.9647, green: 0.9216, blue: 0.8667)
    static let textMuted = textPrimary.opacity(0.62)

    static let titleFont = Font.system(.title2, design: .serif).weight(.bold)
    static let headlineFont = Font.system(.headline, design: .rounded).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .default)
    static let captionFont = Font.system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Theme.card)
            .cornerRadius(Theme.cornerRadius)
    }
}

extension View {
    func cardStyle() -> some View { modifier(CardBackground()) }
}
