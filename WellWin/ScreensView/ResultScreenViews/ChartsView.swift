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
      //GeometryReader { geometry in
      ZStack {
         VStack(spacing: 0) {
            HStack(spacing: 40) {
               HStack {
                  RoundedRectangle(cornerRadius: 10)
                     .fill(Color("green"))
                     .frame(width: 6, height: 44)
                  VStack(alignment: .leading) {
                     Text("Profit")
                        .bold()
                        .foregroundColor(.black)
                        .font(.title2)
                     Text("100")
                        .bold()
                        .foregroundColor(Color("green2"))
                        .font(.title3)
                  }
               }
               HStack {
                  RoundedRectangle(cornerRadius: 10)
                     .fill(Color("pink"))
                     .frame(width: 6, height: 44)
                  VStack(alignment: .leading) {
                     Text("ROI")
                        .bold()
                        .foregroundColor(.black)
                        .font(.title2)
                     Text("10")
                        .bold()
                        .foregroundColor(Color("green2"))
                        .font(.title3)
                  }
               }
               Spacer()
            }
            .padding(.horizontal)
            //.padding(.top)
            ZStack {
               VStack(spacing: 46) {
                  ForEach(0..<5) { line in
                     Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                        .frame(height: 1)
                        .foregroundColor(Color("lightGray"))
                  }
               }
               LineChart(data: roiChartData, lineColor: Color("pink"))
               LineChart(data: mainChartData, lineColor: Color("green"))
            }
            //.padding(10)
            //.padding(.top, 80)
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
            //.padding(.bottom)
            .padding(.horizontal)
            .font(.caption)
         }
      }
   }
}

struct ChartsView_Previews: PreviewProvider {
   static var previews: some View {
      ChartsView()
   }
}
