//
//  ViewController.swift
//  TimerDemo
//
//  Created by Justin Reina on 12/21/20.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let st = ScheduledTimer();
        
        print("A");
        st.display();
        print("B");

        return;
    }


}

