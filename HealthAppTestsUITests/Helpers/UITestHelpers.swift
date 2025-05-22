//
//  UITestHelpers.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/25/25.
//

import XCTest

class UITestHelpers {
    
    //MARK: - Tap any UI element
    
    static func tapElement(_ element: XCUIElement, logMessage: String? = nil) {
        // let logger = Logger()
        
        // Log the action (if a logMessage is provided)
        if let message = logMessage {
            NSLog(message)
        }
        
        // Wait for the element to exist
        XCTAssertTrue(
            element.waitForExistence(timeout: 5),
            "❌ Failed to find tappable element with identifier: \(element)"
        )
        
        // Tap the element
        element.tap()
    }
    
    //MARK: - Wait for page
    
    static func waitForPage(withTitle title: String, in app: XCUIApplication, timeout: TimeInterval = 5.0) {
        let navBar = app.navigationBars[title]
        let headerText = app.staticTexts[title]
        let exists = navBar.waitForExistence(timeout: timeout) || headerText.waitForExistence(timeout: timeout)
        XCTAssertTrue(exists, "❌ Failed to navigate to page with title: \(title)")
    }
    
    //MARK: - Scroll to any UI element
    
    static func scrollToElement(_ element: XCUIElement, in app: XCUIApplication, maxScrolls: Int = 10) {
        var attempts = 0
        while !element.exists || !element.isHittable && attempts < maxScrolls{
            app.swipeUp()
            sleep(1)
            attempts += 1
        }
        
        if !element.exists || !element.isHittable {
            XCTFail("❌ Element not found after \(maxScrolls) scroll attempts: \(element)")
            
        }
    }
    
    //MARK: - Logs Thermal State
    
    static func logThermalState() {
        let state = ProcessInfo.processInfo.thermalState
        print("🧊 Thermal State: \(state)")
    }
    
    
    //MARK: - Scroll to top of the page
    /*
    static func scrollToTopOfPage(until element: XCUIElement, in app: XCUIApplication, maxSwipes: Int = 10) {
        var attempts = 0
        while (!element.exists || !element.isHittable) && attempts < maxSwipes {
            print("⬆️ Swipe up attempt \(attempts + 1)")
            app.swipeDown()
            sleep(1)
            attempts += 1
        }
        
    }
    
    
    //MARK: - Makes app state readable
    
    static func readableAppState(_ state: XCUIApplication.State) -> String {
        switch state {
        case .notRunning:
            return "Not Running (0)"
        case .runningBackground:
            return "Running in Background (1)"
        case .runningForeground:
            return "Running in Foreground (2)"
        case .runningBackgroundSuspended:
            return "Background Suspended (4)"
        default:
            return "Unknown State (\(state.rawValue))"
        }
    }
    */
}
