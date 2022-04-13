//
//  SearchView.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 3/23/22.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var inSearchMode = false
    @ObservedObject var viewModel = SearchViewModel()
    var body: some View {
        ScrollView {
            //search bar
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            
            //grid view/user list view
            ZStack {
                if inSearchMode {
                    UserListView(viewModel: viewModel, searchText: $searchText)
                } else {
                    PostGridView(config: .explore)
                }
            }
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
