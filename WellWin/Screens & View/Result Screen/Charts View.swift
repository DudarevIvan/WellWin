//
//  ChartsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/21/21.
//

import SwiftUI

struct ChartsView: View {
   
   var mainChartData: Array<UnitPoint> = .init()
   
   var body: some View {
      ZStack {
         VStack(spacing: 0) {
            ZStack {
               VStack(spacing: 40) {
                  ForEach(0..<5) { line in
                     Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                        .frame(height: 1)
                        .foregroundColor(Color("lightGray"))
                  }
               }
               LineChart(data: mainChartData, lineColor: Color("green"))
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

struct ChartsView_Previews: PreviewProvider {
   static var previews: some View {
      ResultScreen()
   }
}
