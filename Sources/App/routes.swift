import Fluent
import Vapor

func routes(_ app: Application) throws {
        
    
    app.get("client") { req in
        Client.query(on: req.db).all()
    }
    app.get("agreement") { req in
        Agreement.query(on: req.db).all()
    }
    app.get("filial") { req in
        Filial.query(on: req.db).all()
    }
    app.get("strahAgent") { req in
        StrahAgent.query(on: req.db).all()
    }
    app.get("typeStrah") { req in
        TypeStrah.query(on: req.db).all()
    }
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    app.post("client") { req -> EventLoopFuture<Client> in
            
            let client = try req.content.decode(Client.self)
            return client.create(on: req.db).map { client }
            }
    
    
    app.post("agreement") { req -> EventLoopFuture<Agreement> in
            
            let agreement = try req.content.decode(Agreement.self)
            return agreement.create(on: req.db).map { agreement }
            }
    
    app.post("filial") { req -> EventLoopFuture<Filial> in
            
            let filial = try req.content.decode(Filial.self)
            return filial.create(on: req.db).map { filial }
            }
    
    app.post("strahAgent") { req -> EventLoopFuture<StrahAgent> in
            
            let strahAgent = try req.content.decode(StrahAgent.self)
            return strahAgent.create(on: req.db).map { strahAgent }
            }
    
    app.post("typeStrah") { req -> EventLoopFuture<TypeStrah> in
            
            let typeStrah = try req.content.decode(TypeStrah.self)
            return typeStrah.create(on: req.db).map { typeStrah }
            }
    
    
    
    
//    app.get("hello") { req -> String in
//        return "Hello, world!"
//    }

    //try app.register(collection: TodoController())
}
