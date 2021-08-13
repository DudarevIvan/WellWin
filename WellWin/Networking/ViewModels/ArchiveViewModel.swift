//
//  ArchiveViewModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI
import Combine

public final class ArchiveViewModel: ObservableObject {
   
   public static let shared: ArchiveViewModel = .init()
   
   // Archive
   @Published public var archive: FootballArchiveModel = .init()
   @Published public var pathArchive: String = .init()
   
   // Save Published
   private var cancellableSet: Set<AnyCancellable> = []
   deinit {
      for cancell in cancellableSet {
         cancell.cancel()
      }
   }
   
   private init() {
      $pathArchive
         .flatMap { (pathArchive) -> AnyPublisher<FootballArchiveModel, Never> in
            Networking.shared.fetchArchive(for: pathArchive)
         }
         .assign(to: \.archive, on: self)
         .store(in: &self.cancellableSet)
   }
   
   private enum ArchiveModelType: String, CaseIterable {
      
      case football = "Football"
      case basketball = "Basketball"
      case tennis = "Tennis"
      case volleyball = "Volleyball"
      case hockey = "Hockey"
      
      public init(choose: String = "Football") {
         switch choose {
            case "Football":
               self = .football
            case "Basketball":
               self = .basketball
            case "Tennis":
               self = .tennis
            case "Volleyball":
               self = .volleyball
            case "Hockey":
               self = .hockey
            default:
               self = .football
         }
      }
   }
}
