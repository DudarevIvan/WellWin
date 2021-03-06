//
//  NavigationControllerView.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

public struct NavigationControllerView<Content: View>: View {
   
   @ObservedObject var viewModel: NavigationControllerViewModel
   
   private let content: Content
   private let transitions: (push: AnyTransition, pop: AnyTransition)
   
   public init(@ViewBuilder _ content: @escaping () -> Content, _ transition: NavigationTransition, easing: Animation = .easeInOut(duration: 0.33)) {
      self.content = content()
      self.viewModel = .init(easing: easing)
      
      switch transition {
         case .custom(let tr):
            self.transitions = (tr, tr)
         default:
            self.transitions = (.identity, .identity)
      }
   }
   
   public var body: some View {
      let isRootView = viewModel.currentScreen == nil
      return ZStack {
         ZStack {
            Color("gray")
            VStack(spacing: 0) {
               NavigationBar(isRoot: isRootView)
                  .padding(.horizontal, 15)
                  .padding(.bottom)
                  .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                  .environmentObject(viewModel)
                  .background(Color("gray"))
               if isRootView {
                  content
                     .transition(viewModel.navigationType == .push ? transitions.push : transitions.pop)
                     .environmentObject(viewModel)
               } else {
                  viewModel.currentScreen!.nextScreen
                     .transition(viewModel.navigationType == .push ? transitions.push : transitions.pop)
                     .environmentObject(viewModel)
               }
            }
         }
      }
      .ignoresSafeArea(.all)
   }
}
