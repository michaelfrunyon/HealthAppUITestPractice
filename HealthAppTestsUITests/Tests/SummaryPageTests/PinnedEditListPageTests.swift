//
//  PinnedEditListPage.swift
//  HealthAppTestsUITests
//
//  Created by Michael Runyon on 5/9/25.
//

import XCTest

class PinnedEditListPageTests: UITestBase {
    var pinnedEditListPage: PinnedEditListPage!
    
    let bottomNavStressTestIterations = 5
    
    override func setUp() {
        super.setUp()
        pinnedEditListPage = PinnedEditListPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
//MARK: - Tests
    /*
    func testPinnedEditButton() {
        logger.log("👆 Tapping on Pinned 'Edit' button...")
        pinnedEditListPage.tapPinnedEditButton()
        sleep(2)
    }
    
    func testStepsButton() {
        logger.log("👆 Tapping on Pinned 'Edit' button...")
        pinnedEditListPage.tapPinnedEditButton()
        sleep(2)
        logger.log("👆 Tapping on 'Activity' button...")
        pinnedEditListPage.tapActivityButton()
        sleep(2)
    }
    
    func testEditList() {
        logger.log("👆 Tapping on Pinned 'Edit' button...")
        pinnedEditListPage.tapPinnedEditButton()
        sleep(2)
        logger.log("👆 Tapping on 'Activity' button...")
        pinnedEditListPage.tapActivityButton()
        sleep(2)
        logger.log("👆 Tapping on 'Cycling Power' button...")
        pinnedEditListPage.tapCyclingPowerButton()
        sleep(2)
        pinnedEditListPage.tapPinnedEditListDoneButton()
    }
    
    func testScrollPinnedEditListDown() {
        // Open Pinned Edit List by tapping on 'Edit'
        logger.log("👆 Tapping on Pinned 'Edit' button...")
        pinnedEditListPage.tapPinnedEditButton()
        
        // Scroll to the bottom where 'Vitals' is displayed
        logger.log("📜 Scrolling to 'Vitals' section...")
        pinnedEditListPage.scrollToVitalsSection()
        XCTAssert(pinnedEditListPage.vitalsButton.exists && pinnedEditListPage.vitalsButton.isHittable)
        logger.log("✅ 'Vitals' section is visible")
    }
    */
}
