//
//  AlertTest.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 17.04.2022.
//

import Foundation
import UIKit

struct AlertTest {
    
    private static func showAlert(vc: ViewController, title: String, message: String) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "Ok",
                                          style: .default)
        alertController.addAction(dismissAction)
        DispatchQueue.main.async {
            vc.present(alertController, animated: true, completion: nil)
        }
    }
    
    static func showResult(vc: ViewController, message: String) {
        showAlert(vc: vc, title: "Result", message: "success")
    }
    static func showError(vc: ViewController, message: String) {
        showAlert(vc: vc, title: "Error", message: "failure")
    }
}
