import SwiftUI

struct productCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    Text("\(product.price)$")
                        .font(.caption)
                }.padding().frame(width: 180,alignment: .leading).background(.ultraThinMaterial).cornerRadius(20)
                
                
            }.frame(width: 180,height: 250).shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
                print("\(cartManager.products.count)")
            } label: {
                Image(systemName: "plus").padding(10).foregroundColor(.white).background(.black).cornerRadius(50).padding(10)
            }
        }
    }
}

struct productCard_Previews: PreviewProvider {
    static var previews: some View {
        productCard(product: productList[0]).environmentObject(CartManager())
    }
}
