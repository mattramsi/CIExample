//
//  CIExampleUITests.swift
//  CIExampleUITests
//
//  Created by Matheus Ramos on 15/05/20.
//  Copyright © 2020 Matheus. All rights reserved.
//

import XCTest

class CIExampleUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app.launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFixedComponentOnScreenExists() {
        let exists = NSPredicate(format: "exists == true")
        
        expectation(for: exists, evaluatedWith: app.staticTexts["Continuous Integration"]) { () -> Bool in
            return true
        }
        
        expectation(for: exists, evaluatedWith: app.staticTexts["Automatin Everything"]) { () -> Bool in
            return true
        }
        
        waitForExpectations(timeout: 5.0) { (error) in
            if let notFoundError = error {
                XCTFail(notFoundError.localizedDescription)
            }
        }
        
        
    }
}
