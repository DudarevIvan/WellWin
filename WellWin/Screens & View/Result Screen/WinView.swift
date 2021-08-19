//
//  WinView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/15/21.
//

import SwiftUI

struct WinView: View {
   
   let data: (Int, Int, Int, Int)
   
   var body: some View {
      VStack {
         HStack {
            Text("Win")
               .font(.headline)
               .fontWeight(.bold)
            Spacer()
         }
         ScrollView(.vertical, showsIndicators: false) {
            line
               .overlay (
                  HStack {
                     VStack(alignment: .center) {
                        VStack(alignment: .center) {
                           Text("Total games")
                              .foregroundColor(.gray)
                           Text("\(data.0)")
                              .bold()
                        }
                        Spacer()
                        VStack(alignment: .center) {
                           Text("Bets")
                              .foregroundColor(.gray)
                           Text("\(data.1)")
                              .bold()
                        }
                     }
                     .padding(.leading, 40)
                     Spacer()
                     VStack(alignment: .center) {
                        VStack(alignment: .center) {
                           Text("Win")
                              .foregroundColor(.gray)
                           Text("\(data.2)")
                              .bold()
                        }
                        Spacer()
                        VStack(alignment: .center) {
                           Text("Loss")
                              .foregroundColor(.gray)
                           Text("\(data.3)")
                              .bold()
                        }
                     }
                     .padding(.trailing, 60)
                  }
                  .font(.subheadline)
               )
         }
         .frame(maxHeight: .infinity)
      }
   }
   
   var line: some View {
      ZStack {
         HStack {
            Spacer()
            verticalLine
            Spacer()
            verticalLine
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
         .frame(maxHeight: .infinity)
   }
   
   var horizontalLine: some View {
      Rectangle()
         .foregroundColor(.gray).opacity(0.4)
         .frame(maxWidth: .infinity)
         .frame(height: 1)
   }
}
