//
//  FeiraBandeApp.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 19/07/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

@main
struct FeiraBandeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
