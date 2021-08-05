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
   
   let containerViews: ContainerViews = .init()
   
   
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack {
            if archiveViewModel.archive.at != nil {
               ScrollView(.vertical, showsIndicators: false) {
                  ForEach(0..<containerViews.getViews().count) { view in
                     containerViews.getViews()[view]
                  }
                  //               MoneyManagementReview()
                  //                  .padding(.horizontal)
                  //                  //.padding(.bottom, 5)
                  //                  .padding(.top)
                  //               TeamsReview(isChange: false)
                  //                  .padding(.horizontal)
                  //                  .padding(.bottom, 5)
                  //               RefereesReview(isChange: false)
                  //                  .padding(.horizontal)
                  //                  .padding(.bottom, 5)
                  //               GoalsReview(isChange: false)
                  //                  .padding(.horizontal)
                  //                  .padding(.bottom, 5)
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
