//
//  StrategyViewsDescription.swift
//  WellWin
//
//  Created by Ivan Dudarev on 8/3/21.
//

import SwiftUI

class ViewsFactory: ObservableObject {
   
   private lazy var archiveMirror = Mirror(reflecting: ArchiveViewModel.shared.archive)
   
   @Published var views: Array<AnyView> = .init()
   
   func getViews() {
      let description: Array<ViewsDescription> = description()
      var buffer: Array<AnyView> = .init()
      for (label, value) in archiveMirror.children {
         if Mirror(reflecting: value).children.count != 0 {
            for item in description {
               if item.id == label! {
                  let view = SomeView(id: item.id, title: item.title, description: item.description, view: item.view)
                  buffer.append(AnyView(view))
               }
            }
         }
      }
      self.views = buffer
   }
   
   func description() -> [ViewsDescription] {
      let url = Bundle.main.url(forResource: "Description Views", withExtension: "json")!
      let data = try! Data(contentsOf: url)
      let decoder = JSONDecoder()
      let description = try? decoder.decode([ViewsDescription].self, from: data)
      return description!
   }
   
   
}


struct ViewsDescription: Codable, Identifiable, Hashable {
   var id: String
   var title: String
   var description: String
   var view: String
}

enum Factory: String, CaseIterable {
   
   case MoneyManagementView
   case TeamsView
   case RefereesView
   case GoalsView
   
   func matchingViews() -> AnyView {
      switch self {
         case .MoneyManagementView:
            return AnyView(MoneyManagement())
         case .TeamsView:
            return AnyView(Teams())
         case .RefereesView:
            return AnyView(Referees())
         case .GoalsView:
            return AnyView(Goals())
      }
   }
}

struct SomeView: View {
   
   let id: String
   let title: String
   let description: String
   let view: String
   
   @State var isChange: Bool = false
   @State var activeLink: Bool = false
   
   var body: some View {
      ZStack {
         RoundedRectangle(cornerRadius: 4).stroke()
            .foregroundColor(.gray)
      VStack(alignment: .leading) {
         HStack {
            Text(title)
               .font(.headline)
            Spacer()
            Circle()
               .fill(isChange ? Color.green : Color.gray.opacity(0.4))
               .frame(width: 8)
         }
         Text(description)
            .font(.footnote)
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
      }
         .padding(10)
      NavigationLinkCustom(isActive: activeLink, destination: Factory.init(rawValue: view)!.matchingViews()) { Text("") }
      }
      .frame(maxWidth: .infinity)
      .contentShape(Rectangle())
      .onTapGesture {
         activeLink = true
      }
   }
}
