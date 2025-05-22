//
//  BrowseActivityPage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/15/25.
//

import XCTest

class ActivityPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
        
    }
    
    // MARK: - Headers
    
    var activityHeader: XCUIElement { app.staticTexts["Activity"] }
    var activeEnergyHeader: XCUIElement { app.staticTexts["Active Energy"] }
    var cardioFitnessHeader: XCUIElement { app.staticTexts["Cardio Fitness"] }
    var cardioRecoveryHeader: XCUIElement { app.staticTexts["Cardio Recovery"] }
    var crossCountrySkiingDistanceHeader: XCUIElement { app.staticTexts["Cross Country Skiing Distance"] }
    var crossCountrySkiingSpeedHeader: XCUIElement { app.staticTexts["Cross Country Skiing Speed"] }
    var cyclingCadenceHeader: XCUIElement { app.staticTexts["Cycling Cadence"] }
    
    // MARK: - Buttons
    
    var backToBrowseButton: XCUIElement { app.buttons["Browse"] }
    var backToActivityButton: XCUIElement { app.buttons["Activity"] }
    var activeEnergy: XCUIElement { app.staticTexts["Active Energy"] }
    var activity: XCUIElement { app.staticTexts["UIA.Health.Category.NoData.HKActivitySummaryTypeIdentifier.Title"] }
    var cardioFitness: XCUIElement { app.staticTexts["Cardio Fitness"] }
    var cardioRecovery: XCUIElement { app.staticTexts["Cardio Recovery"]}
    var crossCountrySkiingDistance: XCUIElement { app.staticTexts["Cross Country Skiing Distance"]}
    var crossCountrySkiingSpeed: XCUIElement { app.staticTexts["Cross Country Skiing Speed"]}
    var cyclingCadence: XCUIElement { app.staticTexts["Cycling Cadence"]}
    
    
}

