//
//  WebView.swift
//  HackerNews
//
//  Created by Mithun Raj on 07/08/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
