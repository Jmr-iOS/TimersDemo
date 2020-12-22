/*----------------------------------------------------------------------------------------------------------------------------------*/
/** @file        ViewController.swift
 *  @brief        TimerDemo
 *  @details    x
 *
 *  @section    Opens
 *      none listed
 *
 *  @section    Legal Disclaimer
 *      © 2020 Runner Delivers, All rights reserved. All contents of this source file and/or any other related source files are the explicit property of Runner Delivers. Do not
 *        distribute. Do not copy.
 */
/*----------------------------------------------------------------------------------------------------------------------------------*/
import UIKit


//**********************************************************************************************************************************//
//                                        ViewController: UIViewController                                                          //
//**********************************************************************************************************************************//

class ViewController: UIViewController {

    //MARK: Properties
    //...
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var cont: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           override func viewDidLoad()
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.start.addTarget(self, action: #selector(button_start_tap), for: .touchUpInside);
        self.stop.addTarget(self, action: #selector(button_stop_tap), for: .touchUpInside);
        self.cont.addTarget(self, action: #selector(button_cont_tap), for: .touchUpInside);
        self.clear.addTarget(self, action: #selector(button_clear_tap), for: .touchUpInside);
        self.reset.addTarget(self, action: #selector(button_reset_tap), for: .touchUpInside);

        return;
    }

    @objc func button_start_tap() {
        print("Start Button is tapped");
    }
    @objc func button_stop_tap() {
        print("Stop Button is tapped");
    }
    @objc func button_cont_tap() {
        print("Cont Button is tapped");
    }
    @objc func button_clear_tap() {
        print("Clear Button is tapped");
    }
    @objc func button_reset_tap() {
        print("Reset Button is tapped");
    }

}

