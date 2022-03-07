//
//  CryptoMarketView.swift
//  CryptoAggregator
//
//  Created by Bongani Bendile on 2022/03/06.
//

import SwiftUI

//MARK: - CryptoMarketView
struct CryptoMarketView: View {
    
    var body: some View {
        NavigationView {
            
            List{
                
                  //MARK: USD
                  NavigationLink(destination: CryptoViewUSD()) {
                      HStack {
                          Image("USD").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("USD Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: EUR
                  NavigationLink(destination: CryptoViewEUR()) {
                      HStack {
                          Image("EUR").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("EUR Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: AUD
                  NavigationLink(destination: CryptoViewAUD()) {
                      HStack {
                          Image("AUD").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("AUD Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: SGP
                  NavigationLink(destination:CryptoViewSGD())  {
                      HStack {
                          Image("SGP").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("SGP Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: BRL
                  NavigationLink(destination: CryptoViewBRL()) {
                      HStack {
                          Image("BRL").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("BRL Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: ZAR
                  NavigationLink(destination: CryptoViewZAR()) {
                      HStack {
                          Image("ZAR").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("ZAR Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: INR
                  NavigationLink(destination: CryptoViewINR()) {
                      HStack {
                          Image("INR").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("INR Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: JPY
                  NavigationLink(destination: CryptoViewJPY()) {
                      HStack {
                          Image("JPY").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("JPY Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: XAU
                  NavigationLink(destination: CryptoViewXAU()) {
                      HStack {
                          Image("XAU").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("XAU Market")
                          
                          Spacer()
                      }
                  }
                  //MARK: XAG
                  NavigationLink(destination: CryptoViewXAG()) {
                      HStack {
                          Image("XAG").resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: 40, height: 40)
                              .cornerRadius(10)
                          
                          Text("XAG Market")
                          
                          Spacer()
                      }
                  }
               .navigationTitle("Market View")
            }
        }
    }
}

//MARK: - Previw
struct CryptoMarketView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoMarketView()
    }
}
