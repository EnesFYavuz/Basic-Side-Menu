//
//  Alert.swift
//  MenuSideApp
//
//  Created by Enes Yavuz on 18.08.2021.
//

import Foundation
import UIKit
class Alert{
    func Alert(title:String,message:String,viewController: UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        viewController.present(alert, animated: true, completion: nil)
        
    }
    func exitAlert(title:String,message:String,viewController: UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let exitApp = UIAlertAction(title: "Ok", style: .destructive) {
                   (alert) -> Void in
                        exit(0)
                  //     UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil) //support from Apple
               }
        let cancelExitApp = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(exitApp)
        alert.addAction(cancelExitApp)
        viewController.present(alert, animated: true, completion: nil)
        
    }
}
