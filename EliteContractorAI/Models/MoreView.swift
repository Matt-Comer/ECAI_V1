
//  EliteContractorAI
//
//  Created by matthew comer on 2026-06-07.

import SwiftUI

struct MoreView: View {
    var body: some View {
        NavigationStack {
            ZStack {

                // Dark app background
                Color.black
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 18) {

                    // Screen title
                    Text("More")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.orange)

                    // Revenue link
                    NavigationLink {
                        RevenueView()
                    } label: {
                        MoreCard(icon: "chart.line.uptrend.xyaxis", title: "Revenue", subtitle: "Track income and projections")
                    }

                    // AI link
                    NavigationLink {
                        AIAssistantView()
                    } label: {
                        MoreCard(icon: "sparkles", title: "AI Assistant", subtitle: "Generate quotes and messages")
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

// Reusable more menu card
struct MoreCard: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        HStack(spacing: 14) {

            // Card icon
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(.orange)

            VStack(alignment: .leading, spacing: 4) {

                // Card title
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.white)

                // Card subtitle
                Text(subtitle)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }

            Spacer()

            // Arrow icon
            Image(systemName: "chevron.right")
                .foregroundStyle(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.22))
        .cornerRadius(14)
    }
}

#Preview {
    MoreView()
}
