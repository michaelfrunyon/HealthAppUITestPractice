//
//  PinnedEditListPage.swift
//  HealthAppTestsUITests
//
//  Created by Michael Runyon on 5/9/25.
//

import XCTest

class PinnedEditListPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
 
    //MARK: - Variables
    var editButton: XCUIElement { app.buttons["UIA.Health.Pinned.Detail"] }
    var editListDoneButton: XCUIElement { app.buttons["Done"] }
    
    //MARK: - Activity
    var activity: XCUIElement { app.cells["UIA.Health.FavoritesEdit.HKActivitySummaryTypeIdentifier"] }
    var cyclingPower: XCUIElement { app.cells["UIA.Health.FavoritesEdit.HKQuantityTypeIdentifierCyclingPower"] }
    var steps: XCUIElement { app.cells["UIA.Health.FavoritesEdit.HKQuantityTypeIdentifierStepCount"] }
    
    //MARK: - Body Measurements
    
    //MARK: - Cycle Tracking
    
    //MARK: - Hearing
    
    //MARK: - Heart
    
    //MARK: - Medications
    
    //MARK: - Mental Wellbeing
    
    //MARK: - Mobility
    
    //MARK: - Nutrition
    
    //MARK: - Other Data
    
    //MARK: - Respitory
    
    //MARK: - Sleep
    
    //MARK: - Symptoms
    
    //MARK: - Vitals
    var vitalsButton: XCUIElement { app.cells["UIA.Health.FavoritesEdit.HKDataTypeAppleBalanceMetrics"] }
    
}
