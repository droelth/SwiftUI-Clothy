
import SwiftUI

struct cartButton: View {
    @EnvironmentObject var cartManager: CartManager
    
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold().foregroundColor(.white).frame(width: 15,height: 15).background(.red).cornerRadius(50)
            }
        }
    }
}

struct cartButton_Previews: PreviewProvider {
    static var previews: some View {
        cartButton(numberOfProducts: 1).environmentObject(CartManager())
    }
}
