//
//  LineChart.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/21/21.
//

import SwiftUI

struct LineChart: View {
   
   @State private var on = true
   
   init(data: Array<UnitPoint>, lineColor: Color = .blue) {
      self.data = data
      self.lineColor = lineColor
   }
   
   private let data: Array<UnitPoint>
   
   private let lineColor: Color
   
   private var maxYValue: CGFloat {
      abs(data.max { abs($0.y) < abs($1.y) }?.y ?? 0)
   }
   
   private var maxXValue: CGFloat {
      abs(data.max { abs($0.x) < abs($1.x) }?.x ?? 0)
   }
   
   var body: some View {
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
            lineColor,
            style: StrokeStyle(lineWidth: 2)
         )
      }
      .onAppear() {
         withAnimation(.easeInOut(duration: 1)) {
            self.on.toggle()
         }
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
      ], lineColor: Color("green"))
   }
}

