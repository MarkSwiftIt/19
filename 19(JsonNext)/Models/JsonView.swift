//
//  Json.swift
//  19(JsonNext)
//
//  Created by Mark Goncharov on 27.03.2022.
//

import Foundation

public class JsonView {

    public var birth: Int?
    public var occupation: String?
    public var name: String?
    public var lastname: String?
    public var country: String?
    
    init(birth: Int, occupation: String, name: String, lastname: String, country: String) {
        self.birth = birth
        self.occupation = occupation
        self.name = name
        self.lastname = lastname
        self.country = country
    }
    
    
public class func modelsDictionaryArray(array: NSArray) -> [JsonView] {
    var models: [JsonView] = []
    for item in array
    {
        models.append(JsonView(dictionary: item as! NSDictionary)!)
    }
    return models
    }
    
    
required public init?(dictionary: NSDictionary) {
    birth = dictionary["birth"] as? Int
    occupation = dictionary["occupation"] as? String
    name = dictionary["name"] as? String
    lastname = dictionary["lastname"] as? String
    country = dictionary["country"] as? String
    }
    

public func dictionaryRep() -> NSDictionary {
    let dictionary = NSMutableDictionary()
        
    dictionary.setValue(self.birth, forKey: "birth")
    dictionary.setValue(self.occupation, forKey: "occupation")
    dictionary.setValue(self.name, forKey: "name")
    dictionary.setValue(self.lastname, forKey: "lastname")
    dictionary.setValue(self.country, forKey: "country")
        
    return dictionary
    }
}


