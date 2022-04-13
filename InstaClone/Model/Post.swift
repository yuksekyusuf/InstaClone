//
//  Post.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 4/13/22.
//

import Firebase
import FirebaseFirestoreSwift

struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let ownerUid: String
    let ownerUsername: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    let ownerImageUrl: String
}
