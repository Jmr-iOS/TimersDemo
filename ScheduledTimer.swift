/*----------------------------------------------------------------------------------------------------------------------------------*/
/** @file        ScheduledTimer.swift
 *  @brief        TimerDemo
 *  @details    x
 *
 *  @author        Justin Reina, Firmware Engineer, Company Name
 *  @created    12/21/20
 *  @last rev    12/21/20
 *
 *  @section   Demo Operations
 *          cont            (go forever)
 *          stop
 *          start
 *          clear
 *          reset
 *
 *  @section    Opens
 *      - Start
 *      - Stop
 *      - Reset
 *      - Change timer routine
 *      - Get Count
 *      - Set Loop Count
 *      //...
 *      - interval_ms:Int
 *      - count:Int
 *      - init(period_ms:Int)
 *      - configure()
 *      - start()
 *      - stop()
 *      - reset()
 *      - scheduled_event() <- called on completion
 *
 *  @section    Reference
 *      1. learnappmaking.com/timer-swift-how-to/
 *
 *  @section    Legal Disclaimer
 *      © 2020 Runner Delivers, All rights reserved. All contents of this source file and/or any other related source files are the explicit property of Runner Delivers. Do not
 *        distribute. Do not copy.
 */
/*----------------------------------------------------------------------------------------------------------------------------------*/
import UIKit


//**********************************************************************************************************************************//
//                                          ScheduledTimer: NSObject                                                                //
// @brief   a way to schedule repeated events                                                                                       //
//**********************************************************************************************************************************//
class ScheduledTimer: NSObject {
 
    //Local Variables
    var count : Int;
    var dur_ms: Double;

    var t: Timer?;
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           init(duration_ms: Double)
     *  @brief        x
     *  @details    x
     *
     *  @param        [in]    (Double) duration_ms - x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    init(duration_ms: Double) {

        self.count  = 0;
        self.dur_ms = duration_ms;

        super.init();
             
        t = Timer.scheduledTimer(timeInterval: (duration_ms/1000),
                                       target: self,
                                     selector: #selector(scheduled_event),
                                     userInfo: nil,
                                      repeats: false);
    
        print("Init(duration_ms)!");
        
        return;
    }
    
    
    //@todo     header
    func start() {

        //If not running
        //{
            //start
        //}//else
        //{
            //ignore request
        //}

        print("Start!");
        
        return;
    }
    
    //@todo     header
    func stop() {

        //If running
        //{
            //stop
        //}//else
        //{
            //ignore request
        //}

        print("Stop!");
        
        return;
    }
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          @objc func scheduled_event()
     *  @brief        timer event
     *  @details    x
     *
     *   @section   Opens
     *          make this selectable
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func scheduled_event() {
        
        print(">Scheduled Event Occured - Ct: \(self.count)");
        
        self.count+=1;
        
        return;
    }
}

