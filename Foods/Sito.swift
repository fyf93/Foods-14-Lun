//
//  Sito.swift
//  Foods
//
//  Created by Anna Grazia Cervo on 15/12/17.
//  Copyright © 2017 Anna Grazia Cervo. All rights reserved.
//

import UIKit
import WebKit

class Sito: UIViewController {

    //Variabili
    @IBOutlet weak var webview: UIWebView! //WebView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://happytummy.asdintersocialelazzaroni.it/")!
        UIApplication.shared.open(url,options: [:], completionHandler: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
