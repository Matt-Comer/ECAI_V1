//
//  ECAIHeaderView.swift
//  EliteContractorAI
//
//  Created by matthew comer on 2026-06-13.
//
import SwiftUI

struct ECAIHeaderView: View {
    var body: some View {
        HStack(spacing: 20) {
            ECAILogoView()

            SocialIconRow()

            Spacer()
        }
        .padding(.leading, 8)
        .padding(.horizontal, 30)
    }
}
