//
//  ProfileHealthDetailsPage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 5/7/25.
//

import XCTest

class ProfileHealthDetailsPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
 
    
    //MARK: - Headers
    var healthDetailsHeader: XCUIElement { app.staticTexts["Health Details"] }
    
    //MARK: - Buttons
    var healthDetailsEditButton: XCUIElement { app.navigationBars.buttons["Edit"] }
    var healthDetailsDoneButton: XCUIElement { app.navigationBars.buttons["Done"] }

    
    //MARK: - Text Fields
    var firstNameTextField: XCUIElement { app.textFields["UIA.Health.HealthDetail.FirstName.Value"] }
    var lastNameTextField: XCUIElement { app.textFields["UIA.Health.HealthDetail.LastName.Value"] }
    var birthDate: XCUIElement { app.textFields["UIA.Health.HealthDetail.Birthdate.Value"] }
    var biologicalSexField: XCUIElement { app.textFields["UIA.Health.HealthDetail.BiologicalSex.Value"] }
    var bloodTypeField: XCUIElement { app.textFields["UIA.Health.HealthDetail.BloodType.Value"] }
    var fitzpatrickSkinTypeField: XCUIElement { app.textFields["UIA.Health.HealthDetail.FitzpatrickSkinType.Value"] }
    var wheelchairUseField: XCUIElement { app.textFields["UIA.Health.HealthDetail.WheelchairUse.Value"] }
    
    //MARK: - Picker Wheel
    var monthPicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 0)) }
    var dayPicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 1)) }
    var yearPicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 2)) }
    var biologicalSexPicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 0)) }
    var bloodTypePicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 0)) }
    var fitzpatrickSkinTypePicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 0)) }
    var wheelchairUsePicker: PickerWheel { PickerWheel(picker: app.pickerWheels.element(boundBy: 0)) }

}
