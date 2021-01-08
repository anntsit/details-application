//
//  Filial.swift
//  Exam_Try1
//
//  Created by Admin on 08.01.2021.
//

import Fluent
import Vapor
final class Order: Model, Content
{
    static let schema = "order"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String;
    
    @Field(key: "address")
    var address: String;
    
    @Field(key: "phone")
    var phone: String;
    
    
    init() {
    }
    
    init(id: UUID? = nil, name: String, address: String, phone: String) {
        self.id = id;
        self.name = name;
        self.address = address;
        self.phone = phone;
        
    }
}
