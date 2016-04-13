import Foundation
import UIKit

class CustomizedCell : UITableViewCell {
    var product : Product?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addControl() {
        let image : UIImage? = UIImage(data: (product?.picture)!)
        //let imageView : UIImage =
    }
}
