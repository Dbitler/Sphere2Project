//
//  Sphere2ProjectTests.swift
//  Sphere2ProjectTests
//
//  Created by IIT PHYS 440 on 1/17/23.
//

import XCTest

final class Sphere2ProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testSphere() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        let mysphereclassinstance = SphereParameters()
        mysphereclassinstance.sphericalradius = "1.0"
        
        let correctArea = 4 * Double.pi
        let correctVolume = (4 / 3) * Double.pi
        
        
        let areaSphere = mysphereclassinstance.calculatesphereSurfaceArea()
        let volumeSphere = mysphereclassinstance.calculatesphereVolume()
        
        XCTAssertEqual(correctArea, areaSphere, accuracy: 1e-14)
        
        XCTAssertEqual(correctVolume, volumeSphere, accuracy: 1e-14)
        //Make sure to verify the correct volume and area for the bounding box as well
    }
    
    func testBoundingBox() throws {
        
        /*Identical code in every way to the previous function, except testing the function for the Cube parameters
         the variable "box radius" is set to 0.5, because within the bounding box instance, it is doubled to 1.0 units. 
         */
        let myboxclassinstance = BoundingBoxParameters()
        myboxclassinstance.boxradius = "0.5"
        
        let correctCArea = Double(6)
        let correctCVolume = Double(1)
        
        let areaCube = myboxclassinstance.calculateBoundingBoxSurfaceArea()
        let volumeCube = myboxclassinstance.calculateBoundingBoxVolume()
        
        XCTAssertEqual(correctCArea, areaCube, accuracy: 1e-14)
        
        XCTAssertEqual(correctCVolume, volumeCube, accuracy: 1e-14)
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
