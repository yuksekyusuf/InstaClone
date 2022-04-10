//
//  UserService.swift
//  InstaClone
//
//  Created by Ahmet Yusuf Yuksek on 4/7/22.
//

import Firebase


typealias FirestoreCompletion = ((Error?) -> Void)?

struct UserService {
    
    static func follow(uid: String, completion: @escaping (Error?) -> Void) {
        guard let currentUid = AuthViewModel.shared.userSession?.uid else { return }
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).setData([:]) { _ in
            COLLECTION_FOLLOWERS.document(uid).collection("user-followers").document(currentUid).setData([:], completion: completion)
        }
    }
    
    static func unfollow(uid: String, completion: @escaping (Error?) -> Void) {
        
        guard let currentUid = AuthViewModel.shared.userSession?.uid else { return }
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).delete { _ in
            COLLECTION_FOLLOWERS.document(uid).collection("user-followers").document(currentUid).delete(completion: completion)
        }
        
    }
    static func checkIfUserIsFollowed(uid: String, completion: @escaping (Bool) -> Void) {
        guard let currentUid = AuthViewModel.shared.userSession?.uid else { return }
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).getDocument { snapshot, _ in
            guard let isFollowed = snapshot?.exists else { return }
            completion(isFollowed)
        }
    }
    
}
