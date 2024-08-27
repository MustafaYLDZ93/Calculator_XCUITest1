//
//  UITests_Calculator.swift
//  UITests_Calculator
//
//  Created by Mustafa Yıldız on 25/08/2024.
//

import XCTest

final class UITests_Calculator: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testToplama() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["5"].tap()
        app.staticTexts["+"].tap()
        app.staticTexts["6"].tap()
        app.staticTexts["="].tap()
        
        let result = app.staticTexts["11"]
            XCTAssertEqual(result.label, "11", "Sonuç 11 olmalıydı")
        
        // Eğer sonuç 11 ise başarılı mesajı yazdır
            if result.label == "11" {
                print("Test başarılı: Sonuç 11")
            }
        
        let cStaticText = app.staticTexts["C"]
        cStaticText.tap()
        cStaticText.tap()
        cStaticText.tap()
        
        XCUIDevice.shared.orientation = .landscapeLeft
        
        app.staticTexts["5"].tap()
        app.staticTexts["+"].tap()
        app.staticTexts["6"].tap()
        app.staticTexts["="].tap()
        
        let result1 = app.staticTexts["11"]
            XCTAssertEqual(result1.label, "11", "Sonuç 11 olmalıydı")
        
        // Eğer sonuç 11 ise başarılı mesajı yazdır
            if result1.label == "11" {
                print("Test başarılı: Sonuç 11")
            }
        
        XCUIDevice.shared.orientation = .portrait
       

    }
    
    func testCarpma() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["5"].tap()
        app.staticTexts["*"].tap()
        app.staticTexts["5"].tap()
        app.staticTexts["="].tap()
        
        let result = app.staticTexts["25"]
            XCTAssertEqual(result.label, "25", "Sonuç 25 olmalıydı")
        
        // Eğer sonuç 11 ise başarılı mesajı yazdır
            if result.label == "25" {
                print("Test başarılı: Sonuç 25")
            }
        
        
    }
    
    func testSıfırButonu() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["2"].tap()
        app.staticTexts["0"].tap()
        app.staticTexts["+"].tap()
        app.staticTexts["1"].tap()
        app.staticTexts["="].tap()
        
        let result = app.staticTexts["11"]
            XCTAssertEqual(result.label, "11", "Sonuç 11 olmalıydı")
        
        // Eğer sonuç 11 ise başarılı mesajı yazdır
            if result.label == "11" {
                print("Test başarılı: Sonuç 11")
            }
    
        
    }


    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
