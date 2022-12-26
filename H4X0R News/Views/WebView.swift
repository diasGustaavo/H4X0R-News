//
//  WebView.swift
//  H4X0R News
//
//  Created by Gustavo Dias on 26/12/22.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        DispatchQueue.main.async {
            if let safeString = urlString {
                if let url = URL(string: safeString) {
                    let request = URLRequest(url: url)
                    uiView.load(request)
                }
            }
        }
    }
}
