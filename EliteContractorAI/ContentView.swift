//
//  ContentView.swift
//  EliteContractorAI
//
//  Created by matthew comer on 2026-06-05.
//

import SwiftUI

struct ContentView: View {
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor.black

        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    
    var body: some View {
        TabView {

            // Dashboard tab
            DashboardView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Dashboard")
                }

            // Customers tab
            CustomersView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Customers")
                }

            // Jobs tab
            JobsView()
                .tabItem {
                    Image(systemName: "briefcase")
                    Text("Jobs")
                }

            // Quotes tab
            QuotesView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Quotes")
                }

            // More tab for extra screens
            MoreView()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
    }
}

#Preview {
    ContentView()
}
