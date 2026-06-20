//
//  CustomerDetailView.swift
//  EliteContractorAI
//
//  Created by Matt Comer
//  Date: June 19, 2026
//

import SwiftUI

// Shows details for one customer
struct CustomerDetailView: View {

    // Customer name
    let name: String

    // Customer phone number
    let phone: String

    // Customer location
    let location: String

    var body: some View {
        ZStack {

            // Main dark background
            Color.black
                .ignoresSafeArea()

            // Allows the screen to scroll if content grows
            ScrollView {

                // Holds all customer detail content
                VStack(alignment: .leading, spacing: 24) {

                    // Top customer info card
                    VStack(alignment: .leading, spacing: 8) {

                        // Customer name
                        Text(name)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)

                        // Customer location
                        Text(location)
                            .font(.title3)
                            .foregroundColor(.orange)

                        // Customer phone number
                        Text(phone)
                            .font(.title3)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white.opacity(0.08))
                    .cornerRadius(24)

                    // Customer notes card
                    infoCard(
                        title: "Customer Notes",
                        text: "Good customer. Follow up about next project."
                    )

                    // Active job card
                    infoCard(
                        title: "Active Jobs",
                        text: "Painting job scheduled."
                    )

                    // Quotes card
                    infoCard(
                        title: "Quotes",
                        text: "$2,500 quote pending."
                    )
                }
                .padding()
            }
        }
        .navigationTitle("Customer")
        .navigationBarTitleDisplayMode(.inline)
    }

    // Reusable card for customer details
    func infoCard(title: String, text: String) -> some View {
        VStack(alignment: .leading, spacing: 12) {

            // Card title
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(.white)

            // Card body text
            Text(text)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white.opacity(0.08))
        .cornerRadius(22)
        .overlay(

            // Orange border around the card
            RoundedRectangle(cornerRadius: 22)
                .stroke(Color.orange.opacity(0.5), lineWidth: 1)
        )
    }
}

// Preview
#Preview {
    NavigationStack {
        CustomerDetailView(
            name: "Frank",
            phone: "416-537-6917",
            location: "Toronto"
        )
    }
}
