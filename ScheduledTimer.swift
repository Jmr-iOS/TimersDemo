/*----------------------------------------------------------------------------------------------------------------------------------*/
/** @file        ScheduledTimer.swift
 *  @brief        TimerDemo
 *  @details    x
 *
 *  @author        Justin Reina, Firmware Engineer, Company Name
 *  @created    12/21/20
 *  @last rev    12/21/20
 *
 *  @section    Theory
 *      Initializes as a continuous timer (type), halted (isRunning)
 *      Mode is established through a fcn call (defaults to continuous)
 *      Start is called
 *
 *  @section       Opens
 *      Confirm timer creation & disposal is sae
 *
 *  @section      Deferred Opens
 *      Pass the function pointer as a fcn parameter
 *      Store fcn pointer input param to local variable (why is this so hard)
 *      Be able to store the fcn!
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

enum Mode {
    case COUNT;
    case CONT;
    case STOP;
}

let DEFAULT_DUR: Double = 500;                                          /* demo value                                               */
let DEFAULT_LIM:    Int = 5;                                            /* default number of cycles                                 */
let INF_CYCLE_CT:   Int = -1;                                           /* go forever                                               */


//**********************************************************************************************************************************//
//                                          ScheduledTimer: NSObject                                                                //
// @brief   a way to schedule repeated events                                                                                       //
//**********************************************************************************************************************************//
class ScheduledTimer: NSObject {
 
    //Local Variables
    var mode:   Mode;                                                   /* mode of operation                                        */
    var count:  Int;                                                    /* number of cycle iterations                               */
    var limit:  Int;                                                    /* max cycle iterations                                     */
    var dur_ms: Double;                                                 /* mode of operation                                        */
    var isRunning: Bool;                                                /* is the timer running now?                                */
    
    
    
    var t: Timer?;
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           init()
     *  @brief        initialize stopped, with empty count
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    override init() {

        //Style
        self.mode   = Mode.CONT;                                        /* defaults to continuous op                                */
        self.dur_ms = DEFAULT_DUR;
        self.isRunning = false;
        
        self.count  = -1;
        self.limit  = DEFAULT_LIM;
                
        super.init();

        print("Init()!");
        
        return;
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           init(duration_ms: Double)
     *  @brief        x
     *  @details    x
     *
     *  @param        [in]    (Double) duration_ms - x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    init(duration_ms: Double, count: Int) {

        self.mode   = Mode.CONT;                                        /* defaults to continuous op                                */
        self.dur_ms = duration_ms;
        self.isRunning = false;
        
        self.count  = -1;
        self.limit  = count;
        
        super.init();

        print("Init(duration_ms)!");
        
        return;
    }
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          start()
     *  @brief       start the timer
     *  @details    x
     *
     *   @section   Opens
     *          none listed
     *
     *   @assum  t was running
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func start() {
        
        //(Pre)
        t?.invalidate();                                                /* clear last                                               */
        
        //Config
        if(self.mode == Mode.STOP) {
            self.mode = Mode.CONT;                                      /* when stopped resume back to default state                */
        }
        
        //Start
        t = Timer.scheduledTimer(timeInterval: (self.dur_ms/1000),
                                       target: self,
                                     selector: #selector(self.scheduled_event),
                                     userInfo: nil,
                                      repeats: true);
        self.isRunning = true;
        
        print("Start!");
       
        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           stop()
     *  @brief        stop the timer
     *  @details    x
     *
     *   @section   Opens
     *        none listed
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func stop() {

        //If running
        self.mode  = Mode.STOP;
        self.count = 0;
        self.isRunning = false;
        
        //Clear
        t?.invalidate();
        
        print("Stop!");

        return;
    }
    
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          reset()
     *  @brief        reset  the timer count value
     *  @details    x
     *
     *   @section   Opens
     *       none listed
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func reset() {

        //Reset count
        self.count = 0;

        print("Reset to empty!");

        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          setMode(mode: Mode)
     *  @brief        store the mode value
     *  @details    x
     *
     *   @section   Opens
     *       none listed
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func setMode(mode: Mode) {

        self.mode = mode;

        print("Mode was set!");

        return;
    }
    
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn         @objc func scheduled_event()
     *  @brief       default timer event
     *  @details    x
     *
     *   @section   Opens
     *          make this selectable
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    @objc func scheduled_event() {

        switch(mode) {
            //-----------------------------------------------------COUNT MODDE------------------------------------------------------//
            case Mode.COUNT:
                
                //Update
                self.count+=1;
                
                if(self.count >= 1) {
                    print(">Scheduled Event Occured - Ct: \(self.count), Lm: \(self.limit)");
                            
                    if(self.count >= self.limit) {
                        print("I am stopping");
                        
                        self.stop();
                    }
                } else {
                    print(">>BOOT, ignore");
                }
                
                break;
                
            //---------------------------------------------------CONTINUOUS MODDE---------------------------------------------------//
            case Mode.CONT:
                print("run and cont!");
                break;
                
            //-------------------------------------------------------STOP MODDE-----------------------------------------------------//
            case Mode.STOP:
                print("error?");
                break;
        }
    
        return;
    }
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn         printMode(ct: Int)
     *  @brief       print current mode value
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func printMode(ct: Int) {
        print("[\(ct)]: \(self.mode)");
        
    }
}

