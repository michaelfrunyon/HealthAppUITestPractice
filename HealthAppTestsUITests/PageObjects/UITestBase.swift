import XCTest

// Base test class that all test cases inherit from
class UITestBase: XCTestCase {
    var app: XCUIApplication!
    let logger = Logger() // Initialize the Logger
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
            
        if app == nil {
            app = XCUIApplication(bundleIdentifier: "com.apple.Health")
        }
            
        /*if app.state != .notRunning {
            logger.log("🔴 Terminating existing app instance...")
            app.terminate()
        }
         */
        logger.log("🚀 Launching the app...")
        app.launch()
            
        logger.log("🟢 App Launched Successfully!")
    }
    
    override func tearDown() {
        // Log test completion
        logger.log("🏁 Test Completed!")
        
        // Terminate the app to reset any state between tests
        if app.state != .notRunning {
            app.terminate()
        }
        
        super.tearDown()
    }
}
