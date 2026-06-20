//
//  JobsView.swift
//  Elite Contractor AI
//
//  Created by Matt Comer
//  Date: June 19, 2026
//

import SwiftUI

struct JobsView: View {

    // Stores sample jobs for the app
    let jobs = [
        Job(customerName: "Frank", jobType: "Painting", status: "Scheduled"),
        Job(customerName: "Clint", jobType: "Vehicle Wrap", status: "In Progress"),
        Job(customerName: "Wiley Coyote", jobType: "Concrete Repair", status: "Quoted")
    ]

    var body: some View {
        NavigationStack {
            ZStack {

                // Dark app background
                Color.black
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 12) {

                    // Page title
                    Text("Jobs")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                        .padding(.horizontal)

                    // Jobs header image
                    Image("JobsView_Header")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(20)
                        .padding(.horizontal)

                    // Shows all jobs in a list
                    List(jobs) { job in

                        VStack(alignment: .leading, spacing: 6) {

                            // Job type
                            Text(job.jobType)
                                .font(.headline)
                                .foregroundStyle(.white)

                            // Customer name
                            Text(job.customerName)
                                .font(.subheadline)
                                .foregroundStyle(.gray)

                            // Job status
                            Text(job.status)
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
    JobsView()
}
