//
//  ContentView.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 19/07/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct ContentView: View {
   // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
