//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/12/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 300, height: 225)
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding([.leading, .trailing, .bottom])
                
                Text(appetizer.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing, .bottom])
                
                HStack(spacing: 40) {
                    AppetizerCompositionCell(title: "Calories", value: "\(appetizer.calories)")
                    AppetizerCompositionCell(title: "Carbs", value: "\(appetizer.carbs) g")
                    AppetizerCompositionCell(title: "Protein", value: "\(appetizer.protein) g")
                }
                .padding(.bottom)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            }
            label: {
                APDismissButton()
            }, alignment: .topTrailing
        )
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                            isShowingDetail: .constant(true))
    }
}
