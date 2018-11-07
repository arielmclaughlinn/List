import Foundation
import UIKit

class Model {
    //Singleton
    static let shared = Model()
    private init() {}
    
    // this is the var item where we are adding or changing the array
    private(set) var items: [String] = []
    
    // adds a new item
    func add(_ item: String) {
        items.append(item)
    }
    
    // resets your list
    func resetItems() {
        items.removeAll()
    }
    
}
