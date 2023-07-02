//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Jo Harper on 7/1/23.
//

import Foundation

import FirebaseDatabase

public class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    //MARK: - Public
    
    ///Check if username and email is available
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String reptresenting username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool)-> Void) {
        completion(true)
    }
    
    ///Insert new user data tp database
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String reptresenting username
    ///     - completion: Async callback for result if database entry succedded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool)-> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) {error, _ in
            if error == nil {
                //success
                completion(true)
                return
            }
            else {
                //failed
                completion(false)
                return
            }
        }
    }
    
}
