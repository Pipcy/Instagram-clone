//
//  Models.swift
//  Instagram
//
//  Created by Jo Harper on 7/19/23.
//

import Foundation

enum Gender {
    case male, female, other
}

struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType {
    case photo, video
}

//represent a user post
public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let postURL: URL //either video URL or photo
    let thumbnailImage: URL
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUser: [String]
}

struct PostLike {
    let username: String
    let commentIdentifier: String
}

struct CommentLike {
    let username: String
    let postIdentifier: String
}

struct PostComment {
    let identifier:String
    let username: String
    let text:String
    let createdDate: Date
    let likes: [CommentLike]
}
