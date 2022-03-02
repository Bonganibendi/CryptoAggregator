//
//  CryptoView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct CryptoView: View {
    var body: some View {
        ZStack {
            List{
                ForEach(1..<7){ asset in
                    CryptoRow()
                }
                
                HStack {
                    Spacer()
                    Text("6 Assets")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: AddCryptoView()) {
                        Image(systemName: "plus.circle.fill")
                            .resizable().frame(width: 40, height: 40)
                            .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/).offset(x: -1, y: 10)
                    }
                }
            }
        }.navigationBarTitle("Assets", displayMode: .inline).offset(y: -10)
    }
}

struct CrytpoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoView()
        }
    }
}
