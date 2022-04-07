//
//  User.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 4/1/22.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false
    
    var isCurrenUser: Bool { return AuthViewModel.shared.userSession?.uid == id }
}
