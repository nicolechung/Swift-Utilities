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
    
    mutating func padStart(pad:Int, with:String?)->String {
        var result = ""
        let length = self.characters.count
        
        if pad < length { return self }
        else {
            if let optionalPad = with {
                var i = 0
                let limit = pad - length
                while i < limit {
                    result = result + optionalPad
                    i = result.characters.count
                }
                
                if length + result.characters.count <= pad {
                    // add letter by letter
                    i = length + result.characters.count
                    
                    for letter in optionalPad.characters.enumerate() {
                        while i < pad {
                            result += String(letter.element)
                            i += 1
                        }
                    }
                }
                
            } else {
                let limit = pad - length + 1
                for _ in 1..<limit {
                    result = result + " "
                }
            }
            self = result + self
        }
        return self
    }
    
    mutating func leftPad(pad:Int, with:String?)-> String {
        return self.padStart(pad, with: with)
    }
    
}