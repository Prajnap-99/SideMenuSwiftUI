//
//  ContentView.swift
//  SideMenu
//
//  Created by Prajna P on 26/04/23.
//

import SwiftUI

//enum ViewTypes {
//    case fav
//    case recentSearch
//}

//class SidebarNavigationManager : ObservableObject {
//    @Published var viewType : ViewTypes = .fav
//}

struct ContentView: View {
    
//    @StateObject var navigationManager = SidebarNavigationManager()
    
    @State private var isFavView1 = false
    @State private var isRecentSearchView1 = false
    @State private var isSideBarOpened = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(.brown)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Image("icon_menu_white")
                    .frame(alignment: .topLeading)
                    .padding(.leading, 20)
                    .padding(.bottom, 250)
                    .onTapGesture {
                        isSideBarOpened = true
                    }
                
                VStack {
                    NavigationView {
                        NavigationLink {
                            SearchView()
                        } label: {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                        }
                    }
                    Text("Hello, world!")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            }
            SideMenu(isSidebarVisible: $isSideBarOpened)
            
//            VStack {
//                switch navigationManager.viewType {
//                case .fav:
//                    FavView()
//                case .recentSearch:
//                    RecentSearchView()
//                }
//            }.frame(maxWidth: .infinity)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
