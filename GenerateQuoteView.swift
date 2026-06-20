

// Created by Matt Comer
// Date: June 7, 2026
// Elite Contractor AI quote generator screen

import SwiftUI

struct GenerateQuoteView: View {

    // Lets the Done button close this screen
    @Environment(\.dismiss) var dismiss

    // Stores user input
    @State private var jobType = ""
    @State private var size = ""
    @State private var materials = ""
    @State private var notes = ""

    // Stores the generated quote
    @State private var quoteText = ""

    var body: some View {
        NavigationStack {
            ZStack {

                // Dark ECAI background
                Color.black
                    .ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 20) {

                        // Page title
                        Text("AI Quote")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.orange)

                        // Job input fields
                        VStack(spacing: 14) {
                            TextField("Job Type", text: $jobType)
                            TextField("Size", text: $size)
                            TextField("Materials", text: $materials)
                            TextField("Notes", text: $notes)
                        }
                        .textFieldStyle(.roundedBorder)

                        // Generates the quote text
                        Button {
                            quoteText =
                            "Quote for \(jobType)\n\n" +
                            "Size:\n\(size)\n\n" +
                            "Materials:\n\(materials)\n\n" +
                            "Notes:\n\(notes)\n\n" +
                            "ECAI Estimate:\n" +
                            "This job should be reviewed for labour, materials, access, and disposal before final pricing."
                        } label: {
                            Text("Generate Quote")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.orange)
                                .foregroundStyle(.black)
                                .cornerRadius(14)
                        }
                        .buttonStyle(.plain)

                        // Shows the generated quote
                        if !quoteText.isEmpty {
                            VStack(alignment: .leading, spacing: 12) {

                                // Quote card title
                                HStack {
                                    Image(systemName: "sparkles")
                                        .foregroundStyle(.orange)

                                    Text("ECAI Estimate Summary")
                                        .font(.headline)
                                        .foregroundStyle(.orange)
                                }

                                // Quote card text
                                Text(quoteText)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.orange.opacity(0.12))
                            .cornerRadius(14)
                        }

                        Spacer()
                    }
                    .padding()
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .foregroundStyle(.orange)
                }
            }
        }
    }
}

#Preview {
    GenerateQuoteView()
}
