//
//  FirstScreenViewModel.swift
//  NewListPrototype
//
//  Created by Felipe Dias Pereira on 20/06/20.
//  Copyright © 2020 Felipe Dias Pereira. All rights reserved.
//

import Foundation

final class FirstScreenViewModel: ObservableObject, Identifiable {
  @Published var name: String = ""
  @Published var loading: Bool = false

  func loadObjects() {
    loading = true
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      self.loading = false
    }
  }
}
