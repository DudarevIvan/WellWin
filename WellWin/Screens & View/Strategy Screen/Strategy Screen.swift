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
   
   @ObservedObject var viewsFactory: ViewsFactory = .init()
   
   private let screenWidth = UIScreen.main.bounds.size.width
   
   var body: some View {
      ZStack {
         Color("gray")
            .ignoresSafeArea()
         VStack {
            HStack {
               Text("Strategy")
                  .fontWeight(.bold)
                  .font(.title)
               Spacer()
            }
            .foregroundColor(.white)
            .padding(.horizontal)
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
            Button(action: {
               
            }, label: {
               ZStack {
                  RoundedRectangle(cornerRadius: 10).stroke()
                  Text("RESULT")
                     .bold()
               }
               .frame(width: screenWidth * 0.4, height: 30)
            })
            .foregroundColor(.white.opacity(0.6))
            .padding(.bottom, 30)
            //.disabled(seasonID == nil ? true : false)
            //            NavigationLinkCustom(destination: ResultScreen()) {
            //               Text("Result")
            //                  .foregroundColor(Color("green"))
            //                  .padding()
            //            }
         }
      }
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
