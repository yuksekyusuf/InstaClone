//
//  MainTabView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/23/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                UploadPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                NotificationsView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: logOutButton)
            .accentColor(.black)
        }
    }
    
    var logOutButton: some View {
        Button (action: {
            AuthViewModel.shared.signout()
        }, label: {
            Text("Logout").foregroundColor(.black).font(.system(size: 14, weight: .semibold))
        })
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
