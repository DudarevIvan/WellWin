//
//  StrategyScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct StrategyScreen: View, NavigationTitle {
   
   @State private(set) var title: String = "Strategy"
   
   @State var archiveViewModel: ArchiveViewModel = .shared
   
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
            if archiveViewModel.archive.at != nil {
               Text(archiveViewModel.archive.at!.first!)
            }
            NavigationLink(destination: ResultScreen()) {
               Text("Go to result")
                  .foregroundColor(Color("green"))
                  .padding()
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
