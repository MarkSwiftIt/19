//
//  ViewController.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 27.03.2022.
//

import UIKit
import Alamofire

protocol ActionTextField: AnyObject {
    func typingText(text: String)
    func cleanTextField()
}

class ViewController: UIViewController {
    
    weak var textFieldDelegate: ActionTextField?
    
    let urlTask = URLTask()
    let alamofireLoader = AlamofireLoader()
    let alertTest = AlertTest()
    var item: Item? = nil
    
    @IBOutlet weak var onEditing: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        onEditing.becomeFirstResponder()
        onEditing.delegate = self
}

//    let urlString = "https://jsonplaceholder.typicode.com/posts"
    
    
//MARK: - BUTTON
    
    @IBAction func onURL(_ sender: Any) {
        urlTask.request()
}

    @IBAction func onAlamofire(_ sender: Any) {
        alamofireLoader.sendAlamofire()
        }
    }

//MARK: - extension

//extension ViewController {
//
//    func presentSearchAlertController(withTitle title: String?, message : String?, style: UIAlertController.Style) {
//        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
//        ac.addTextField { tf in
//            let item = ["birth","occupation"]
//            tf.placeholder = item.randomElement()
//        }
//        let search = UIAlertAction(title: "Search", style: .default) { action in
//            let textField = ac.textFields?.first
//            guard let items = textField?.text else { return }
////            if items != ""
//        }
//        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//
//        ac.addAction(search)
//        ac.addAction(cancel)
//        present(ac, animated: true, completion: nil)
//    }
//}


extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if let text = textField.text, let rangeText = Range(range, in: text) {
//            let updateText = text.
//        }
        guard let text = textField.text else { return true }
        textFieldDelegate?.typingText(text: text)
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        ((textFieldDelegate?.cleanTextField()) != nil)
    }
}

