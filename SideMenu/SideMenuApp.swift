//
//  SideMenuApp.swift
//  SideMenu
//
//  Created by Prajna P on 26/04/23.
//

import SwiftUI

@main
struct SideMenuApp: App {
    @AppStorage("favView") var isFavView: Bool = false
    @AppStorage("recentSearchView") var isRecentSearchView: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isFavView {
                FavView()
            } else if isRecentSearchView {
                RecentSearchView()
            }
            else {
                ContentView()
            }
        }
    }
}
