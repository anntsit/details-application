//
//  File.swift
//  
//
//  Created by Admin on 08.01.2021.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateClient: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        
        database.schema("client")
            .id()
            .field("name", .string)
            .field("surname", .string)
            .field("address", .string)
            .field("phone", .string)
            .create()
        
    }
    
    // undo
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("client").delete()
    }
    
}
