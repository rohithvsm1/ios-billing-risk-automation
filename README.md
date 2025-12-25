Invoice Risk Detector (iOS)
Overview
This repository contains a SwiftUI-based iOS billing demo with XCUITest automation, designed to explore risk-based validation beyond simple pass/fail testing.
Instead of only asserting that a payment flow succeeds, this project surfaces a risk signal (example: 10% vs 90%) to help reason about whether a billing action should be processed or flagged for review.
This is a portfolio and learning project, not a production fraud system.

What This Project Demonstrates
•	End-to-end billing-style flow in a native iOS app
•	Automated UI validation using XCUITest
•	Simple Luhn-based card validation
•	A calculated risk score exposed alongside test results
•	Clear automation signals rather than UI-heavy choreography

Example Behavior
•	Valid card input → Risk score ~10% → Acceptable to process
•	Invalid card input → Risk score ~90% → Flag for review
The goal is not to “detect fraud”, but to show how automation can surface risk indicators, even when tests are green.

Automation Strategy
•	Native iOS automation using XCUITest
•	Stable selectors via accessibilityIdentifier
•	Assertions focused on behavior and outcome, not navigation timing
•	Tests designed to explain why a run is acceptable, not just that it passed

Tech Stack
•	SwiftUI (iOS UI layer)
•	XCUITest (native iOS automation)
•	Luhn algorithm (basic card validation logic)
•	Xcode Simulator (tested primarily on smaller devices for stability)

How to Run
1.	Open the project in Xcode
2.	Cmd + R → Run the app and observe the demo flow
3.	Cmd + U → Execute XCUITest suite
A clean run will show green tests along with a visible risk score.

Key Takeaway
Green tests alone don’t always equal confidence.
This project explores how risk-based signals can complement traditional test automation, especially in billing and payment-style workflows.
Notes
•	This is a demo project for learning and portfolio purposes
•	Risk scoring is intentionally simple and illustrative
•	No real payment processing is performed


 

