//
//  StrahAgent.swift
//  Exam_Try1
//
//  Created by Admin on 08.01.2021.
//

import Fluent
import Vapor
final class Provider: Model, Content
{
    static let schema = "provider"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String;
    
    @Field(key: "surname")
    var surname: String;
    
    @Field(key: "address")
    var address: String;
    
    @Field(key: "phone")
    var phone: String;
    
    @Field(key: "filial_id")
    var filial_id: UUID?;
    
    init() {
    }
    
    init(id: UUID? = nil, name: String, surname: String, address: String, phone: String, filial_id: UUID? = nil) {
        self.id = id;
        self.name = name;
        self.surname = surname;
        self.address = address;
        self.phone = phone;
        self.filial_id = filial_id;
        
    }
}
