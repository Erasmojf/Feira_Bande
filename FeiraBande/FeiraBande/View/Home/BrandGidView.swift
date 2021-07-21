//
//  BrandGidView.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 21/07/21.
//

import SwiftUI

struct BrandGidView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }//LOOP
            })//GRId
            .frame(height: 200)
            .padding(15)
        })//SCROLL
    }
}

// MARK: - PREVIEW

struct BrandGidView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGidView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
