//
//  FirstScreen.swift
//  NewListPrototype
//
//  Created by Felipe Dias Pereira on 20/06/20.
//  Copyright © 2020 Felipe Dias Pereira. All rights reserved.
//

import SwiftUI

struct FirstScreen: View {
  @ObservedObject var viewModel: FirstScreenViewModel
  
    var body: some View {
      VStack {
      HStack {
        Button(action: {
          self.viewModel.loadObjects()
        }) {
          Text("Tappaia")
        }
      }
        if viewModel.loading {
          Text("loading....")
        } else {
          Text("terminou")
        }
      }.onAppear {
        self.viewModel.loadObjects()
      }
  }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
      let viewModel = FirstScreenViewModel()
      return FirstScreen(viewModel: viewModel)
    }
}
