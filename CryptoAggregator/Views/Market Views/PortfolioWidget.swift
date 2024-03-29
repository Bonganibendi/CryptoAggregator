//
//  PortfolioWidget.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/04/11.
//

import SwiftUI

struct PortfolioWidget: View {
    var portfolioMarket: PortfolioMarket
    
    var body: some View {
        HStack {
            Image(portfolioMarket.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(portfolioMarket.region)
                    .fontWeight(.bold).foregroundColor(Color("Gold2"))
                    
                
                Text(portfolioMarket.symbol)
                    .fontWeight(.light)
                    .foregroundColor(Color("Gold2"))
            }.padding()
            Spacer()
        }
    }
}

struct PortfolioWidget_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioWidget(portfolioMarket: portfolioMarketData[0])
            .previewLayout(.sizeThatFits)
    }
}
