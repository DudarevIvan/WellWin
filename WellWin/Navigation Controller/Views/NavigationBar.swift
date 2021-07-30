//
//  NavigationBar.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

public protocol NavigationTitle: View {
   var title: String { get }
}

public struct NavigationBar: View {
   
   @EnvironmentObject var viewModel: NavigationControllerViewModel
   
   var title: String
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
            if title == "Wellwin" {
               Text(title)
                  .fontWeight(.heavy)
                  .offset(x: (isRoot ?  0 : -20))
               Spacer()
            } else if title == "Strategy" {
               Text("CLEAR")
                  .font(.caption)
                  .fontWeight(.bold)
                  .foregroundColor(.black).opacity(0.8)
               Text("SAVE")
                  .font(.caption)
                  .fontWeight(.bold)
                  .foregroundColor(.black).opacity(0.8)
            } else if title == "Result" {
               Text("Result")
                  .fontWeight(.heavy)
                  .offset(x: (isRoot ?  0 : -20))
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
