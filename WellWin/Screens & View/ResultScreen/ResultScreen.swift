//
//  ResultScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct ResultScreen: View {
   
   @ObservedObject var resultViewModel: ResultViewModel = .init()
   @State private var selectedTab: String = "Statistics"
   // TabButton animation
   @Namespace var animation
   
   var body: some View {
      ZStack {
         Color.white
            .ignoresSafeArea()
         VStack(alignment: .leading) {
            ChartsView(mainChartData: resultViewModel.resultModel.mainChartData, roiChartData: resultViewModel.resultModel.roiChartData)
            //.padding(.top, 40)
            
            // Change to single view
            HStack {
               TabButton(isSelected: $selectedTab, animation: animation, text: "Statistics")
               TabButton(isSelected: $selectedTab, animation: animation, text: "Win")
               TabButton(isSelected: $selectedTab, animation: animation, text: "Loss")
            }
            .font(.subheadline.bold())
            .frame(height: 50, alignment: .bottom)
            .padding()
            
            // Change
            ForEach(0..<6) { index in
               StatisticsView()
            }
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
