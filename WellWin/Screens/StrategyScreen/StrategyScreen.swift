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
         ScrollView(.vertical, showsIndicators: false) {
            //VStack {
            MoneyManagementReview()
               .padding(.horizontal)
               //.padding(.bottom, 5)
               .padding(.top)
            TeamsReview(isChange: false)
               .padding(.horizontal)
               .padding(.bottom, 5)
            TeamsReview(isChange: false)
               .padding(.horizontal)
               .padding(.bottom, 5)
            TeamsReview(isChange: false)
               .padding(.horizontal)
               .padding(.bottom, 5)
            Spacer()
            //}
         }
      }
      NavigationLinkCustom(destination: ResultScreen()) {
         Text("Go to result")
            .foregroundColor(Color("green"))
            .padding()
      }
   }
}

struct StrategyScreen_Previews: PreviewProvider {
   static var previews: some View {
      StrategyScreen()
   }
}
