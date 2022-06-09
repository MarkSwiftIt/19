//
//  URLSesion.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 02.04.2022.
//

import Foundation
import UIKit

class URLTask {
    
    func request() {
            
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
            
        let userData = ["birth": 1987,
                        "occupation": "Artist",
                        "name": "Kiyohara",
                        "lastname": "Yukinobu",
                        "country": "Russia"] as [String : Any]
            
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
        guard let httpBody = try? JSONSerialization.data(withJSONObject: userData, options: [])
        else { return }
        request.httpBody = httpBody
            
            
            
        let session = URLSession.shared
        session.dataTask(with: request) { data,
                                           response,
                                          error in
            guard
                  let response = response,
                  let data = data
                  else { return }
            print(response)
            
            do{
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
        
        
        
//
//
//        URLSession.shared.dataTask(with: request) { data,
//                                                    response,
//                                                    error in
//            guard URL(string: urlString) != nil else { return }
//
//                DispatchQueue.main.async {
//                    if let error = error {
//                        print("Error")
//                        completion(.failure(error))
//                        return
//                    }
//                    guard let data = data else { return }
//                    do {
//                        let item = try JSONDecoder().decode(Item.self,
//                                                              from: data)
//                        completion(.success(item))
//                    } catch let jsonError {
//                        completion(.failure(jsonError))
//                        print("Error", jsonError)
//                    }
//                }
//            } .resume()
        }
    }

