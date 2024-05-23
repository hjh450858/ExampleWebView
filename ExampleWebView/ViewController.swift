//
//  ViewController.swift
//  ExampleWebView
//
//  Created by 황재현 on 5/23/24.
//

import UIKit
import WebKit
import SnapKit


class ViewController: UIViewController {
    
    var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    func configureUI() {
        let url = URL(string: "https://www.naver.com")
        let request = URLRequest(url: url!)
        
        view.addSubview(webView)
        
        webView.snp.makeConstraints { make in
            make.edges.equalTo(view)
        }
        
        webView.allowsBackForwardNavigationGestures = true
        
        webView.load(request)
        
        
    }
}

