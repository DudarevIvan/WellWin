//
//  TabButton.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/31/21.
//

import SwiftUI

struct TabButton: View {
   
   @Binding var isSelected: String
   var animation: Namespace.ID
   let text: String
   
   var body: some View {
      Button(action: {
         withAnimation(.linear) {
            isSelected = text
         }
      }, label: {
         GeometryReader { geometry in
            VStack(spacing: 0) {
               Text(text)
                  .foregroundColor(.black)
               ZStack {
                  if isSelected == text {
                     Rectangle()
                        .fill(Color.black)
                        .matchedGeometryEffect(id: "tabButton", in: animation)
                  } else {
                     Rectangle()
                        .fill(Color.clear)
                  }
               }
               .frame(height: 1)
            }
         }
      })
   }
}
