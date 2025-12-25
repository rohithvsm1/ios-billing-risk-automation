import SwiftUI

struct ConfirmationView: View {
    let cardNumber: String
    let cvv: String
    @State private var riskScore = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Invoice Processed!")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("Risk Score: \(riskScore)%")
                .font(.title2)
                .foregroundColor(riskScore > 50 ? .red : .green)
                .accessibilityIdentifier("successScreen")
            
            if riskScore == 0 {
                ProgressView("Analyzing Risk...")
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .padding()
        .onAppear {
            // AUTO-CALCULATE on load (no button needed)
            RiskPredictor.luhnCheck(cardNumber: cardNumber, cvv: cvv) { score in
                riskScore = score
            }
        }
    }
}
