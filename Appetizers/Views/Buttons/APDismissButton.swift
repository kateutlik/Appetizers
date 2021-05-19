//
//  APDismissButton.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/12/21.
//

import SwiftUI

struct APDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(6)
            Image(systemName: "xmark")
                .foregroundColor(.black)
                .imageScale(.small)
                .frame(width: 44, height: 44)
        }
    }
}

struct APDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        APDismissButton()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
