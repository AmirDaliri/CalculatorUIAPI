    import XCTest
    @testable import CalculatorUIAPI

    final class CalculatorUIAPITests: XCTestCase {
        
        func testDefaultCalculatorUIAPI() {
            let featureToggle = CalculatorUIAPI(dictionary: nil)
            XCTAssertTrue(featureToggle.add)
            XCTAssertTrue(featureToggle.minus)
            XCTAssertTrue(featureToggle.multiply)
            XCTAssertTrue(featureToggle.divide)
            XCTAssertTrue(featureToggle.cos)
            XCTAssertTrue(featureToggle.sin)
            XCTAssertTrue(featureToggle.bitcoinRate)
        }
        
        func testCompletedCalculatorUIAPI() {
            let dictionary = ["add" : false,
                              "minus" : true,
                              "multiply" : true,
                              "divide" : true,
                              "sin" : false,
                              "cos" : true,
                              "bitcoinRate" : true]
            let featureToggle = CalculatorUIAPI(dictionary: dictionary)
            XCTAssertFalse(featureToggle.add)
            XCTAssertTrue(featureToggle.minus)
            XCTAssertTrue(featureToggle.multiply)
            XCTAssertTrue(featureToggle.divide)
            XCTAssertTrue(featureToggle.cos)
            XCTAssertFalse(featureToggle.sin)
            XCTAssertTrue(featureToggle.bitcoinRate)
        }
        
        func testCalculatorUIAPIWithDefaultValues() {
            let dictionary = ["add" : false,
                              "minus" : true,
                              "divide" : true,
                              "sin" : false]
            let featureToggle = CalculatorUIAPI(dictionary: dictionary)
            XCTAssertFalse(featureToggle.add)
            XCTAssertTrue(featureToggle.minus)
            XCTAssertTrue(featureToggle.multiply)
            XCTAssertTrue(featureToggle.divide)
            XCTAssertTrue(featureToggle.cos)
            XCTAssertFalse(featureToggle.sin)
            XCTAssertTrue(featureToggle.bitcoinRate)
        }

        func testOfflineCalculatorUIAPI() {
            let featureToggle = CalculatorUIAPI.offline()
            XCTAssertTrue(featureToggle.add)
            XCTAssertTrue(featureToggle.minus)
            XCTAssertTrue(featureToggle.multiply)
            XCTAssertTrue(featureToggle.divide)
            XCTAssertTrue(featureToggle.cos)
            XCTAssertTrue(featureToggle.sin)
            XCTAssertFalse(featureToggle.bitcoinRate)
        }
    }
