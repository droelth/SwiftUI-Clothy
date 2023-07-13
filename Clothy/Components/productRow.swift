
import SwiftUI

struct productRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
                
            }
            Spacer()
            Image(systemName: "trash").foregroundColor(.red).onTapGesture {
                cartManager.removeFromCart(product: product)
            }
        }.padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct productRow_Previews: PreviewProvider {
    static var previews: some View {
        productRow(product: productList[3]).environmentObject(CartManager())
    }
}
