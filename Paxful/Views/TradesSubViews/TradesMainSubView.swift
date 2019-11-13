//
//  TradesMainSubView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct TradesMainSubView: View {
    
    @State var showingDetail = false
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "plusminus.circle")
                Text("Continue to the website to buy and sell bitcoin")
                Text("Trades are currently only available on the Paxful website. Once you begin making transactions, your trade history will be displayed here.")
                Button(action: {
                    
                }) {
                    Text("GO TO PAXFUL WEBSITE")
                }
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

struct TradesMainSubView_Previews: PreviewProvider {
    static var previews: some View {
        TradesMainSubView()
    }
}
