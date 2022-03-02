//
//  PasswordView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/02.
//

import SwiftUI

struct PasswordView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame( height: 45, alignment: .center)
                    .foregroundColor(.secondary).cornerRadius(15)
                    .padding()
                
                HStack {
                    Image(systemName: "lock.fill")
                    Text("***********")
                    Spacer()
                }.padding(.horizontal, 40)
            }.offset(y: 40)
            Spacer()
        }.navigationBarTitle("Password", displayMode: .inline).offset(y: -10)
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PasswordView()
        }
    }
}

