//
//  WalletMainSubView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct WalletMainSubView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "cube.box")
                    .padding()
                Text("0 BTC")
                    .padding()
                Text("0.00 EUR")
                    .padding()
                HStack {
                    VStack {
                        Button(action: {
                            
                        }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color.pink)
                                    .frame(width: 55, height: 55)
                                Image(systemName: "icloud.and.arrow.down")
                                    .foregroundColor(Color.white)
                            }
                        }.padding()
                        Text("BUY")
                    }.padding()
                    Spacer()
                    VStack {
                        Button(action: {
                            
                        }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color.green)
                                    .frame(width: 55, height: 55)
                                Image(systemName: "icloud.and.arrow.up")
                                    .foregroundColor(Color.white)
                            }
                        }.padding()
                        Text("SPEND")
                    }.padding()
                    Spacer()
                    VStack {
                        Button(action: {
                            
                        }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color.blue)
                                    .frame(width: 55, height: 55)
                                Image(systemName: "paperplane")
                                    .foregroundColor(Color.white)
                            }
                        }.padding()
                        Text("SEND")
                    }.padding()
                }
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "qrcode")
                        Text("Receive Bitcoin")
                    }
                }.padding()
                Text("TRANSACTIONS")
                    .padding()
                Text("Get started by buying bitcoin on Paxful")
                    .padding()
                Text("You can buy bitcoin directly from other people using over 300 payment options")
                    .padding()
            }
        }
    }
}

struct WalletMainSubView_Previews: PreviewProvider {
    static var previews: some View {
        WalletMainSubView()
    }
}
