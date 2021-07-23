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
         VStack(alignment: .leading) {
            ChartsView(mainChartData: resultViewModel.resultModel.mainChartData, roiChartData: resultViewModel.resultModel.roiChartData)
               //.padding(.top, 40)
            Text("In detail")
               .font(.largeTitle)
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
