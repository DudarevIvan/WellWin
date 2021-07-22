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
               Image(systemName: "chevron.backward")
                  .font(.title3)
                  .padding(.trailing, 10)
               Text("Result")
                  .bold()
                  .font(.title2)
               Spacer()
            }
            .foregroundColor(.white)
            //.padding(.horizontal)
            .padding()
            ChartsView()
               .padding(.vertical, 40)
            Spacer()
         }
      }
      .navigationBarBackButtonHidden(true)
   }
}

struct ResultScreen_Previews: PreviewProvider {
   static var previews: some View {
      ResultScreen()
   }
}
