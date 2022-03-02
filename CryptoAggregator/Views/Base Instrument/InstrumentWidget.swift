//
//  InstrumentWidget.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct InstrumentWidget: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 220, alignment: .center)
                .cornerRadius(10)
                .padding(.horizontal)
                .foregroundColor(.gray)
            
            HStack {
                //MARK: Broker Details.
                VStack(alignment: .center, spacing: 15) {
                    Text("Stock").font(.system(size: 20))
                        .fontWeight(.heavy).lineLimit(1)
                        .minimumScaleFactor(0.5)
                        
                    Rectangle()
                        .frame(width: 130, height: 130)
                        .cornerRadius(15)
                }.padding(.horizontal, 20)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 1, height: 180).offset(x:-10)
                
                // MARK: Data from Brokers.
                HStack() {
                    VStack(alignment:.leading, spacing: 17){
                        Text("Hour").font(.system(size: 16))
                        Text("Day").font(.system(size: 16))
                        Text("Monthly ").font(.system(size: 16))
                        Text("Annual").font(.system(size: 16))
                        Text("Assets").font(.system(size: 17))
                    }
                    Spacer()
                    VStack(alignment:.leading, spacing: 17){
                        Text("1.22%").font(.system(size: 16))
                        Text("1.22%").font(.system(size: 16))
                        Text("2.23%").font(.system(size: 16))
                        Text("25.53%").font(.system(size: 16))
                        Text("8").font(.system(size: 16))
                    }
                    
                }.padding(.trailing)
                
            }.padding()
        }
    }
}

struct InstrumentWidget_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentWidget()
    }
}
