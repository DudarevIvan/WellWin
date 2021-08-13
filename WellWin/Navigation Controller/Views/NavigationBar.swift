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
         HStack(alignment: .center) {
            if !isRoot {
               NavigationPopButton() {
                  HStack {
                     Image("whiteBlack")
                        .resizable()
                        .frame(width: 26.0, height: 12.0)
                        .foregroundColor(.black)
                     Text("BACK")
                        .font(.caption)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                  }
               }
            }
            Spacer()
            if isRoot {
               Text(title)
                  .font(.headline)
                  .foregroundColor(.black)
                  .shadow(color: Color.gray, radius: 2, x: 1, y: 1)
               Spacer()
            }
         }
         .foregroundColor(.white)
         .animation(.none)
      }
      .padding(.top, 10)
      .frame(maxWidth: .infinity)
   }
}
