//
//  NavigationBar.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

public struct NavigationBar: View {
   
   @EnvironmentObject var viewModel: NavigationControllerViewModel
   
   private let title: String = "WellWin"
   var isRoot: Bool
   
   public var body: some View {
      VStack(alignment: .leading) {
         HStack(alignment: .center) {
            if !isRoot {
               NavigationPopButton() {
                  HStack {
                     Image("backBlack")
                        .resizable()
                        .frame(width: 26.0, height: 12.0)
                        .foregroundColor(.black)
                     Text("BACK")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.black).opacity(0.8)
                  }
               }
            }
            Spacer()
            if isRoot {
               Text(title)
                  .fontWeight(.medium)
               Spacer()
            }
         }
         .foregroundColor(.black)
         .animation(.none)
      }
      .padding(.top, 10)
      .frame(maxWidth: .infinity)
   }
}
