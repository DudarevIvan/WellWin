//
//  URLPath.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import Foundation

public class URLPath {
   
   public static let shared = URLPath()
   
   // Flags url(optional, not used now)
   public let flagsURL: String = "https://www/wellwin-app.com/data/v1/shared/flags/flags.json"
   
   // Base url
   private var baseURL: URL {
      URL(string: "https://www.wellwin-app.com/data/v1")!
   }
   
   // Game url
   public func gamesURL(for games: Games = Games()) -> URL? {
      let url: String = games.path()
      return absoluteURL(for: url)
   }
   
   // Absolute URL
   public func absoluteURL(for path: String) -> URL? {
      let url = baseURL.appendingPathComponent(path)
      let components = URLComponents(url: url, resolvingAgainstBaseURL: true)
      guard let urlComponents = components else {
         return nil
      }
      return urlComponents.url
   }
}


// Path to games (EndPoints), and choose games
public enum Games: String, CaseIterable {
   
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
   
   func path() -> String {
      switch self {
         case .football:
            return "/football/football.json"
         case .basketball:
            return "/basketball/basketball.json"
         case .tennis:
            return "/tennis/tennis.json"
         case .volleyball:
            return "/volleyball/volleyball.json"
         case .hockey:
            return "/hockey/hockey.json"
      }
   }
}
