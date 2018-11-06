import UIKit
import Foundation

class Model {
    static let shared = Model()
    private init() {}
    
    private(set) var items: [String] = []
    
    func add(_ item: String) -> String {
        // add the item to your items list
      return item
    }
    
    func resetItems() {
        // reset your items list here
    }
    
}
