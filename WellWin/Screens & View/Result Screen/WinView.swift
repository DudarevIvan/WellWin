//
//  WinView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/15/21.
//

import SwiftUI

struct WinView: View {
   
   
   let winData: Dictionary<String, Array<String>>
   
   private let columns = [
      GridItem(.fixed(UIScreen.main.bounds.size.width / 10), spacing: 0),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 4 - 10), spacing: 10),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 4 - 10), spacing: 10),
      GridItem(.fixed(UIScreen.main.bounds.size.width / 4 - 10), spacing: 10)
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
                     ForEach(winData.keys.sorted(by: { $0.count < $1.count }), id: \.self) { key in
                        VStack {
                           Text("\(key)")
                              .font(.headline)
                           if key == "#" {
                              ForEach(winData[key]!, id: \.self) { data in
                                 Text(data)
                                    .font(.footnote)
                                    .padding(.vertical, 5)
                              }
                           } else if key == "Date" {
                              ForEach(winData[key]!, id: \.self) { data in
                                 Text(data)
                                    .font(.footnote)
                                    .padding(.vertical, 5)
                              }
                           } else if key == "Teams" {
                              ForEach(winData[key]!, id: \.self) { data in
                                 Text(data)
                                    .font(.footnote)
                                    .lineLimit(nil)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.vertical, 5)
                              }
                           } else if key == "Result" {
                              ForEach(winData[key]!, id: \.self) { data in
                                 Text(data)
                                    .font(.footnote)
                                    .padding(.vertical, 5)
                              }
                           }
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
