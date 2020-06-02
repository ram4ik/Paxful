//
//  WalletMainSubView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct WalletMainSubView: View {
    
    @State var showingDetail = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Image(systemName: "cube.box")
                        .font(.largeTitle)
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
                                        .foregroundColor(Color("purple"))
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
                                        .foregroundColor(Color("blue"))
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
                                        .foregroundColor(Color("green"))
                                        .frame(width: 55, height: 55)
                                    Image(systemName: "paperplane")
                                        .foregroundColor(Color.white)
                                }
                            }.padding()
                            Text("SEND")
                        }.padding()
                    }.padding(.bottom, 40)
                }
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
                .padding()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "qrcode")
                        Text("Receive Bitcoin")
                    }.foregroundColor(.black)
                }
                .padding()
                .background(Color("gray"))
                .cornerRadius(30)
                .offset(y: -50)
                
                Text("Get started by buying bitcoin on Paxful")
                    .foregroundColor(.primary)
                    .padding()
                Text("You can buy bitcoin directly from other people using over 300 payment options")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding()
            }
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.showingDetail.toggle()
                    }) {
                        Image(systemName: "message")
                    }
                    .padding(.all, 40)
                    .sheet(isPresented: $showingDetail) {
                        ChatMainView()
                    }
                }
                Spacer()
            }
        }
    }
}

struct WalletMainSubView_Previews: PreviewProvider {
    static var previews: some View {
        WalletMainSubView()
    }
}
