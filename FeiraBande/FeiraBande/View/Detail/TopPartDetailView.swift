//
//  TopPartDetailView.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 22/07/21.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    @State private var isAnimeted: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .center, spacing: 6, content: {
                Text("Preço")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//VStack
            .offset(y: isAnimeted ? -50: -75)
            Spacer()
            
            // PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimeted ? 0 : -35)
        })//HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimeted.toggle()
            }
        })
        
    }
}

// MARK: - PREVIEW

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
