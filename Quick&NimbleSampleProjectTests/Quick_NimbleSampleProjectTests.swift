//
//  Quick_NimbleSampleProjectTests.swift
//  Quick&NimbleSampleProjectTests
//
//  Created by HengVisal on 5/30/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import Quick
import Nimble

@testable import Quick_NimbleSampleProject

class Quick_NimbleSampleProjectTests: QuickSpec {
    
    override func spec() {
         var subject : MovieViewController!
        context("when view is loaded") {
            beforeEach {
                subject = MovieViewController()
                _ = subject.view
            }
            it("it should load 3 movies", closure: {
                expect(subject.tableView.numberOfRows(inSection: 0)).toNot(equal(0))
            })
        }
        
        
        // To test table view it not empty
        context("uitableview cell") {
            var cell : UITableViewCell!
            beforeEach {
                cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
            }
            it("tableview cell should contain movie title and genre", closure: {
                expect(cell.textLabel?.text).toNot(equal(""))
                expect(cell.detailTextLabel?.text).toNot(equal(""))
            })
        }
    }
    
}
