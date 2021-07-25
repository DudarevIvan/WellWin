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
         Color.white
            .ignoresSafeArea()
         VStack(alignment: .leading) {
            ChartsView(mainChartData: resultViewModel.resultModel.mainChartData, roiChartData: resultViewModel.resultModel.roiChartData)
               //.padding(.top, 40)
            
            // Change to single view
            HStack {
               Text("Statistics")
               Spacer()
               Text("Overview")
               Spacer()
               Text("Overview")
            }
            .font(.title3)
            .padding()
            //.padding(.top, 40)
            
            // Change
            ForEach(0..<6) { index in
            StatisticsView()
            }
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
