import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Invoice Total: $1,250.50")
                    .font(.title)
                NavigationLink("Process Invoice") {
                    PaymentFormView()
                }
                .accessibilityIdentifier("processButton")
            }
            .padding()
            .navigationTitle("InvoiceRiskDetector")
            .onAppear {
                // Auto-trigger for XCUITest recording
                if CommandLine.arguments.contains("-auto-run-flow") {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        // Auto-navigate will be handled by XCUITest
                    }
                }
            }
        }
    }
}
