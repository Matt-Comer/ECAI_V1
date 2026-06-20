//
//  QuotesView.swift
//  Elite Contractor AI
//
//  Created by Matt Comer
//  Date: June 19, 2026
//

import SwiftUI

struct QuotesView: View {

    // Sample quotes for the app
    let quotes = [
        Quote(customerName: "Frank", amount: 2500, status: "Pending"),
        Quote(customerName: "Clint", amount: 4200, status: "Approved"),
        Quote(customerName: "Wiley Coyote", amount: 1800, status: "Sent")
    ]

    var body: some View {
        NavigationStack {
            ZStack {

                // Dark app background
                Color.black
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 12) {

                    

                    // Quotes header image
                    Image("QuotesView_Header")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(20)
                        .padding(.horizontal)

                    // Shows all quotes in a list
                    List(quotes) { quote in

                        VStack(alignment: .leading, spacing: 6) {

                            // Customer name
                            Text(quote.customerName)
                                .font(.headline)
                                .foregroundStyle(.white)

                            // Quote amount
                            Text("$\(quote.amount, specifier: "%.0f")")
                                .font(.title3)
                                .foregroundStyle(.gray)

                            // Quote status
                            Text(quote.status)
                                .font(.caption)
                                .foregroundStyle(.orange)
                        }
                        .listRowBackground(Color.gray.opacity(0.22))
                    }
                    .scrollContentBackground(.hidden)
                }
                .padding(.top)
            }
        }
    }
}

#Preview {
    QuotesView()
}
