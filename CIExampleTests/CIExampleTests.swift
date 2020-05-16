//
//  CIExampleTests.swift
//  CIExampleTests
//
//  Created by Matheus Ramos on 15/05/20.
//  Copyright © 2020 Matheus. All rights reserved.
//

import XCTest
@testable import CIExample

class CIExampleTests: XCTestCase {
    
     var viewController: ViewController?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testValidSumWithValidResult() {
         let num1: Double = 4.0
         let num2 : Double = 4.0
         
         let result: Double? = viewController?.sum(num1, with: num2)
         XCTAssertNotNil(result, "Verificando se o meu objeto Result não é nil")
         XCTAssertEqual(result, 8.0, "A soma dos dois valores deve ser igual a 8.")
     }

    
    func testValidSumWithInvalidResult() {
        let num1: Double = 2.0
        let num2 : Double = 7.0
        
        let result: Double? = viewController?.sum(num1, with: num2)
        XCTAssertNotNil(result, "Verificando se o meu objeto Result não é nil")
        XCTAssertNotEqual(result, 10.0, "A soma dos dois valores deve ser igual a 9.0.")
    }

}
