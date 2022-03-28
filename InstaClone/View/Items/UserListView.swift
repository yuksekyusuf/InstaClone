//
//  UserListView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/28/22.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<20) { _ in
                    NavigationLink(destination: ProfileView()) {
                        UserCell()
                            .padding(.leading)
                    }
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
