//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Ivan"
    @Published var lastName = "Petrov"
}
struct ContentView: View {
    @ObservedObject var settings = UserSettings()
    @ObservedObject var user = User()
    var body: some View {
        VStack{
            Text("Your name is \(user.firstName) \(user.lastName)")
            //$State
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase my score")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
