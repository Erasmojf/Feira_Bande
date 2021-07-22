//
//  NavigatioBarDetailView.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 21/07/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
               Image(systemName: "chevron.left")
                .font(.title)
                .foregroundColor(.white)
            })//BUTTON
            
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//HStack
    }
}

// MARK: - PREVIEW

struct NavigatioBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
