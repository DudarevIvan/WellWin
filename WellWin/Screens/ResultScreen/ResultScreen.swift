//
//  ResultScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct ResultScreen: View {
   var body: some View {
      ZStack {
         Color("black")
            .ignoresSafeArea()
         VStack {
            HStack {
               Text("Result")
                  .bold()
                  .foregroundColor(.white)
                  .font(.largeTitle)
               Spacer()
            }
            //.padding(.horizontal)
            .padding()
            ChartsView()
               .padding(.vertical, 40)
            Spacer()
         }
      }
   }
}

struct ResultScreen_Previews: PreviewProvider {
   static var previews: some View {
      ResultScreen()
   }
}
