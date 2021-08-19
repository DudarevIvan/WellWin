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
   @State private var preview: Int = 0
   private let previewItems: Array<String> = ["Statistics", "Win", "Loss"]
   
   var body: some View {
      ZStack {
         Color("gray")
            .ignoresSafeArea()
         VStack(alignment: .center) {
            HStack {
               VStack(alignment: .trailing) {
                  Text(String(format: "%.2f", resultViewModel.bankroll))
                     .font(.title)
                     .fontWeight(.heavy)
                  
                  Text(String(format: "%.2f", resultViewModel.bankrollChange))
                     .font(.footnote)
                     .foregroundColor(Color.white)
                     .background(Color("green"))
                     .clipShape(RoundedRectangle(cornerRadius: 4))
               }
               Spacer()
               ZStack {
                  RoundedRectangle(cornerRadius: 6).stroke()
                  Text("ROI \(String(format: "%.1f", resultViewModel.roi))%")
                     .bold()
               }
               .frame(width: 110, height: 24)
               .foregroundColor(.yellow).opacity(0.8)
               .offset(y: -9)
            }
            .padding()
            ChartsView(mainChartData: resultViewModel.chartData)
            Picker(selection: $preview, label: Text("")) {
               Text("Statistics")
                  .tag(0)
               Text("Win")
                  .tag(1)
               Text("Loss")
                  .tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            // Change
            switch preview {
               case 0:
                  StatisticView(statisticData: resultViewModel.statisticData)
                     .padding(.horizontal)
               case 1:
                  WinView(winData: resultViewModel.statisticData)
                     .padding(.horizontal)
               case 2:
                  LossView()
                     .padding(.horizontal)
               default:
                  EmptyView()
                  
            }
            Spacer()
         }
         .padding(.top)
      }
      .ignoresSafeArea()
   }
}

struct ResultScreen_Previews: PreviewProvider {
   static var previews: some View {
      ResultScreen()
   }
}
