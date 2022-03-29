//
//  ProfileHeaderView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/28/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("c3po")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()
                HStack(spacing: 16) {
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 4, title: "Following")
                }
                .padding(.trailing, 32)
            }
            
            Text("Droid Droid")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("Protocol Droid")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
            .padding(.top)
        }
    }
}



struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
