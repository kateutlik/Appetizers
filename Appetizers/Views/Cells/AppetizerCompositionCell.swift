//
//  AppetizerCompositionCell.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/12/21.
//

import SwiftUI

struct AppetizerCompositionCell: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            Text(value)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .italic()
        }
    }
}

struct AppetizerCompositionCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerCompositionCell(title: "Test", value: "100")
    }
}
