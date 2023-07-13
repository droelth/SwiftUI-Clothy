//
//  ContentView.swift
//  Clothy
//
//  Created by Berkay Sutlu on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20) {
                    ForEach(productList, id: \.id){ product in
                        productCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }.navigationTitle("SweaterShop")
                .toolbar {
                    NavigationLink {
                        CartView().environmentObject(cartManager)
                    } label: {
                        cartButton(numberOfProducts: cartManager.products.count)

                    }
                }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
