
// Created by Matt Comer
// Date: June 7, 2026
// Elite Contractor AI assistant screen

import SwiftUI

struct AIAssistantView: View {

    // Controls the quote sheet
    @State private var showQuoteSheet = false

    var body: some View {
        NavigationStack {
            ZStack {

                // Background AI video
                VideoBackgroundView(videoName: "ECAI_V_01")
                    .ignoresSafeArea()

                // Dark overlay so text is readable
                Color.black.opacity(0.60)
                    .ignoresSafeArea()

                VStack(spacing: 14) {

                    // Small title above header
                    Text("AI Command Center")
                        .font(.headline)
                        .bold()
                        .foregroundStyle(.orange)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    // AI header image
                    Image("AIAssistantView_Header")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 95)
                        .clipped()
                        .cornerRadius(18)

                    // AI title
                    Text("Elite AI Assistant")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.orange)

                    // AI description
                    Text("Generate quotes, customer messages, and project ideas.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)

                    // Opens quote generator
                    Button("Generate Quote") {
                        showQuoteSheet = true
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(.black)
                    .cornerRadius(14)

                    // Customer follow up button
                    Button("Customer Follow Up") {

                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.25))
                    .foregroundStyle(.white)
                    .cornerRadius(14)

                    // Marketing ideas button
                    Button("Marketing Ideas") {

                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.25))
                    .foregroundStyle(.white)
                    .cornerRadius(14)

                    Spacer()
                }
                .padding(.top, 55)
                .padding(.horizontal)
            }
            .sheet(isPresented: $showQuoteSheet) {
                GenerateQuoteView()
            }
        }
    }
}

#Preview {
    AIAssistantView()
}
