//
//  ECAILogoView.swift
//  EliteContractorAI
//
//  Created by matthew comer on 2026-06-13.
//

import SwiftUI

// Small reusable ECAI logo
struct ECAILogoView: View {
    var body: some View {
        Image("ECAI_Logo_V1")
            .resizable()
            .scaledToFit()
            .frame(height: 50)
    }
}

#Preview {
    ECAILogoView()
        .padding()
        .background(Color.black)
}
