
import SwiftUI

// Shows the social media icons in one row
struct SocialIconRow: View {
    var body: some View {
        HStack(spacing: 14) {
            
            // Facebook icon
            Image("FacebookIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
            
            // X icon
            Image("XIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
            
            // LinkedIn icon
            Image("LinkedInIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
        }
    }
}
