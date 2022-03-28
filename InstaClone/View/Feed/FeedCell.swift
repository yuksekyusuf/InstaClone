//
//  FeedCell.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/23/22.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                // user info
                Image("r2d2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                Text("R2D2")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding([.leading, .bottom], 8)
            
            // post image
            Image("r2d2")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // action buttons
            HStack(spacing: 8) {
                Button(action: { }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: { }, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                
                Button(action: { }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .padding(.leading, 4)
            .foregroundColor(.black)
            
            // caption
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, -2)
            
            HStack {
                Text("R2D2")
                    .font(.system(size: 14, weight: .semibold)) +
                Text(" all men have limits. They learn what they are and lean not to exceed them. I ignore mine")
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 8)
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
