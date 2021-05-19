//
//  APButton.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/12/21.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .cornerRadius(10)
            .padding(20)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Add To Order")
    }
}
