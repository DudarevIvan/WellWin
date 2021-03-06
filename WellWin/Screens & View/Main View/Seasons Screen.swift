//
//  SeasonsScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/30/21.
//

import SwiftUI

struct SeasonsScreen: View {
   
   @Binding var isShowing: Bool
   @Binding var go: Bool
   @Binding var seasons: Array<Seasons>
      
   var body: some View {
      ZStack(alignment: .bottom) {
         if isShowing {
            Color.black
               .opacity(0.2)
               .ignoresSafeArea()
               .onTapGesture {
                  isShowing = false
               }
            SeasonsContentView(seasons: self.$seasons, isShowing: $isShowing, go: $go)
               .transition(.move(edge: .bottom))
            
         }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
      .ignoresSafeArea()
      .animation(.easeInOut)
   }
}

struct SeasonsScreen_Previews: PreviewProvider {
   static var previews: some View {
      MainView()
   }
}
