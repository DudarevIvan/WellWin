//
//  LineChart.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/21/21.
//

import SwiftUI

struct LineChart: View {
   
   var data: Array<UnitPoint> = .init()
   
   @State var on = true
   
   let xStepValue: CGFloat = 1
   let yStepValue: CGFloat = 3
   
   private var maxYValue: CGFloat {
      abs(data.max { abs($0.y) < abs($1.y) }?.y ?? 0)
   }
   
   private var maxXValue: CGFloat {
      abs(data.max { abs($0.x) < abs($1.x) }?.x ?? 0)
   }
   
   private var minXValue: CGFloat {
      abs(data.min { abs($0.x) > abs($1.x) }?.x ?? 0)
   }
   
//   private var xStepsCount: Int {
//      Int(self.maxXValue / self.xStepValue)
//   }
//
//   private var yStepsCount: Int {
//      Int(self.maxYValue / self.yStepValue)
//   }
   
   var body: some View {
      ScrollView(.vertical) {
         chartBody
            .padding(.top)
            .frame(maxWidth: .infinity, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .center)
         Rectangle()
            .fill()
            .foregroundColor(.gray)
            .frame(maxWidth: .infinity, minHeight: 1, idealHeight: 1, maxHeight: 1)
         HStack {
            Text("0")
            Spacer()
            Text(String(Int(data.last!.x)))
         }
         .foregroundColor(.gray)
         .padding(.horizontal, 4)
         Spacer()
      }.onAppear() {
         withAnimation(.easeInOut(duration: 1)) {
            self.on.toggle()
         }
      }
   }
   
   private var chartBody: some View {
      GeometryReader { geometry in
         Path { path in
            path.move(to: .init(x: 0, y: geometry.size.height / 2))
            var previousPoint = UnitPoint(x: 0, y: geometry.size.height / 2)
            
            self.data.forEach { point in
               let x = (point.x / maxXValue) * geometry.size.width
               let y = (geometry.size.height / 2) - (point.y / self.maxYValue) * (geometry.size.height / 2)
               
               let deltaX = x - previousPoint.x
               let curveXOffset = deltaX * 0.4
               
               path.addCurve(to: .init(x: x, y: y),
                             control1: .init(x: previousPoint.x + curveXOffset, y: previousPoint.y),
                             control2: .init(x: x - curveXOffset, y: y ))
               
               previousPoint = .init(x: x, y: y)
            }
         }
         .trim(to: on ? 0 : 1)
         .stroke(
            Color("green"),
            style: StrokeStyle(lineWidth: 2)
         )
      }
   }
}


struct LineChart_Previews: PreviewProvider {
   
   static var previews: some View {
      LineChart(data: [UnitPoint(x: 2, y: 4),
                       UnitPoint(x: 5, y: 8),
                       UnitPoint(x: 6, y: -4),
                       UnitPoint(x: 9, y: -8),
                       UnitPoint(x: 11, y: -4),
                       UnitPoint(x: 19, y: 28),
      ])
   }
}
