//  ScheduledTimer.swift
//  TimerDemo
//
import UIKit

class ScheduledTimer: NSObject {
    
    var dur_ms: Int;
    
    override init() {

        super.init();
        
        self.dur_ms = 0;
        
        print("Init()!");
        
        return;
    }
    
    
    init(duration_ms: Int) {

        super.init();
        
        self.dur_ms = duration_ms;
     
        print("Init()!");
        
        return;
    }
}
