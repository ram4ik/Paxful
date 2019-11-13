//
//  MainView.swift
//  Paxful
//
//  Created by ramil on 13.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            WalletView()
                .tabItem {
                    VStack {
                        Image(systemName: "folder.badge.plus")
                        Text("Wallet")
                    }
            }
            TradesView()
                .tabItem {
                    VStack {
                        Image(systemName: "text.bubble")
                        Text("Trades")
                    }
            }
            AccountView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.crop.circle")
                        Text("Account")
                    }
            }
            AffiliateView()
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.grid.2x2.fill")
                        Text("Affiliate")
                    }
            }
            NotificationsView()
                .tabItem {
                    VStack {
                        Image(systemName: "bell")
                        Text("Notification")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
