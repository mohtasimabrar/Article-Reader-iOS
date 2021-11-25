//
//  DetailViewController.swift
//  Article Reader
//
//  Created by Mohtasim Abrar Samin on 24/11/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard let detailItem = detailItem else { return }
        
        title = detailItem.title

        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 100%; } h1, h3 {display: inline;}</style>
        </head>
        <body>
        <h2>\(detailItem.title)</h2>
        <hr>
        \(detailItem.body)
        <br>
        <br>
        <h3>Total Signature Count:</h3>
        <br>
        <h1>\(detailItem.signatureCount)</h1>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
