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
         VStack(alignment: .center) {
            ChartsView(mainChartData: resultViewModel.data.mainChartData, roiChartData: resultViewModel.data.roiChartData)
            
            // Change to single view
            HStack {
               TabButton(isSelected: $selectedTab, animation: animation, text: "Statistics")
               TabButton(isSelected: $selectedTab, animation: animation, text: "Win")
                  .offset(x: -16)
                  .frame(maxWidth: .infinity)
               TabButton(isSelected: $selectedTab, animation: animation, text: "Loss")
            }
            .font(.subheadline.bold())
            .frame(height: 20, alignment: .bottom)
            .padding()
            // Change
            ScrollView(.vertical, showsIndicators: false) {
               ForEach(0..<6) { index in
                  StatisticsView()
               }
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
