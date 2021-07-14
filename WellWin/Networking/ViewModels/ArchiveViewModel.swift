//
//  ArchiveViewModel.swift
//  WellWin
//
//  Created by Ivan Dudarev on 7/14/21.
//

import SwiftUI
import Combine

public final class ArchiveViewModel: ObservableObject {
   
   // Networking
   private var networking = Networking.shared
   
   // Archive
   @Published public var archive: Archive = .init()
   @Published public var pathArchive: String = .init()
   
   // Save Published
   private var cancellableSet: Set<AnyCancellable> = []
   deinit {
      for cancell in cancellableSet {
         cancell.cancel()
      }
   }
   
   public init() {
      $pathArchive
         .flatMap { (pathArchive) -> AnyPublisher<Archive, Never> in
            self.networking.fetchArchive(for: pathArchive)
         }
         .assign(to: \.archive, on: self)
         .store(in: &self.cancellableSet)
   }
}
