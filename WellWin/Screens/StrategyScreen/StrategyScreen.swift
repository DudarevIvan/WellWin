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
   
   private let viewsFactory: ViewsFactory
   private let views: Array<AnyView>
   
   init() {
      let factory: ViewsFactory = .init()
      self.viewsFactory = factory
      self.views = factory.getViews()
   }
   
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack {
            if archiveViewModel.archive.at != nil {
               ScrollView(.vertical, showsIndicators: false) {
                  ForEach(0..<views.count) { index in      //!!!!!!!!!!!!!!!!!!! повтор 4 раза, дальше больше
                     views[index]
                        .padding(.horizontal)
                        .padding(.bottom, 5)
                  }
                  Spacer()
               }
            }
            Spacer()
            NavigationLinkCustom(destination: ResultScreen()) {
               Text("Go to result")
                  .foregroundColor(Color("green"))
                  .padding()
            }
         }
      }
   }
}

struct StrategyScreen_Previews: PreviewProvider {
   static var previews: some View {
      StrategyScreen()
   }
}
