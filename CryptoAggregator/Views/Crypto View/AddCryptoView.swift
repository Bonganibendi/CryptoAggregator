//
//  AddCryptoView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct AddCryptoView: View {
    var body: some View {
        VStack {
            //MARK: Group code textfield.
            ZStack {
                Rectangle()
                    .frame(height: 45, alignment: .center)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                HStack {
                    Image(systemName: "rectangle.stack.fill.badge.plus")
                    Text("Group Code")
                    Spacer()
                }.padding(.horizontal, 40)
            }.offset(y: 40)
            //MARK: Filtered assets.
            ZStack{
                Rectangle()
                    .frame(height: 170, alignment: .center)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                HStack {
                    VStack(alignment: .center) {
                        Circle()
                            .frame(height: 80)
                        Text("BTC")
                            .fontWeight(.heavy)
                        Text("Bitcoin")
                    }
                    
                    VStack(alignment: .center) {
                        Circle()
                            .frame(height: 80)
                        Text("APPL")
                            .fontWeight(.heavy)
                        Text("Apple inc")
                    }
                    VStack(alignment: .center) {
                        Circle()
                            .frame(height: 80)
                        Text("ETH")
                            .fontWeight(.heavy)
                        Text("Ethereum")
                    }
                }.padding()
            }.padding(.top, 80)
            //MARK: Add button.
            ZStack{
                Rectangle()
                    .frame(width: 250, height: 50, alignment: .center)
                    .foregroundColor(.secondary)
                    .cornerRadius(30)
                
                Text("Add")
                    .fontWeight(.heavy)
            }.padding(.top,50)
            Spacer()
        }.navigationBarTitle("Add Instrument", displayMode: .inline).offset(y: -10)
    }
}

struct AddCryptoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddCryptoView()
        }
    }
}
