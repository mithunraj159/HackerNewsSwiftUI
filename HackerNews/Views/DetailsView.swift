//
//  DetailsView.swift
//  HackerNews
//
//  Created by Mithun Raj on 07/08/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}



