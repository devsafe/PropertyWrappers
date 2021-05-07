//
//  UserSettings.swift
//  PropertyWrappers
//
//  Created by Сахар Кубический on 07.05.2021.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0
}

struct UserSettings_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
