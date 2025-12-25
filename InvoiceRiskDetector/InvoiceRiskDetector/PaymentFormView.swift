import SwiftUI

struct PaymentFormView: View {
    @State private var cardNumber = "4111111111111111"
    @State private var cvv = "123"
    @State private var showingConfirmation = false
    
    var body: some View {
        NavigationView {
            Form {
                Section("Payment Details") {
                    TextField("Card Number", text: $cardNumber)
                        .textContentType(.creditCardNumber)
                        .keyboardType(.numberPad)
                        .accessibilityIdentifier("cardField")
                    SecureField("CVV", text: $cvv)
                        .accessibilityIdentifier("cvvField")
                        .keyboardType(.numberPad)
                    Text("Card: \(cardNumber.count) CVV: \(cvv.count)")
                        .font(.caption)
                }
                
                Button("Confirm Payment") {
                    showingConfirmation = true
                }
                .disabled(false)
                .accessibilityIdentifier("confirmButton")
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Payment")
            .sheet(isPresented: $showingConfirmation) {
                ConfirmationView(cardNumber: cardNumber, cvv: cvv)
            }
            .onAppear {
        
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    showingConfirmation = true
                }
            }
        }
    }
}
