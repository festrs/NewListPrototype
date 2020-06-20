//
//  FirstScreenViewModelTests.swift
//  NewListPrototypeTests
//
//  Created by Felipe Dias Pereira on 20/06/20.
//  Copyright © 2020 Felipe Dias Pereira. All rights reserved.
//

import Quick
import Nimble
import Combine
@testable import NewListPrototype

class FirstScreenViewModelTests: QuickSpec {
  override func spec() {
    describe("the 'Documentation' directory") {

      it("has everything you need to get started") {
        let firstViewModel = FirstScreenViewModel()
        let publisher = firstViewModel.$loading
        var result: [Bool] = []

        let subscriptions = publisher.sink { (value) in
          result.append(value)
        }

        firstViewModel.loadObjects()

        expect(result).to(equal([false,true]))

        subscriptions.cancel()
      }

      context("if it doesn't have what you're looking for") {
        it("needs to be updated") {

        }
      }
    }
  }
}
