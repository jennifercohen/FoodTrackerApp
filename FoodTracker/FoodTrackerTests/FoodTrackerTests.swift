//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jennifer Cohen on 21/06/2019.
//  Copyright © 2019 Jennifer Cohen. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    //MARK: Meal Class Tests
    
    //Confirm that meal initialiser returns meal object when passed valid parameters
    func testMealInitalisationSucceeds() {
        //Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
        
        //Confirm that the Meal initialiser returns nil when passed a negative rating or an empty name
        func testMealInitialisationFails() {
            
            //Negative rating
            let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
            XCTAssertNil(negativeRatingMeal)
            
            //Rating exceeds maximum
            let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
            XCTAssertNil(largeRatingMeal)
            
            //Empty String
            let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
            XCTAssertNil(emptyStringMeal)
        }
    }

