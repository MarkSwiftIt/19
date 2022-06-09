//
//  Alamofire.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 02.04.2022.
//

import UIKit
import Alamofire

class AlamofireLoader {
    
    func sendAlamofire() {
        
        
        let item = Item(birth: 1987,
                        occupation: "Artist",
                        name: "Kiyohara",
                        lastname: "Yukinobu",
                        country: "Russia")


        AF.request(
            "https://jsonplaceholder.typicode.com/posts",
            method: .post,
            parameters: item,
            encoder: JSONParameterEncoder.default
        ).responseJSON { response in
            print(response)
        }
    }
}
