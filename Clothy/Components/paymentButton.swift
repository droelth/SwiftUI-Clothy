//
//  paymentButton.swift
//  Clothy
//
//  Created by Berkay Sutlu on 13.07.2023.
//

import SwiftUI

struct paymentButton: View {
    var body: some View {
        Button {
            //
        } label: {
            Text("Checkout").font(.title2).fontWeight(.medium).frame(width: 200,height: 70).background(.black).foregroundColor(.white).cornerRadius(30)
        }

    }
}

struct paymentButton_Previews: PreviewProvider {
    static var previews: some View {
        paymentButton()
    }
}
