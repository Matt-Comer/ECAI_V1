import Foundation

struct Job: Identifiable {
    let id = UUID()
    var customerName: String
    var jobType: String
    var status: String
}
