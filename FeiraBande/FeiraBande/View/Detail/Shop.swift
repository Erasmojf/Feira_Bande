//
//  Shop.swift
//  FeiraBande
//
//  Created by Erasmo J.F Da Silva on 22/07/21.
//  SwiftUI ♡ Better Apps. Less Code
//  https://erasmojf.github.io/
//  Fidju de Bideira de Feira de Caracol

import Foundation

class Shop: ObservableObject {
   @Published var showinProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
