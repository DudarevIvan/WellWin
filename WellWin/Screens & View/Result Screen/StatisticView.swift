//
//  StatisticView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/15/21.
//

import SwiftUI

struct StatisticView: View {
   
   let statisticData: (Int, Int, Int, Int)
   
   private let columns = [
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 26), spacing: 16),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 26), spacing: 16)
   ]
   
   var body: some View {
      VStack {
         HStack {
            Text("Statistics")
               .font(.headline)
               .fontWeight(.bold)
            Spacer()
         }
         LazyVGrid(columns: columns) {
            ForEach(0..<Array<Int>.init(tuple: statisticData)!.count, id: \.self) { item in
               Text("\(statisticData.0)")
//                  .frame(maxWidth: .infinity)
//                  .padding(.vertical, 10)
//                  .padding(.horizontal, 10)
//                  .background(isSelected == index ? Color("blue") : Color.white)
//                  .foregroundColor(isSelected == index ? Color.white : Color.black)
//                  .cornerRadius(7.0)
//                  .shadow(color: .gray, radius: 2, x: 1, y: 1)
//                  .onTapGesture {
//                     isSelected = index
//                  }
            }
         }
//         line
//            .overlay (
//               HStack {
//                  VStack(alignment: .center) {
//                     VStack(alignment: .center) {
//                        Text("Total games")
//                           .foregroundColor(.gray)
//                        Text("\(statisticData.0)")
//                           .bold()
//                     }
//                     Spacer()
//                     VStack(alignment: .center) {
//                        Text("Bets")
//                           .foregroundColor(.gray)
//                        Text("\(statisticData.1)")
//                           .bold()
//                     }
//                  }
//                  .padding(.leading, 40)
//                  Spacer()
//                  VStack(alignment: .center) {
//                     VStack(alignment: .center) {
//                        Text("Win")
//                           .foregroundColor(.gray)
//                        Text("\(statisticData.2)")
//                           .bold()
//                     }
//                     Spacer()
//                     VStack(alignment: .center) {
//                        Text("Loss")
//                           .foregroundColor(.gray)
//                        Text("\(statisticData.3)")
//                           .bold()
//                     }
//                  }
//                  .padding(.trailing, 60)
//               }
//               .font(.subheadline)
//            )
//         Spacer()
      }
   }
   
   var line: some View {
      ZStack {
         HStack {
            Spacer()
            verticalLine
            Spacer()
         }
         VStack {
            horizontalLine
         }
      }
   }
   
   var verticalLine: some View {
      Rectangle()
         .foregroundColor(.gray).opacity(0.4)
         .frame(width: 1)
         .frame(height: 90)
   }
   
   var horizontalLine: some View {
      Rectangle()
         .foregroundColor(.gray).opacity(0.4)
         .frame(maxWidth: .infinity)
         .frame(height: 1)
   }
}

struct StatisticView_Previews: PreviewProvider {
   static var previews: some View {
      StatisticView(statisticData: (1233, 23, 12, 34))
   }
}
