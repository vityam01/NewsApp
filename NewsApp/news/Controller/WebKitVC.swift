//
//  WebKitVCViewController.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022
//

import UIKit
import WebKit

final class WebKitVC: UIViewController, WKNavigationDelegate {
    
    private var webView: WKWebView!
    static var urlString: String?
    
    
    override func loadView() {
        webView = WKWebView()
        webView?.navigationDelegate = self
        view = webView
        
        let url = URL(string: WebKitVC.urlString ?? "")!
        webView?.load(URLRequest(url: url))
        webView?.allowsBackForwardNavigationGestures = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView()
    }

}
