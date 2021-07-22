//
//  ResultScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct ResultScreen: View, NavigationTitle {
   
   @ObservedObject var resultViewModel: ResultViewModel = .init()
   @State private(set) var title: String = "Result"
   
   var body: some View {
      ZStack {
         Color("black")
            .ignoresSafeArea()
         VStack {
            ChartsView(mainChartData: resultViewModel.resultModel.mainChartData, roiChartData: resultViewModel.resultModel.roiChartData)
               .padding(.vertical, 40)
            Spacer()
         }
         .padding(.top)
      }
      .navigationBarBackButtonHidden(true)
   }
}

struct ResultScreen_Previews: PreviewProvider {
   static var previews: some View {
      ResultScreen()
   }
}
