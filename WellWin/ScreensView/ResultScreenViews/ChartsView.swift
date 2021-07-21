//
//  ChartsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/21/21.
//

import SwiftUI

struct ChartsView: View {
   var body: some View {
      GeometryReader { geometry in
         ZStack {
            RoundedRectangle(cornerRadius: 20.0)
               .foregroundColor(Color("gray"))
            VStack {
               HStack(spacing: 40) {
                  HStack {
                     RoundedRectangle(cornerRadius: 10)
                        .fill(Color("green"))
                        .frame(width: 6, height: 44)
                     VStack(alignment: .leading) {
                        Text("Profit")
                           .bold()
                           .foregroundColor(.white)
                           .font(.title2)
                        Text("100")
                           .foregroundColor(.green)
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
                           .foregroundColor(.white)
                           .font(.title2)
                        Text("10")
                           .foregroundColor(.green)
                           .font(.title3)
                     }
                  }
                  Spacer()
               }
               .padding(.horizontal)
               .padding(.top)
               ZStack {
                  VStack(spacing: 46) {
                     ForEach(0..<5) { line in
                        Rectangle()
                           .frame( maxWidth: .infinity, minHeight: 1, idealHeight: 2, maxHeight: 1)
                           .foregroundColor(Color("lightGray"))
                     }
                  }
                  LineChart(data: [UnitPoint(x: 1, y: 1),
                                   UnitPoint(x: 2, y: 3),
                                   UnitPoint(x: 3, y: -1),
                                   UnitPoint(x: 4, y: -3),
                                   UnitPoint(x: 5, y: -1),
                                   UnitPoint(x: 6, y: -3),
                  ], lineColor: Color("pink"))
                  LineChart(data: [UnitPoint(x: 1, y: 3),
                                   UnitPoint(x: 2, y: 8),
                                   UnitPoint(x: 3, y: -4),
                                   UnitPoint(x: 4, y: -8),
                                   UnitPoint(x: 5, y: -4),
                                   UnitPoint(x: 6, y: -55),
                  ], lineColor: Color("green"))
               }
               .padding(10)
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
               .padding(.bottom)
               .padding(.horizontal)
               .font(.caption)
            }
         }
         .frame(height: geometry.size.height * 0.40)
      }
   }
}

struct ChartsView_Previews: PreviewProvider {
   static var previews: some View {
      ChartsView()
   }
}
