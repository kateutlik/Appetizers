//
//  AppetizerListItemView.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/7/21.
//

import SwiftUI

struct AppetizerListItemView: View {
    let appetizer: Appetizer

    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .cornerRadius(8)
                .frame(width: 120, height: 90)
                .aspectRatio(contentMode: .fit)
                .padding(.trailing)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(String(format: "%.2f", appetizer.price))")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct AppetizerListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListItemView(appetizer: MockData.sampleAppetizer)
    }
}
