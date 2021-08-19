//
//  NavigationBar.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

public struct NavigationBar: View {
   
   @EnvironmentObject var viewModel: NavigationControllerViewModel
   
   private let title: String = "WELLWIN"
   var isRoot: Bool
   
   public var body: some View {
      VStack(alignment: .leading) {
         HStack {
            if !isRoot {
               NavigationPopButton() {
                  HStack {
                     Image(systemName: "chevron.backward")
                     Spacer()
                  }
               }
            }
            if isRoot {
               Text(title)
                  .font(Font.system(size: 20, weight: .bold, design: .rounded))
                  .foregroundColor(.white)
                  .padding(.horizontal, 10)
               Spacer()
            }
         }
         .animation(.none)
      }
      .padding(.top, 10)
      .frame(maxWidth: .infinity)
   }
}
