//
//  BrowsePage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class BrowseMainPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: - Headers
    
    var browseHeader: XCUIElement { app.staticTexts["Browse"] }
    
    // MARK: - Buttons
    
    var backToBrowseButton: XCUIElement { app.navigationBars.buttons["Browse"] }
    
    // MARK: - Category Buttons

    var activity: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierFitness.Title"] }
    var bodyMeasurements: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierBodyMeasurements.Title"] }
    var cycleTracking: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierReproductiveHealth.Title"] }
    var hearing: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierHearingHealth.Title"] }
    var heart: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierHeart.Title"] }
    var medications: XCUIElement { app.staticTexts["UIA.Health.Browse.Medications.Title"] }
    var mentalWellbeing: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierMindfulness.Title"] }
    var mobility: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierMobility.Title"] }
    var nutrition: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierNutrition.Title"] }
    var respiratory: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierRespiratory.Title"] }
    var sleep: XCUIElement { app.staticTexts["UIA.Health.Browse.Sleep.Title"] }
    var symptoms: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierSymptoms.Title"] }
    var vitals: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierVitalSigns.Title"] }
    var otherData: XCUIElement { app.staticTexts["UIA.Health.Browse.HKDisplayCategoryIdentifierOther.Title"] }
    
}

