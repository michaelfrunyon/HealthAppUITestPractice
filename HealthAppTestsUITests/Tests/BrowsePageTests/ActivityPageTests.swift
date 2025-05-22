//
//  File.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/15/25.
//

import XCTest

class BrowseActivityPageTests: UITestBase {
    var summaryMainPage: SummaryMainPage!
    var browseMainPage: BrowseMainPage!
    var activityPage: ActivityPage!
    var tabBar: TabBar!
    
    override func setUp() {
        super.setUp()
        summaryMainPage = SummaryMainPage(app: app)
        browseMainPage = BrowseMainPage(app: app)
        activityPage = ActivityPage(app: app)
        tabBar = TabBar(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    // Test launching the Activity categories
    
    func testActivityCategories() {
        logger.log("👆 Tapping the 'Browse' tab button...")
        tabBar.tapBrowseTab()
        logger.log("👆 Tapping the 'Activty' category button...")
        UITestHelpers.tapElement(browseMainPage.activity)
    
        // Active Energy
        logger.log("👆Tapping on 'Active Energy' button...")
        UITestHelpers.tapElement(activityPage.activeEnergy)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Activity
        logger.log("👆 Tapping on 'Activity' button...")
        UITestHelpers.tapElement(activityPage.activity)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Cardio Fitness
        logger.log("👆 Tapping on 'Cardio Fitness' button...")
        UITestHelpers.tapElement(activityPage.cardioFitness)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Cardio Recovery
        logger.log("👆 Tapping on 'Cardio Recover' button...")
        UITestHelpers.tapElement(activityPage.cardioRecovery)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Cross Country Skiing Distance
        logger.log("👆 Tapping on 'Cross Country Skiing Distance' button...")
        UITestHelpers.tapElement(activityPage.crossCountrySkiingDistance)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Cross Country Skiing Speed
        logger.log("👆 Tapping on 'Cross Country Skiing Speed' button...")
        UITestHelpers.tapElement(activityPage.crossCountrySkiingSpeed)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Cycling Cadence
        logger.log("👆 Tapping on 'Cycling Cadence' button...")
        UITestHelpers.tapElement(activityPage.cyclingCadence)
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        UITestHelpers.tapElement(activityPage.backToActivityButton)
        
        // Go back to 'Browse' main page
        logger.log("👈 Going back to the 'Browse' main page...")
        UITestHelpers.tapElement(browseMainPage.backToBrowseButton)
        
    }
    
   
    
}
