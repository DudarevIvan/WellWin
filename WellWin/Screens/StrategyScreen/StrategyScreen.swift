//
//  StrategyScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct StrategyScreen: View, NavigationTitle {
   
   @State private(set) var title: String = "Strategy"
   
   //@ObservedObject var archiveViewModel: ArchiveViewModel = .init()
   
//   private let pathArchive: String
//
//   init(pathArchive: String) {
//      self.pathArchive = pathArchive
//   }
   
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack {
//            NavigationLink(destination: TeamsScreen()) {
//               Text("Teams")
//                  .foregroundColor(Color("green"))
//                  .padding()
//            }
//            NavigationLink(destination: ResultScreen()) {
//               Text("Go to result")
//                  .foregroundColor(Color("green"))
//                  .padding()
//            }
            Spacer()
         }
      }
      .onAppear() {
         //self.archiveViewModel.pathArchive = pathArchive
      }
   }
}

struct StrategyScreen_Previews: PreviewProvider {
   static var previews: some View {
      StrategyScreen()
   }
}
