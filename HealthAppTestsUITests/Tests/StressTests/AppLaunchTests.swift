//
//  AppLaunchTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/25/25.
//

import XCTest

class AppLaunchTests: UITestBase {
    
    // Number of times to launch and close the app in the test
    let launchIterations = 5
    
    override func setUp() {
        super.setUp()
        logger.log("🔧 Setting up the test environment.")
        
        // Launch the app once before the tests begin
        app.launch()
    }
    
    override func tearDown() {
        logger.log("🔧 Cleaning up after test and tearing down.")
            
        // Press home to exit the app
        //XCUIDevice.shared.press(.home)
            
        super.tearDown()
    }
    
    /*
    func testAppFirstLaunch() {
        
        let welcomeToHealthContinueButton = app.buttons["UIA.Health.BuddyOnboarding.WelcomeScreen.ContinueButton"]
        XCTAssertTrue(welcomeToHealthContinueButton.exists, "Continue button not found on the Welcome to Health screen")
        
        logger.log("Tapping on Continue button...")
        welcomeToHealthContinueButton.tap()
        
        let protectYourHealthDataContinueButton = app.buttons["UIA.Health.BuddyOnboarding.PrivacyScreen.ContinueButton"]
        XCTAssertTrue(protectYourHealthDataContinueButton.exists, "Continue button not found on the Privacy screen")
        
        logger.log("Tapping on Continue button...")
        protectYourHealthDataContinueButton.tap()
        
        let setUpHealthDetailsNextButton = app.buttons["UIA.Health.BuddyOnboarding.UserInfoScreen.ContinueButton"]
        XCTAssertTrue(setUpHealthDetailsNextButton.exists, "Next button not found on the Details screen")
        setUpHealthDetailsNextButton.tap()
        
        let healthNotificationsContinueButton = app.buttons["UIA.Health.BuddyOnboarding.NotificationScreen.ContinueButton"]
        XCTAssertTrue(healthNotificationsContinueButton.exists, "Continue button not found on the Health Notifications screen")
        healthNotificationsContinueButton.tap()
    }
    
    */
    
    func testRepeatedAppLaunches() {
        logger.log ("🚀 Starting stress test: Launching and closing the app \(launchIterations) times.")
        for iteration in 1...launchIterations {
            UITestHelpers.logThermalState()
            logger.log("Launching app iteration \(iteration) of \(launchIterations).")
            app.launch()
            
            sleep(1)
            
            logger.log("⛔️ Iteration \(iteration): Terminating app.")
            app.terminate()
        }
    }
    
    func testAppLaunchPerformance() {
        UITestHelpers.logThermalState()
        // Measure performance
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            app.launch()
        }
        
    }
 
}
