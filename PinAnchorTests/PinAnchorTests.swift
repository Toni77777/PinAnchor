//
//  PinAnchorTests.swift
//  PinAnchorTests
//
//  Created by Anton Paliakou on 7/25/21.
//

import XCTest
import UIKit
@testable import PinAnchor

class PinAnchorTests: XCTestCase {
    
    // MARK: - Properties
    
    private var parentView: UIView!
    private var childView: UIView!
    
    // MARK: - Overrides
    
    override func setUp() {
        parentView = UIView()
        childView = UIView()
        parentView.addSubview(childView)
        childView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - Tests
    
    func testPinTopShouldInsetBeZero() {
        childView.pinToTop()
        
        let constraint = parentView.constraints.first
        XCTAssertEqual(constraint?.constant, 0)
    }
    
    func testPinTopWithInsetShouldApplyInset() {
        let inset: CGFloat = 16
        childView.pinToTop(inset: inset)
        
        let constraint = parentView.constraints.first
        XCTAssertEqual(constraint?.constant, inset)
    }
    
    func testPinTopHaveTopAttribute() {
        childView.pinToTop()
        
        let constraint = parentView.constraints.first
        XCTAssertEqual(constraint?.firstAttribute, .top)
    }
    
    func testPinTopHaveActiveTopConstaint() {
        childView.pinToTop()
        
        let constraint = parentView.constraints.first
        XCTAssertTrue(constraint!.isActive)
    }
    
    func testPinTopShouldAddOneConstraint() {
        childView.pinToTop()
        
        XCTAssertEqual(parentView.constraints.count, 1)
    }
}
