//
//  PushButton.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/22/21.
//

import SwiftUI

public struct NavigationLink<Label, Destination>: View where Label: View, Destination: View & NavigationTitle {
   
   @EnvironmentObject public var viewModel: NavigationControllerViewModel
   
   public let label: () -> Label
   public let destination: Destination
   public let isActive: Bool
   
   public init(isActive: Bool = false, destination: Destination, @ViewBuilder label: @escaping () -> Label) {
      self.isActive = isActive
      self.label = label
      self.destination = destination
   }
   
   //@ViewBuilder
   public var body: some View {
      if isActive { viewModel.push(destination) }
      
      return label()
         .onTapGesture {
            viewModel.push(destination)
         }
   }
}

