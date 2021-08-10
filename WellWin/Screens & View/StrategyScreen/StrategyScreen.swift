//
//  StrategyScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct StrategyScreen: View {
      
   @State var archiveViewModel: ArchiveViewModel = .shared
   
   @ObservedObject var viewsFactory: ViewsFactory = .init()
   //private let views: Array<AnyView> = .init()
   
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack {
            if archiveViewModel.archive.at != nil {
               ScrollView(.vertical, showsIndicators: false) {
                  if !viewsFactory.views.isEmpty {
                  ForEach(0..<viewsFactory.views.count) { index in
                     viewsFactory.views[index]
                        .padding(.horizontal)
                        .padding(.bottom, 5)
                  }
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
      .onAppear() {
         viewsFactory.getViews()
      }
   }
}

struct StrategyScreen_Previews: PreviewProvider {
   static var previews: some View {
      StrategyScreen()
   }
}
