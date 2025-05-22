//
//  SummaryPageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class SummaryMainPageTests: UITestBase {
    var summaryMainPage: SummaryMainPage!
    
    let bottomNavStressTestIterations = 20
    
    override func setUp() {
        super.setUp()
        summaryMainPage = SummaryMainPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }

    func testBottomTabStressTest() {
        logger.log("🚀 Starting the Bottom Navigation stress test...")
        let tabBar = TabBar(app: app)
        
        for iteration in 1...bottomNavStressTestIterations {
            logger.log("🔍 Iteration \(iteration) - Bottom Navigation stress test.")
            logger.log("👆 Tapping on the Sharing tab button...")
            tabBar.tapBrowseTab()
            logger.log("👆 Tapping on the Browse tab button...")
            tabBar.tapSharingTab()
            logger.log("👆 Tapping on the Summary tab button...")
            tabBar.tapSummaryTab()

        }
        logger.log("✅ Stress Test Complete: \(bottomNavStressTestIterations) iterations of Bottom Navigation tab switching.")
    }
    
    func testBottomTabRandomTapTest() {
        logger.log("🚀 Starting the Bottom Navigation random tap test...")
        let tabBar = TabBar(app: app)
        
        let tabs: [() -> Void] = [
            tabBar.tapBrowseTab,
            tabBar.tapSharingTab,
            tabBar.tapSummaryTab
        ]
        
        
        for iteration in 1...bottomNavStressTestIterations {
            logger.log("🔍 Iteration \(iteration) - Random Bottom Navigation tap test.")
            
            for action in tabs.shuffled() {
                logger.log("👆 Tapping on a random tab...")
                action()
            }
        }
        
        logger.log("✅ Random Tab Test Complete: \(bottomNavStressTestIterations) iterations of random Bottom Navigation tab switching.")
    }
    

    func testScrollToAppsSection() {
        let appsHeader = summaryMainPage.appsHeader
        
        logger.log("📜 Scrolling to Apps section...")
        UITestHelpers.scrollToElement(appsHeader, in: app)
        
        // Check if the "Apps" section is now visible
        XCTAssertTrue(appsHeader.exists && appsHeader.isHittable, "Apps section should be found after scrolling...")
        logger.log("✅ 'Apps' header is in view.")
        
    }
   

    func testScrollToArticlesSection() {
        let articlesHeader = summaryMainPage.articlesHeader
        
        logger.log("📜 Scrolling to Articles section...")
        UITestHelpers.scrollToElement(articlesHeader, in: app)
        
        // Check if the "Apps" section is now visible
        XCTAssertTrue(articlesHeader.exists && articlesHeader.isHittable, "Articles section should be found after scrolling...")
        logger.log("✅ 'Articles' header is in view.")
        
    }
/*
    func testScrollToBottomAndBackToTop() {
        logger.log("📜 Scrolling to Apps section...")
        let appsSectionHeader = app.staticTexts["Apps"]
        let pinnedPageHeader = app.staticTexts["Pinned"]
        
        // Scroll to the bottom
        UITestHelpers.scrollToElement(app.staticTexts["Apps"], in: app)
        

        // Check if the "Apps" section is now visible
        XCTAssertTrue(appsSectionHeader.exists && appsSectionHeader.isHittable, "Apps section should be found after scrolling...")
        logger.log("✅ 'Apps' header is in view.")
        
        // Scroll back to the top
        logger.log("📜 Scrolling back to the top of the page...")
        UITestHelpers.scrollToTopOfPage(until: pinnedPageHeader, in: app)
        
        // Check if the "Pinned" section is now visible
        XCTAssertTrue(pinnedPageHeader.exists && pinnedPageHeader.isHittable, "Pinned section should be found after scrolling...")
        logger.log("✅ Test Complete - Successfully scrolled to the bottom and back to the top of the page.")
    }
    
    
    func testShowAllHealthDataButton() {
        logger.log("👆 Tapping on 'Show All Health Data' button...")
        summaryPage.tapShowAllHealthDataButton()
        sleep(2)
        XCTAssertTrue(app.staticTexts["All Health Data"].waitForExistence(timeout: 5), "'All Health Data' heading should exist")
        logger.log ("☑️ 'All Health Data' heading is visible.")
        logger.log("👈 Tapping 'Summary' button to return to main Summary page...")
        summaryPage.tapBackToSummaryButton()
    }

    
    func testScrollToGetMoreFromHealthHeading() {
        
        // Assume the app launches into the Summary tab
        let getMoreFromHealthHeading = app.staticTexts["UIA.Health.GetMoreFromHealth.Title"]
        
        logger.log("Swiping to reveal 'Get More From Health' heading...")
        while !getMoreFromHealthHeading.exists || !getMoreFromHealthHeading.isHittable {
            app.swipeUp()
        }
        
        XCTAssertTrue(getMoreFromHealthHeading.exists, "Get More From Health heading is not visible")
        sleep(2)
        logger.log("✅ 'Get More From Health' heading is visible.")
    }
    
    // Need to figure out why the (X) button is not being clicked in the Medical ID box
    
    //func testClosingMedicalIdBox() {
        
        // Assume the app launches into the Summary tab
        //let medicalIdBoxCloseButton = app.tabBars.buttons["UIA.Health.SetUpEEDTile.Header.Accessory"]
        
        //let medicalIdBoxHeaderText = app.staticTexts["UIA.Health.SetUpEEDTile.Header.Title"]
        //XCTAssertTrue(medicalIdBoxHeaderText.exists, "Medical ID box is displayed.")
        //medicalIdBoxCloseButton.tap()
        //XCTAssertFalse(medicalIdBoxHeaderText.exists, "Medical ID box close button is still visible")
        //logger.log("✅ Medical ID box has been closed.")
        //}
*/
}

