//
//  SearchViewModel.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 4/1/22.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var posts = [Post]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.users = documents.compactMap({ try? $0.data(as: User.self) })
        }
    }
    
    func fetchPosts() {
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.posts = documents.compactMap({ try? $0.data(as: Post.self) })
        }
    }
    
    func filteredUsers(_ query: String) -> [User] {
        let lowercased = query.lowercased()
        return users.filter({$0.fullname.lowercased().contains(lowercased) ||
            $0.username.lowercased().contains(lowercased)
        })
    }
    
    
}
