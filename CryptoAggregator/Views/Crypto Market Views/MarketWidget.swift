//
//  USD.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/08.
//

import SwiftUI

struct MarketWidget: View {
    var markets: Market
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 220, alignment: .center)
                .cornerRadius(10)
                .padding(.horizontal, 5)
                .foregroundColor(.gray)
            
            HStack {
                //MARK: Broker Details.
                Spacer()
                VStack(alignment: .center, spacing: 15) {
                    Text(markets.symbol).font(.system(size: 20))
                        .fontWeight(.heavy).lineLimit(1)
                        .minimumScaleFactor(0.5)
                        
                    Image(markets.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
                }.padding(.horizontal,30)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 1, height: 180).offset(x:-10)
                
                // MARK: Data from Brokers.
                
                HStack {
                    VStack(alignment:.leading, spacing: 17) {
                        VStack(alignment:.leading){
                            Text("Region")
                                .font(.headline)
                                .fontWeight(.heavy)
                            Text(markets.region)
                        }
                        
                        VStack(alignment:.leading){
                            Text("Exchange")
                                .font(.headline)
                                .fontWeight(.heavy)
                            Text(markets.exchange)
                        }
                        VStack(alignment:.leading){
                            Text("Instruments")
                                .font(.headline)
                                .fontWeight(.heavy)
                            Text("\(markets.assets)")
                        }
                    }
                    Spacer()
                }
                
            }.padding(.trailing)
                
            }.padding()
        }
    }

struct MarketWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MarketWidget(markets: marketData[0])
            MarketWidget(markets: marketData[3])
                .previewDevice("iPhone 8")
        }
    }
}
