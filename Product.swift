import Foundation

class Product {
    var id : Int
    var name : String?
    var price : Double
    var quantity : Int
    var description : String?
    var status : ProductStatus
    
    init() {
        self.id = 0
        self.name = nil
        self.price = 0.0
        self.quantity = 0
        self.description = nil
        self.status = .ToBuy
    }
    
    init?(id: Int, name : String, price : Double, quantity : Int, description : String, status : ProductStatus) {
        self.id = id
        self.name = name
        self.price = price
        self.quantity = quantity
        self.description = description
        self.status = status
        
        if id == 0 || name.isEmpty {
            return nil
        }
    }
}