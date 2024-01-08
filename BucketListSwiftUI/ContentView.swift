//
//  ContentView.swift
//  BucketListSwiftUI
//
//  Created by admin on 1/8/24.
//

import SwiftUI

struct User: Comparable, Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct ContentView: View {
    
    let users = [
        User(firstName: "Mark", lastName: "Boo"),
        User(firstName: "Johnny", lastName: "Cage"),
        User(firstName: "Tom", lastName: "Han")
    ].sorted() 
    
    var body: some View {
        List(users) { user in
            Text("\(user.firstName), \(user.lastName)")
        }
    }
}

#Preview {
    ContentView()
}
