import SwiftUI

struct RevenueView: View {
    var body: some View {
        NavigationStack {
            ZStack {

                // Dark app background
                Color.black
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 18) {

                    // Screen title
                    Text("Revenue")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.orange)
                    
                    // Revenue header image
                    Image("RevenueView_Header")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .cornerRadius(20)
                    
                    // Main revenue total
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Revenue This Month")
                            .font(.headline)
                            .foregroundStyle(.gray)

                        Text("$8,450")
                            .font(.system(size: 46))
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.22))
                    .cornerRadius(18)

                    // Revenue breakdown cards
                    RevenueCard(title: "Approved Quotes", value: "$4,200")
                    RevenueCard(title: "Pending Quotes", value: "$2,500")
                    RevenueCard(title: "Projected Revenue", value: "$10,500")

                    Spacer()
                }
                .padding()
            }
        }
    }
}

// Reusable revenue card
struct RevenueCard: View {
    let title: String
    let value: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {

            // Card title
            Text(title)
                .font(.headline)
                .foregroundStyle(.gray)

            // Card value
            Text(value)
                .font(.title2)
                .bold()
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.gray.opacity(0.22))
        .cornerRadius(14)
    }
}

#Preview {
    RevenueView()
}
