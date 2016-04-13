import Foundation

class Product {
    var id : Int
    var name : String?
    var price : Double
    var quantity : Int
    var description : String?
    var status : ProductStatus
    var picture : NSData?
    
    init() {
        self.id = 0
        self.name = nil
        self.price = 0.0
        self.quantity = 0
        self.description = nil
        self.status = .ToBuy
        self.picture = nil
    }
    
    init?(id: Int, name : String, price : Double, quantity : Int, description : String, status : ProductStatus, picture : NSData) {
        self.id = id
        self.name = name
        self.price = price
        self.quantity = quantity
        self.description = description
        self.status = status
        self.picture = picture
        
        if id == 0 || name.isEmpty {
            return nil
        }
    }
}