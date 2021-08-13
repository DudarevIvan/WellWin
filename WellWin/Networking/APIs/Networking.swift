//
//  Networking.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation
import Combine
import SwiftUI

public class Networking {
   
   public static let shared: Networking = .init()
   
   private let urlPath = URLPath.shared
   
   public init() {}
   
   // Generic fetch
   private func fetch<T: Decodable>(_ url: URL) -> AnyPublisher<T, Error> {
      return URLSession.shared.dataTaskPublisher(for: url)
         .map { $0.data }
         .decode(type: T.self, decoder: JSONDecoder())
         .receive(on: RunLoop.main)
         .eraseToAnyPublisher()
   }
   
   
   // Fetch games(countries, leagues, seasons)
   public func fetchGames(endPoint: Games) -> AnyPublisher<GamesModel, Never> {
      guard let url = urlPath.gamesURL(for: endPoint) else {
         return Just(GamesModel()).eraseToAnyPublisher()
      }
      return fetch(url)
         .replaceError(with: GamesModel())
         .eraseToAnyPublisher()
   }
   
   // Fetch archive
   public func fetchArchive(for path: String) -> AnyPublisher<FootballArchiveModel, Never> {
      guard let url = urlPath.absoluteURL(for: path) else {
         return Just(FootballArchiveModel()).eraseToAnyPublisher()
      }
      return fetch(url)
         .replaceError(with: FootballArchiveModel())
         .eraseToAnyPublisher()
   }
   
   //TODO: Add error handling
}
