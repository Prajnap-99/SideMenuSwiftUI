//
//  RecentSearchView.swift
//  SideMenu
//
//  Created by Prajna P on 26/04/23.
//

import SwiftUI

struct RecentSearchView: View {
    @AppStorage("recentSearchView") var isRecentSearchView: Bool?
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack (alignment: .leading)
            {
                Image(systemName: "arrow.left.circle")
                    .foregroundColor(.white)
                    .onTapGesture {
                        isRecentSearchView = false
                    }
                
                Spacer()
                Text("Hello, Recent Search!!!!")
                    .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

struct RecentSearchView_Previews: PreviewProvider {
    static var previews: some View {
        RecentSearchView()
    }
}
