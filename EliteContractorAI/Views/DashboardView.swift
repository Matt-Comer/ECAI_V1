//
//  DashboardView.swift
//  EliteContractorAI
//
//  Created by Matt Comer
//  Date: June 16, 2026
//

import SwiftUI

// Main dashboard screen
struct DashboardView: View {
    var body: some View {
        ZStack {

            // Sets the full screen background to black
            Color.black
                .ignoresSafeArea()

            // Holds all dashboard content from top to bottom
            VStack(alignment: .leading, spacing: 24) {

                // Top row holds the app logo on the left
                // and social media icons on the right
                HStack {

                    // ECAI logo image
                    Image("ECAI_Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 42, height: 42)

                    // Pushes the social icons to the right side
                    Spacer()

                    // Holds the social media icons close together
                    HStack(spacing: 14) {

                        // Facebook icon
                        Image("FacebookIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)

                        // LinkedIn icon
                        Image("LinkedInIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)

                        // X icon
                        Image("XIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                }

                // Main dashboard header image
                Image("DashboardView_Header")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 220)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .cornerRadius(24)

                // Revenue card section
                VStack(alignment: .leading, spacing: 10) {

                    // Revenue label
                    Text("Revenue")
                        .font(.headline)
                        .foregroundStyle(.white.opacity(0.8))

                    // Revenue amount
                    Text("$8,450")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(.white)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.orange.opacity(0.25))
                .clipShape(RoundedRectangle(cornerRadius: 24))

                // Holds the smaller dashboard stat cards
                VStack(spacing: 16) {

                    // Active jobs card
                    DashboardCard(title: "Active Jobs", value: "3", icon: "briefcase.fill")

                    // Customers card
                    DashboardCard(title: "Customers", value: "12", icon: "person.2.fill")

                    // Quotes sent card
                    DashboardCard(title: "Quotes Sent", value: "7", icon: "doc.text.fill")
                }

                // Pushes content upward
                Spacer()
            }
            .padding()
        }
    }
}

// Reusable dashboard card
struct DashboardCard: View {

    // Card title text
    let title: String

    // Card number or value
    let value: String

    // SF Symbol icon name
    let icon: String

    var body: some View {
        HStack {

            // Card icon
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(.orange)

            // Holds the card title and value
            VStack(alignment: .leading) {

                // Card title
                Text(title)
                    .foregroundStyle(.white.opacity(0.75))

                // Card value
                Text(value)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }

            // Pushes content to the left
            Spacer()
        }
        .padding()
        .background(Color.white.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

// Preview
#Preview {
    DashboardView()
}
