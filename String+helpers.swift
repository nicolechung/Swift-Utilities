import UIKit

extension String {

    func split(searchable:String)->Array<String>? {
        return self.componentsSeparatedByString(searchable)
    }

    func startsWith(searchable:String)->Bool {
        return self.hasPrefix(searchable)
    }
    
    func endsWith(searchable:String)->Bool {
        return self.hasSuffix(searchable)
    }
    
    func startAfter(searchable:String)->String? {
        let endAfter = self.rangeOfString(searchable)?.endIndex
        let end = self.endIndex
        let rangeResult = endAfter!..<end
        return self.substringWithRange(rangeResult)
    }
    
    mutating func replace(searchable:String, with:String)->String? {
        let arr = self.split(searchable)
        var result:String = ""
        for (index, elem) in (arr?.enumerate())! {
            if index + 1 < arr!.count {
                result = result + elem + with
            } else {
                result = result + elem
            }
            
        }
        return result
    }
    
}


var example = "Find the day of week"


example.containsString("day")
example.rangeOfString("day")?.startIndex
example.rangeOfString("day")?.endIndex
example.startAfter("the")
example.hasPrefix("Find")
example.replace("day", with: "Monday")
example.split(" ")





