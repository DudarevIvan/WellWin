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
         withAnimation(.easeInOut) {
            isSelected = text
         }
      }, label: {
         VStack(spacing: 0) {
            Text(text)
               .foregroundColor(.black.opacity(0.7))
            if isSelected == text {
               Rectangle()
                  .fill(Color.black)
                  .frame(height: 1)
                  .matchedGeometryEffect(id: "tabButton", in: animation)
            }
         }
         .frame(maxWidth: .infinity)
         .fixedSize()
      })
   }
}
