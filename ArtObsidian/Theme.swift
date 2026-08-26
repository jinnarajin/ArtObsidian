import SwiftUI

// 아이패드 3안 (Atlas) 다크 전용 팔레트 — design/Figma 424-6084 기준
enum Atlas {
    static let background = Color(red: 0.035, green: 0.035, blue: 0.043)   // #09090B
    static let grid       = Color(red: 0.090, green: 0.094, blue: 0.110)   // #17181C
    static let panel      = Color(red: 0.075, green: 0.078, blue: 0.094)   // #131418
    static let stroke     = Color(red: 0.220, green: 0.231, blue: 0.271)   // #383B45
    static let textPrimary   = Color(red: 0.961, green: 0.961, blue: 0.969) // #F5F5F7
    static let textSecondary = Color(red: 0.561, green: 0.569, blue: 0.612) // #8F919C
    static let accent     = Color(red: 0.459, green: 0.380, blue: 1.0)     // #7561FF
    static let connection = Color(red: 0.369, green: 0.310, blue: 0.859)   // #5E4FDB
    static let tag        = Color(red: 0.690, green: 0.631, blue: 1.0)     // #B0A1FF
    static let thumb      = Color(red: 0.161, green: 0.169, blue: 0.200)   // #292B33
}
