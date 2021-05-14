//
//  FruitsApp.swift
//  Fruits
//
//  Created by Evgenii Lysenko on 4/8/21.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
            
        }
    }
}
