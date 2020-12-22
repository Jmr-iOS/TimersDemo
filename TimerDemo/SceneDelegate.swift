/*----------------------------------------------------------------------------------------------------------------------------------*/
/** @file        SceneDelegate.swift
 *  @brief        TimerDemo
 *  @details    x
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
 *       distribute. Do not copy. */
/*----------------------------------------------------------------------------------------------------------------------------------*/
import UIKit


//**********************************************************************************************************************************//
//                                SceneDelegate: UIResponder, UIWindowSceneDelegate                                                 //
//**********************************************************************************************************************************//
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    //Local Variables
    var window: UIWindow?

    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        return;
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          sceneDidDisconnect(_ scene: UIScene)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func sceneDidDisconnect(_ scene: UIScene) {
       
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        
        return;
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           sceneDidBecomeActive(_ scene: UIScene)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func sceneDidBecomeActive(_ scene: UIScene) {
      
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        
        return;
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          sceneWillResignActive(_ scene: UIScene)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func sceneWillResignActive(_ scene: UIScene) {
      
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        
        return;
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn           sceneWillEnterForeground(_ scene: UIScene)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func sceneWillEnterForeground(_ scene: UIScene) {
       
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        
        return;
    }
    /*------------------------------------------------------------------------------------------------------------------------------*/
    /** @fcn          sceneDidEnterBackground(_ scene: UIScene)
     *  @brief        x
     *  @details    x
     */
    /*------------------------------------------------------------------------------------------------------------------------------*/
    func sceneDidEnterBackground(_ scene: UIScene) {
       
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        return;
    }
}

