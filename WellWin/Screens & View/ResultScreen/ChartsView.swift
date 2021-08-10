//
//  ChartsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/21/21.
//

import SwiftUI

struct ChartsView: View {
   
   var mainChartData: Array<UnitPoint> = .init()
   var roiChartData: Array<UnitPoint> = .init()
   
   var body: some View {
      ZStack {
         VStack(spacing: 0) {
            HStack(spacing: 40) {
               Spacer()
               DataLabel(label: "PROFIT", data: "20")
                  .foregroundColor(Color("blue"))
               DataLabel(label: "ROI", data: "20")
                  .foregroundColor(Color("green2"))
            }
            .padding(.horizontal)
            ZStack {
               VStack(spacing: 40) {
                  ForEach(0..<5) { line in
                     Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                        .frame(height: 1)
                        .foregroundColor(Color("lightGray"))
                  }
               }
               LineChart(data: roiChartData, lineColor: .orange)
               LineChart(data: mainChartData, lineColor: .blue)
            }
            .padding([.leading, .top, .leading])
            .padding(.bottom, 4)
            .fixedSize(horizontal: false, vertical: true)
            HStack {
               Text("0.0")
               Spacer()
               Text("0.25")
               Spacer()
               Text("0.5")
               Spacer()
               Text("0.75")
               Spacer()
               Text("1.0")
            }
            .foregroundColor(Color("lightGray"))
            .padding(.horizontal)
            .font(.caption)
         }
      }
   }
}

struct DataLabel: View {
   
   let label: String
   let data: String
   
   var body: some View {
      HStack {
         RoundedRectangle(cornerRadius: 10)
            .fill()
            .frame(width: 5, height: 40)
         VStack(alignment: .leading) {
            Text(label)
               .font(.headline)
            Text(data)
               .foregroundColor(.black.opacity(0.7))
               .bold()
               .font(.title2)
         }
      }
   }
}

struct ChartsView_Previews: PreviewProvider {
   static var previews: some View {
      ResultScreen()
   }
}
