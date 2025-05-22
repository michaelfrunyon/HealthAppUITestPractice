//
//  PickerWheel.swift
//  HealthAppTestsUITests
//
//  Created by Michael Runyon on 5/10/25.
//

import XCTest

class PickerWheel {
    private let picker: XCUIElement
    
    init(picker: XCUIElement) {
        self.picker = picker
    }
    
    func select(value: String) {
        picker.adjust(toPickerWheelValue: value)
    }
    
    func currentValue() -> String {
        return picker.value as? String ?? ""
    }
}
