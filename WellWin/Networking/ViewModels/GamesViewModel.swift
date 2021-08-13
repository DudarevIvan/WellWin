//
//  GamesViewModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI
import Combine

public final class GamesViewModel: ObservableObject {
   
   // Networking
   private var networking = Networking.shared
   
   // Games
   @Published public var games: GamesModel = .init()
   @Published public var endpoint: String = .init("Football") // Football
   
   // Save Published
   private var cancellableSet: Set<AnyCancellable> = []
   deinit {
      for cancell in cancellableSet {
         cancell.cancel()
      }
   }
   
   public init() {
      $endpoint
         .flatMap { [self] (indexEndpoint) -> AnyPublisher<GamesModel, Never> in
            networking.fetchGames(endPoint: Games(choose: indexEndpoint))
         }
         .assign(to: \.games, on: self)
         .store(in: &self.cancellableSet)
   }
}
