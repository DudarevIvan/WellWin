//
//  SeasonsScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/30/21.
//

import SwiftUI

struct SeasonsScreen: View {
   
   @Environment(\.presentationMode) var presentation
   
   private var router: Router = .shared
   
    var body: some View {
      VStack {
         Button(action: {
            router.isStrategy = true
            self.presentation.wrappedValue.dismiss()
         }, label: {
            Text("Button1")
         })
         Button(action: {
            router.isStrategy = true
            self.presentation.wrappedValue.dismiss()
         }, label: {
            Text("Button2")
         })
      }
    }
}

struct SeasonsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SeasonsScreen()
    }
}
