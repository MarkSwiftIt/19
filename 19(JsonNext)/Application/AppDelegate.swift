//
//  AppDelegate.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 27.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}












//                self?.displayFaiure()
//            return
//        }
//                self?.displaySuccess()
//        }
//    }
//            func displayFaiure() {
//                onEditing.textColor = .red
//                onEditing.text = "Faiure"
//
//                  }
//            func displaySuccess() {
//                view.onEditing.textColor = .green
//                view.onEditing.text = "Success"
//        }
//
//            URLSession.shared.dataTask(with: item) { data,
//                                                        response,
//                                                        error in
//                guard URL(string: urlString) != nil else { return }
//
//                    DispatchQueue.main.async {
//                        if let error = error {
//                            print("Error")
//                            completion(.failure(error))
//                            return
//                        }
//                        guard let data = data else { return }
//                        do {
//                            let item = try JSONDecoder().decode(Item.self,
//                                                                  from: data)
//                            completion(.success(item))
//                        } catch let jsonError {
//                            completion(.failure(jsonError))
//                            print("Error", jsonError)
//                        }
//                    }
//                self?.displayFaiure()
//            return
//            }
//            self?.displaySuccess()


//    private func displayFaiure() {
//        onEditing.textColor = .red
//        onEditing.text = "Faiure"
//
//          }
//
//    private func displaySuccess() {
//        onEditing.textColor = .green
//        onEditing.text = "Success"
//}
//    let alertController = UIAlertController(title: "Text",
//                                            message: "Faiure",
//                                            preferredStyle: .alert)
//
//    let dismissAction = UIAlertAction(title: "Ok",
//                                      style: .default,
//                                      handler: { action in print("OK")
//    })
//
//    alertController.addAction(dismissAction)
//    self?.present(alertController, animated: true, completion: nil)
//    let alertController = UIAlertController(title: "Text",
//                                            message: "Success",
//                                            preferredStyle: .alert)
//
//    let dismissAction = UIAlertAction(title: "Ok",
//                                      style: .default,
//                                      handler: { action in print("OK")
//    })
//
//    alertController.addAction(dismissAction)
//    self?.present(alertController, animated: true, completion: nil)
//}
//debugPrint(response)

//    func sendRequest(json: Data) {
//        let model = JsonView(birth: 1987,
//                             occupation: "Artist",
//                             name: "Kiyohara",
//                             lastname: "Yukinobu",
//                             country: "Russia")
//        _ = try? JSONSerialization.data(
//            withJSONObject: [
//                model.dictionaryRep()
//        ]
//        )
//    }



//
//        response { [weak self] response in
//            guard response.error == nil else {
//                self
//                return
//            }
//            self
//            debugPrint(response)
//        }
