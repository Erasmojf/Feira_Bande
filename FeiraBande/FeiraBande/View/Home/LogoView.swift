//
//  LogoView.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 19/07/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import SwiftUI

struct LogoView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BBODY
    
    var body: some View {
        HStack(spacing: 4) {
            Text("Feira".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Bandé".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }// HStack
    }
}

// MARK: - PREVIEW

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
