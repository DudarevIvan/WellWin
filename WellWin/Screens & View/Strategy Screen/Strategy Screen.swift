//
//  StrategyScreen.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI

struct StrategyScreen: View {
   
   @State var archiveViewModel: ArchiveViewModel = .shared
   @State var search: String = ""
   @State var watchResult: Bool = false
   @State var parseStrategy: Bool = true
   @ObservedObject var viewsFactory: ViewsFactory = .init()
   
   private let screenWidth = UIScreen.main.bounds.size.width
   
   var body: some View {
      ZStack {
         Color("gray")
            .ignoresSafeArea()
         VStack {
            SearchView(searchText: $search)
               .padding(.vertical, 10)
            Rectangle()
               .fill()
               .foregroundColor(.gray).opacity(0.3)
               .frame(height: 1)
               .frame(maxWidth: .infinity)
            if archiveViewModel.archive.at != nil {
               ScrollView(.vertical, showsIndicators: false) {
                  if !viewsFactory.views.isEmpty {
                     ForEach(0..<viewsFactory.views.count) { index in
                        viewsFactory.views[index]
                           .padding(.horizontal)
                           .padding(.top, 5)
                     }
                  }
                  Spacer()
               }
            }
            Spacer()
            // Result
            HStack {
               Spacer()
               Button(action: {
                  watchResult = StrategyParser.shared.result()
               }, label: {
                  ZStack {
                     RoundedRectangle(cornerRadius: 8).stroke()
                     Text("RESULT")
                        .bold()
                  }
                  .frame(width: screenWidth * 0.3, height: 30)
               })
               .foregroundColor(parseStrategy ? .white.opacity(0.6) : .white.opacity(0.1))
               .padding(.bottom, 30)
               .disabled(parseStrategy ? false : true)
            }
            .padding(.trailing)
         }
         NavigationLinkCustom(isActive: watchResult, destination: ResultScreen()) {
            Text("")
         }
      }
      .ignoresSafeArea(.all)
      .resignKeyboardOnDragGesture()
      .onAppear() {
         viewsFactory.getViews()
      }
   }
}

struct StrategyScreen_Previews: PreviewProvider {
   static var previews: some View {
      StrategyScreen()
   }
}
