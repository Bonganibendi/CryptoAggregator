//
//  CryptoRow.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct CryptoRow: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 40, height: 40)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text("BTC").fontWeight(.bold)
                Text("Bitcoin")
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .leading){
                Text("+3.56%")
                Text("Daily")
                    .foregroundColor(.secondary)
            }
            
        }
    }
}

struct CryptoRow_Previews: PreviewProvider {
    static var previews: some View {
        CryptoRow().previewLayout(.sizeThatFits)
    }
}
