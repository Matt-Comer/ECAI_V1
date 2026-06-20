//
//  Customer.swift
//  EliteContractorAI
//
//  Created by matthew comer on 2026-06-13.
//

import Foundation

// Stores customer information
struct Customer: Identifiable {
    let id = UUID()
    let name: String
    let phone: String
    let address: String
}
