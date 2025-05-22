//
//  SummaryPage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class SummaryMainPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: - Headers
    var summaryHeader: XCUIElement { app.staticTexts["Summary"] }
    var articlesHeader: XCUIElement { app.staticTexts["Articles"] }
    var appsHeader: XCUIElement { app.staticTexts["Apps"] }
    
    // MARK: - Buttons
    var profileButton: XCUIElement { app.buttons["Profile"] }
    var profileDoneButton: XCUIElement { app.buttons["Done"] }
    var showAllHealthDataButton: XCUIElement { app.cells["UIA.Health.ShowAllHealthData"] }
    // This 'Summary' button is a back button to return to Summary page:
    var backToSummaryButton: XCUIElement { app.navigationBars.buttons["Summary"] }

    
}
