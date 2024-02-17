import SwiftUI

enum TextStyleDisplayProperties {
    case T1DisplaySemibold
    case T2DisplayRegular
    case T3DisplayRegular
    case T4DisplaySemibold
    
    var font: Font {
        switch self {
        case .T1DisplaySemibold:
            return .T1DisplaySemibold()
        case .T2DisplayRegular:
            return .T2DisplayRegular()
        case .T3DisplayRegular:
            return .T3DisplayRegular()
        case .T4DisplaySemibold:
            return .T4DisplaySemibold()
        }
    }
}
