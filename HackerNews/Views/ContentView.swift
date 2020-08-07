//
//  ContentView.swift
//  HackerNews
//
//  Created by Mithun Raj on 06/08/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.post) { item in
                NavigationLink(destination: DetailsView(url: item.url)) {
                    HStack {
                        Text("\(item.points)")
                        Text(item.title)
                    }
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.apiCall()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
