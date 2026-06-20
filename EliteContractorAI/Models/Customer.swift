
// Customer model stores basic customer information
import Foundation

struct Customer: Identifiable {
    let id = UUID()
    var name: String
    var phone: String
    var address: String
}
