//
//  ViewController.swift
//  Sandbox App

import UIKit
import WebKit

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webView = WKWebView()
        view.addSubview(webView)
        
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor).isActive = true
        webView.translatesAutoresizingMaskIntoConstraints = false

        webView.load(URLRequest(url: URL(string: "https://accounts.stage.mozaws.net/signin?service=sync&context=fx_ios_v1")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

