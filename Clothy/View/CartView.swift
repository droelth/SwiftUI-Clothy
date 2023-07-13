//
//  CartView.swift
//  Clothy
//
//  Created by Berkay Sutlu on 13.07.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    productRow(product: product)
                }
                
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00").bold()
                }.padding()
                
                paymentButton()
                
            }
            else{
                Text("Your cart is empty")
            }
            
            
            
        }.onAppear{
            print("\(cartManager.products.count)")
        }
        .navigationTitle("My Cart")
        .padding(10)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView().environmentObject(CartManager())
    }
}
