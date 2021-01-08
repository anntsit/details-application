import Fluent

//struct CreateTodo: Migration {
//    func prepare(on database: Database) -> EventLoopFuture<Void> {
//        return database.schema("todos")
//            .id()
//            .field("title", .string, .required)
//            .create()
//    }
//    try database.create(self) { builder in
//        builder.foreignKey("user_id", references: "id", on: User.self)
//    }
//
//    func revert(on database: Database) -> EventLoopFuture<Void> {
//        return database.schema("todos").delete()
//    }
//}
