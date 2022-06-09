//
//  MetodJson.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 28.03.2022.
//

import Foundation

struct Json {

let model = JsonView(birth: 1987, occupation: "Artist", name: "Kiyohara", lastname: "Yukinobu", country: "Russia")

let jsonData = try? JSONSerialization.data(
    withJSONObject: [
        model.dictionaryRep()
]
)

var request = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!)
request.httpMethod = "POST"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
request.httpBody = jsonData

URLSession.shared.dataTask(with: request) { [weak self] (data, response, error) in
guard let data = data, error == nil else {
    DispatchQueue.main.async {
        self?.displayFaiure()
    }
    return
}
DispatchQueue.main.async {
    self?.displaySuccess()
}
let responceJSON = try? JSONSerialization.jsonObject(with: data, options: [])
if let responceJSON = responceJSON as? [String: Any] {
    print(responceJSON)
}
}.resume()


}
