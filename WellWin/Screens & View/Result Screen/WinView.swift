//
//  WinView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/15/21.
//

import SwiftUI

struct WinView: View {
   
   
   let winData: Dictionary<String, Int>
   
   private let columns = [
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 26), spacing: 16),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 2 - 26), spacing: 16)
   ]
   
   var body: some View {
      VStack {
         HStack {
            Text("Win")
               .font(.headline)
               .fontWeight(.bold)
            Spacer()
         }
         ScrollView(.vertical, showsIndicators: false) {
            ZStack {
               line
               VStack(spacing: 20) {
                  LazyVGrid(columns: columns, spacing: 20) {
                     ForEach(winData.keys.sorted(by: { $0.count > $1.count }), id: \.self) { key in
                        VStack {
                           Text("\(key)")
                              .font(.headline)
                           Text("\(winData[key]!)")
                              .bold()
                              .font(.title3)
                              .foregroundColor(key == "Loss" ? .red.opacity(0.9) : (key == "Win" ? Color("green") : .primary))
                        }
                     }
                  }
               }
            }
         }
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
