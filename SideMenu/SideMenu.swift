//
//  SideMenu.swift
//  SideMenu
//
//  Created by Prajna P on 26/04/23.
//

import SwiftUI

struct SideMenu: View {
    @AppStorage("favView") var isFavView: Bool?
    @AppStorage("recentSearchView") var isRecentSearchView: Bool?
    @Binding var isSidebarVisible: Bool
    var sideBarWidth = UIScreen.main.bounds.size.width * 0.6
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(.black.opacity(0.6))
            .opacity(isSidebarVisible ? 1 : 0)
            .animation(.easeInOut.delay(0.2), value: isSidebarVisible)
            .onTapGesture {
                isSidebarVisible.toggle()
            }
            content
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var content: some View {
        HStack(alignment: .top) {
            ZStack(alignment: .top) {
                Color(.white)
                VStack(alignment: .leading, spacing: 20) {
                    Text("Home")
                        .onTapGesture {
                            isSidebarVisible = false
                        }

//                    NavigationLink {
//                        FavView()
//                    } label: {
//                        Text("Favourite")
//                            .foregroundColor(.gray)
//                            .onTapGesture {
//                                isFavView = true
//                            }
//                    }
                    
//                    NavigationLink(destination: FavView()) {
//                        Text("Favourite")
//                    }
//                    Text("Favourite")
//                        .foregroundColor(.gray)
//                        .onTapGesture {
//                            isFavView = true
//                        }
                    Text("Favourite")
                        .foregroundColor(.gray)
                        .onTapGesture {
                            isFavView = true
                        }

                    Text("Recent Search")
                        .foregroundColor(.gray)
                        .onTapGesture {
                            isRecentSearchView = true
                        }
                }
                .padding(.top, 80)
                .padding(.horizontal, 40)
            }
            .frame(width: sideBarWidth)
            .offset(x: isSidebarVisible ? 0 : -sideBarWidth)
            .animation(.default, value: isSidebarVisible)
            
            Spacer()
        }
    }
}


//struct SideMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenu(isSidebarVisible: isSidebarVisible)
//    }
//}
