//
//  FeedView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/23/22.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var viewModel = FeedViewModel()
    var posts: [Post] {
        return viewModel.posts
    }
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                ForEach(posts) { post in
                    FeedCell(post: post)
                }
            }
            .padding(.top)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
