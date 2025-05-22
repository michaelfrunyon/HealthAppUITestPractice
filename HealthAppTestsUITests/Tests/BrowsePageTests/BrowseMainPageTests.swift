//
//  BrowsePageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class BrowseMainPageTests: UITestBase {
    var summaryMainPage: SummaryMainPage!
    var browseMainPage: BrowseMainPage!
    var tabBar: TabBar!
    var activityPage: ActivityPage!
    
    override func setUp() {
        super.setUp()
        summaryMainPage = SummaryMainPage(app: app)
        browseMainPage = BrowseMainPage(app: app)
        tabBar = TabBar(app: app)
        activityPage = ActivityPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    //MARK: - Individual Categories
    
    func testActivityCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Activity' category...")
        UITestHelpers.tapElement(browseMainPage.activity)
        XCTAssertTrue(activityPage.activityHeader.exists)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
        
    func testBodyMeasurementsCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Body Measurements' category...")
        UITestHelpers.tapElement(browseMainPage.bodyMeasurements)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testCycleTrackingCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Cycle Tracking' category...")
        UITestHelpers.tapElement(browseMainPage.cycleTracking)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testHearingCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Hearing' category...")
        UITestHelpers.tapElement(browseMainPage.hearing)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testHeartCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Heart' category...")
        UITestHelpers.tapElement(browseMainPage.heart)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testMedicationsCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Medications' category...")
        UITestHelpers.tapElement(browseMainPage.medications)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testMentalWellbeingCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Mental Wellbeing' category...")
        UITestHelpers.tapElement(browseMainPage.mentalWellbeing)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testMobilityCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Mobility' category...")
        UITestHelpers.tapElement(browseMainPage.mobility)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testNutritionCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Nutrition' category...")
        UITestHelpers.tapElement(browseMainPage.nutrition)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testRespiratoryCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Respiratory' category...")
        UITestHelpers.tapElement(browseMainPage.respiratory)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testSleepCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        logger.log("👆 Selecting the 'Sleep' category...")
        UITestHelpers.tapElement(browseMainPage.sleep)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testSymptomsCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        app.swipeUp()
        logger.log("👆 Selecting the 'Symptoms' category...")
        UITestHelpers.tapElement(browseMainPage.symptoms)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testVitalsCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        app.swipeUp()
        logger.log("👆 Selecting the 'Vitals' category...")
        UITestHelpers.tapElement(browseMainPage.vitals)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    func testOtherDataCategory() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        app.swipeUp()
        logger.log("👆 Selecting the 'Other Data' category...")
        UITestHelpers.tapElement(browseMainPage.otherData)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
    }
    
    
    // MARK: - All Categories
    
    func testAllCategories() {
        
        // Open 'Browse' tab
        logger.log("👆 Selecting the 'Browse' tab button.")
        tabBar.tapBrowseTab()
        
        // Activity
        logger.log("👆 Selecting the 'Activity' category...")
        UITestHelpers.tapElement(browseMainPage.activity)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
        
        // Body Measurements
        logger.log("👆 Selecting the 'Body Measurements' category...")
        UITestHelpers.tapElement(browseMainPage.bodyMeasurements)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
        
        // Cycle Tracking
        logger.log("👆 Selecting the 'Cycle Tracking' cell...")
        UITestHelpers.tapElement(browseMainPage.cycleTracking)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Hearing
        logger.log("👆 Selecting the 'Hearing' cell...")
        UITestHelpers.tapElement(browseMainPage.hearing)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Heart
        logger.log("👆 Selecting the 'Heart' cell...")
        UITestHelpers.tapElement(browseMainPage.heart)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Medications
        logger.log("👆 Selecting the 'Medications' cell...")
        UITestHelpers.tapElement(browseMainPage.medications)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Mental Wellbeing
        logger.log("👆 Selecting the 'Mental Wellbeing' cell...")
        UITestHelpers.tapElement(browseMainPage.mentalWellbeing)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Mobility
        logger.log("👆 Selecting the 'Mobility' cell...")
        UITestHelpers.tapElement(browseMainPage.mobility)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Nutrition
        logger.log("👆 Selecting the 'Nutrition' cell..")
        UITestHelpers.tapElement(browseMainPage.nutrition)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Respitory
        logger.log("👆 Selecting the 'Respitory' cell...")
        UITestHelpers.tapElement(browseMainPage.respiratory)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

    
        // Sleep
        logger.log("👆 Selecting the 'Sleep' cell...")
        UITestHelpers.tapElement(browseMainPage.sleep)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Symptoms
        logger.log("👆 Selecting the 'Symptoms' cell...")
        UITestHelpers.tapElement(browseMainPage.symptoms)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Vitals
        logger.log("👆 Selecting the 'Vitals' cell...")
        UITestHelpers.tapElement(browseMainPage.vitals)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

        
        // Other Data
        logger.log("👆 Selecting the 'Other Data' cell...")
        UITestHelpers.tapElement(browseMainPage.otherData)
        logger.log("👈 Going back to 'Browse' page via the back button...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)

    }
    
 


}
