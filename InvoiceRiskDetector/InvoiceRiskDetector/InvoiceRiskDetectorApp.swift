import SwiftUI

@main
struct InvoiceRiskDetectorApp: App {
    var body: some Scene {
        WindowGroup {
            PaymentFormView()  // ← STARTS DIRECTLY HERE
        }
    }
}
