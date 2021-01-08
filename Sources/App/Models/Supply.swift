//
//  TypeStrah.swift
//  Exam_Try1
//
//  Created by Admin on 08.01.2021.
//

import Fluent
import Vapor
final class Supply: Model, Content
{
    static let schema = "supply"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String;
    
    @Field(key: "percentOfType")
    var percentOfType: Double;
    
    @Field(key: "percentOfRisk")
    var percentOfRisk: Double;
    
    init() {
    }
    
    init(id: UUID? = nil, name: String, percentOfType: Double, percentOfRisk: Double) {
        self.id = id;
        self.name = name;
        self.percentOfType = percentOfType;
        self.percentOfRisk = percentOfRisk;
        
    }
}
