//
//  PushButton.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

public struct NavigationPushButton<Label, Destination>: View where Label: View, Destination: View & NavigationTitle {
   
   @EnvironmentObject public var viewModel: NavigationControllerViewModel
   
   public let label: () -> Label
   public let destination: Destination
   
   public init(destination: Destination, @ViewBuilder label: @escaping () -> Label) {
      self.label = label
      self.destination = destination
   }
   
   public var body: some View {
      label()
         .onTapGesture {
            viewModel.push(destination)
         }
   }
}
