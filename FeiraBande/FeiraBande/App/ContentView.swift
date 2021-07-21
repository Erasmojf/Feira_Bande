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
        ZStack {
            VStack (spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                FeaturedTabView()
                    .padding(.vertical, 20)
                 
                CategoryGridView()
                
                
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }//LOOP
                        })//GRID
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    }// VStack
                })// SCROLL
            }//VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
