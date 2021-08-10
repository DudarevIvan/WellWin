//
//  StatisticsView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/24/21.
//

import SwiftUI

struct StatisticsView: View {
   var body: some View {
      VStack {
         HStack {
            Text("Total bets")
               .font(.footnote)
            Spacer()
            Text("123")
               .font(.footnote)
               .foregroundColor(.yellow)
         }
         .padding(.bottom, 1)
         Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 1)
            .padding(.top, 0)
      }
      .padding(.horizontal)
   }
}

struct StatisticsView_Previews: PreviewProvider {
   static var previews: some View {
      StatisticsView()
   }
}
