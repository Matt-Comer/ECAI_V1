
// Quote model stores estimate informationimport Foundation

import SwiftUI

struct Quote: Identifiable {
    let id = UUID()
    var customerName: String
    var amount: Double
    var status: String
}

