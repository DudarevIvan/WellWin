//
//  SearchView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/11/21.
//

import SwiftUI

struct SearchView: View {

   @Binding var searchText: String
   @State private var showCancelButton: Bool = false
   
   var body: some View {
      VStack {
         HStack {
            HStack {
               Image(systemName: "magnifyingglass")
               
               TextField("", text: $searchText, onEditingChanged: { isEditing in
                  self.showCancelButton = true
               }, onCommit: {
                  print("onCommit")
               })
               .placeHolder(Text("search"), show: searchText.isEmpty)
               .foregroundColor(Color.white.opacity(0.8))
               
               Button(action: {
                  self.searchText = ""
               }) {
                  Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
               }
            }
            .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
            .foregroundColor(Color.white)
            .background(Color("lightBlack").opacity(0.4))
            .cornerRadius(10.0)
            
            if showCancelButton  {
               Button("Cancel") {
                  UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                  self.searchText = ""
                  self.showCancelButton = false
               }
               .foregroundColor(Color.white)
            }
         }
         .padding(.horizontal)
      }
      .background(Color("gray"))
   }
}

extension UIApplication {
   func endEditing(_ force: Bool) {
      self.windows
         .filter{$0.isKeyWindow}
         .first?
         .endEditing(force)
   }
}

struct ResignKeyboardOnDragGesture: ViewModifier {
   var gesture = DragGesture().onChanged{_ in
      UIApplication.shared.endEditing(true)
   }
   func body(content: Content) -> some View {
      content.gesture(gesture)
   }
}

extension View {
   func resignKeyboardOnDragGesture() -> some View {
      return modifier(ResignKeyboardOnDragGesture())
   }
}


struct PlaceHolder<T: View>: ViewModifier {
   var placeHolder: T
   var show: Bool
   func body(content: Content) -> some View {
      ZStack(alignment: .leading) {
         if show { placeHolder }
         content
      }
   }
}

extension View {
   func placeHolder<T:View>(_ holder: T, show: Bool) -> some View {
      self.modifier(PlaceHolder(placeHolder:holder, show: show))
   }
}
