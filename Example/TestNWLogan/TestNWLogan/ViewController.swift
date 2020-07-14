//
//  ViewController.swift
//  TestNWLogan
//
//  Created by neilwu on 2020/7/14.
//  Copyright © 2020 nw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let keydata = "0011223344556677".data(using: String.Encoding.utf8) else {
            return;
        }
        let file_max:UInt64 = 10 * 1024 * 1024;
        loganInit(keydata, keydata, file_max);
        loganUseASL(true);
        
        logan(1, "helloworld");
        loganFlush();
    }


}

