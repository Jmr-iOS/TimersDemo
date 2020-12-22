/*----------------------------------------------------------------------------------------------------------------------------------*/
/** @file        AppDelegate.swift
 *  @brief      TimerDemo
 *  @details   x
 *
 *  @author       Justin Reina, Firmware Engineer, Company Name
 *  @created    Created by Justin Reina on 12/21/20.
 *  @last rev    12/22/20
 *
 *
 *  @section    Opens
 *      Complete Swift Syntax header content
 *
 *  @section    Legal Disclaimer
 *      © 2020 Runner Devliers, All rights reserved. All contents of this source file and/or any other related source files are the explicit property of Runner Devliers. Do not
 *       distribute. Do not copy.
 */
/*----------------------------------------------------------------------------------------------------------------------------------*/
import UIKit


@main
//**********************************************************************************************************************************//
//                                   AppDelegate: UIResponder, UIApplicationDelegate                                                //
//**********************************************************************************************************************************//
class AppDelegate: UIResponder, UIApplicationDelegate {


    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
        let _ = ScheduledTimer(duration_ms:120);

        return true;
    }

    
    //******************************************************************************************************************************//
    //                                        MARK: UISceneSession Lifecycle                                                        //
    //******************************************************************************************************************************//
    
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession,
     *                   options: UIScene.ConnectionOptions) -> UISceneConfiguration
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession,
                       options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
       
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        
        return;
    }


}

