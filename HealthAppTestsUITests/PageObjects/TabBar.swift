//
//  TabBar.swift
//  HealthAppTestsUITests
//
//  Created by Michael Runyon on 5/10/25.
//

import XCTest

class TabBar {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    
    // MARK: - Tab Bar Elements
    var summaryTabButton: XCUIElement { app.tabBars.buttons["Summary"] }
    var sharingTabButton: XCUIElement { app.tabBars.buttons["Sharing"] }
    var browseTabButton: XCUIElement { app.tabBars.buttons["Browse"] }
    
    
    // MARK: - Actions
    
    func tapSummaryTab() {
        summaryTabButton.tap()
    }
    
    func tapSharingTab() {
        sharingTabButton.tap()
    }
    
    func tapBrowseTab() {
        browseTabButton.tap()
    }
    
    
}
