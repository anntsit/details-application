//
//  Agreement.swift
//  Exam_Try1
//
//  Created by Admin on 08.01.2021.
//

import Fluent
import Vapor
final class Detail: Model, Content
{
    static let schema = "detail"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "agreementDate")
    var agreementDate: String;
    
    @Field(key: "strahSum")
    var strahSum: Double;
    
    @Field(key: "tarifStafka")
    var tarifStafka: Double;
    
    @Field(key: "filial_id")
    var filial_id: UUID?;
    
    @Field(key: "typeStrah_id")
    var typeStrah_id: UUID?;
    
    @Field(key: "client_id")
    var client_id: UUID?;
    
    @Field(key: "strahAgent_id")
    var strahAgent_id: UUID?;
    
    
    init() {
    }
    
    init(id: UUID? = nil, agreementDate: String, strahSum: Double, tarifStafka: Double, filial_id: UUID? = nil, typeStrah_id: UUID? = nil, client_id: UUID? = nil, strahAgent_id: UUID? = nil) {
        self.id = id;
        self.agreementDate = agreementDate;
        self.strahSum = strahSum;
        self.tarifStafka = tarifStafka;
        self.filial_id = filial_id;
        self.typeStrah_id = typeStrah_id;
        self.client_id = client_id;
        self.strahAgent_id = strahAgent_id;
        
    }
}
