//
//  CustomersView.swift
//  EliteContractorAI
//
//  Created by Matt Comer
//  Date: June 19, 2026
//

import SwiftUI

// Shows all customers in the app
struct CustomersView: View {
    
    // Sample customer data
    let customers = [
        Customer(name: "Frank", phone: "416-537-6917", address: "Toronto"),
        Customer(name: "Clint", phone: "416-623-2222", address: "Mississauga"),
        Customer(name: "Wiley Coyote", phone: "416-949-3233", address: "Scarborough")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                // Dark app background
                Color.black
                    .ignoresSafeArea()
                
                // Holds the full customer screen layout
                VStack(alignment: .leading, spacing: 16) {
                    
                    // Top logo and social icon row
                    HStack {
                        
                        // ECAI logo
                        Image("ECAI_Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42, height: 42)
                        
                        Spacer()
                        
                        // Social icons grouped together
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
                    .padding(.horizontal)
                    
                    // Customers header image
                    Image("CustomersView_Header")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    // Shows all customers in a list
                    List(customers) { customer in
                        
                        // Opens the customer detail screen
                        NavigationLink {
                            CustomerDetailView(
                                name: customer.name,
                                phone: customer.phone,
                                location: customer.address
                            )
                        } label: {
                            
                            // Customer row content
                            VStack(alignment: .leading, spacing: 6) {
                                
                                // Customer name
                                Text(customer.name)
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                
                                // Customer phone number
                                Text(customer.phone)
                                    .foregroundStyle(.gray)
                                
                                // Customer location
                                Text(customer.address)
                                    .font(.caption)
                                    .foregroundStyle(.orange)
                            }
                        }
                        .tint(Color.orange)
                        .listRowBackground(Color.gray.opacity(0.18))
                    }
                    .scrollContentBackground(.hidden)
                }
            }
        }
    }
}

// Preview
#Preview {
    CustomersView()
}
