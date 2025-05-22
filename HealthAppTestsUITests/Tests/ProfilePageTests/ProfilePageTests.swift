//
//  ProfilePageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/24/25.
//

import XCTest

class ProfilePageTests: UITestBase {
    var profilePage: ProfilePage!
    var summaryMainPage: SummaryMainPage!
    
    override func setUp() {
        super.setUp()
        profilePage = ProfilePage(app: app)
        summaryMainPage = SummaryMainPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    override func tearDown() {
        logger.log("🔧 Cleaning up after test and tearing down.")
        
        super.tearDown()
        
        //XCUIDevice.shared.press(.home)
    }
    
    // Test launching the Profile page and then return to the Summary page
  
    func testProfileButtonWithoutPOM() {
        let browseTab = app.tabBars.buttons["UIA.Health.Browse.BrowseTab"]
        let browseHeader = app.staticTexts["Browse"]
        let profileButton = app.buttons["Profile"]
        let healthDetailsButton = app.cells["UIA.Health.ShowHealthDetails"]
        
        XCTAssertTrue(browseTab.exists, "Browse tab should exist")
        logger.log("Tapping on 'Browse' tab...")
        browseTab.tap()
        XCTAssertTrue(browseHeader.exists, "Browse header should exist")
        logger.log("The 'Browse' header is visible.")
        sleep(2)
        
        
        XCTAssertTrue(profileButton.exists, "Profile button should exist")
        logger.log("Tapping on 'Profile' button...")
        profileButton.tap()
        XCTAssertTrue(healthDetailsButton.exists, "Health Details button should exist")
        logger.log("The 'Health Details' button is visible.")
        sleep(2)
        logger.log("Test complete.")
    }
    
    func testProfileButtonWithoutPOM2() {
        let browseTab = app.tabBars.buttons["Browse"] // Probably need to use identifier here
        let browseHeader = app.staticTexts["Browse"]
        let profileButton = app.buttons["Profile"]
        let healthDetailsButton = app.cells["Health Details"]
        
        XCTAssertTrue(browseTab.exists, "Browse tab should exist...")
        logger.log("Tapping on 'Browse' tab...")
        browseTab.tap()
        XCTAssertTrue(browseHeader.exists, "Browse header should exist...")
        logger.log("The 'Browse' header exists.")
        
        XCTAssertTrue(profileButton.exists && profileButton.isHittable)
        logger.log("Tapping on 'Profile' button...")
        profileButton.tap()
        XCTAssertTrue(healthDetailsButton.exists)
        logger.log("The 'Health Details' button is visible.")
        logger.log("Test Complete!")
        
    }
  

    // Test launching each category in the Profile page and then return to the Summary page
    /*
    func testProfileCategories() {
        summaryPage.tapSummaryProfileButton()
        
        profilePage.clickProfileHealthDetailsCell()
        UITestHelpers.waitForPage(withTitle: "Health Details", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileMedicalIdCell()
        UITestHelpers.waitForPage(withTitle: "Medical ID", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileHealthRecordsCell()
        UITestHelpers.waitForPage(withTitle: "Health Records", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileNotificationsCell()
        UITestHelpers.waitForPage(withTitle: "Notifications", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileOrganDonationCell()
        UITestHelpers.waitForPage(withTitle: "Organ Donation", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileAppsCell()
        UITestHelpers.waitForPage(withTitle: "Apps", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileResearchStudiesCell()
        UITestHelpers.waitForPage(withTitle: "Research Studies", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileDevicesCell()
        UITestHelpers.waitForPage(withTitle: "Devices", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileDoneButton()
    }
    
    func testExportAllHealthDataButton() {
        summaryPage.tapSummaryProfileButton()
        profilePage.clickExportAllHealthButton()
        profilePage.clickExportAllHealthPopupCancelButton()
    }
*/
    
    
}
