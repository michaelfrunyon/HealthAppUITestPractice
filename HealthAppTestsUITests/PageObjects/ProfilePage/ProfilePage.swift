//
//  ProfilePage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/24/25.
//

import XCTest

class ProfilePage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: - Headers
    
    
    // MARK: - Buttons
    var doneButton: XCUIElement { app.buttons["Done"] }
    // Button labeled "Profile" is actually the Back button from subpages like Health Details, etc.
    var backToProfileButton: XCUIElement { app.navigationBars.element(boundBy: 0).buttons["Profile"] }
    var exportAllHealthPopUpCancelButton: XCUIElement { app.buttons["Cancel"] }
    
    // MARK: - Cells
    var healthDetails: XCUIElement { app.cells["Health Details"] }
    var medicalId: XCUIElement { app.cells["Medical ID"] }
    var healthRecords: XCUIElement { app.cells["Health Records"] }
    var notifications: XCUIElement { return app.cells["Notifications"] }
    var organDonation: XCUIElement { app.cells["Organ Donation"] }
    var apps: XCUIElement { app.cells["Apps"] }
    var researchStudies: XCUIElement { app.cells["Research Studies"] }
    var devices: XCUIElement { app.cells["Devices"] }
    var exportAllHealth: XCUIElement { app.cells["Export All Health Data"] }
    
}


