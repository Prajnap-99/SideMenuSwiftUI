//
//  FavView.swift
//  SideMenu
//
//  Created by Prajna P on 26/04/23.
//

import SwiftUI

struct FavView: View {
    @AppStorage("favView") var isFavView: Bool?
//    @Binding var isFavView1: Bool
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            
            
            
            VStack (alignment: .leading)
            {
                Image(systemName: "arrow.left.circle")
                    .foregroundColor(.white)
                    .onTapGesture {
                        isFavView = false
                    }
                
                Spacer()
                Text("Hello, Fav!!!!")
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        FavView()
    }
}
