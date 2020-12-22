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
    
    var t: ScheduledTimer;
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var cont: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           init()
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    init() {
        
        t = ScheduledTimer();
        
        super.init(nibName:nil, bundle: nil);
        
        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          required init?(coder aDecoder: NSCoder)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    required init?(coder aDecoder: NSCoder) {

        t = ScheduledTimer();
        
        super.init(coder: aDecoder)
    }
    
        
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
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           button_start_tap()
     *  @brief        @objc
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func button_start_tap() {
                
        t.start();
       
        print("Start Button is tapped");

        return;
        
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          button_stop_tap()
     *  @brief        @objc
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func button_stop_tap() {

        t.stop();

        print("Stop Button is tapped");
        
        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           button_cont_tap()
     *  @brief        @objc
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func button_cont_tap() {

        if(self.t.isRunning) {
            return;                                                         /* only start new if idle                               */
        } else {
            t.setMode(mode: Mode.CONT);
            t.start();                                                      /* start continuous!                                    */
        }
        
        print("Cont Button is tapped");
            
        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           button_clear_tap()
     *  @brief        @objc
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func button_clear_tap() {
        print("Clear Button is tapped");
        
        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          button_reset_tap()
     *  @brief        @objc
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func button_reset_tap() {

        t.stop();

        t.setMode(mode: Mode.COUNT);

        t.reset();

        print("Reset Button was tapped");
        t.start();
        
        return;
    }
}

