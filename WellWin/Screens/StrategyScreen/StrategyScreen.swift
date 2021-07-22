//
//  StrategyScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct StrategyScreen: View, NavigationTitle {
   
   @State private(set) var title: String = "Strategy"
   
   var body: some View {
      ZStack {
         Color("black")
            .ignoresSafeArea()
         VStack {
            NavigationPushButton(destination: ResultScreen()) {
               Text("Go to result")
            }
            Spacer()
         }
      }
   }
}

struct StrategyScreen_Previews: PreviewProvider {
   static var previews: some View {
      StrategyScreen()
   }
}
