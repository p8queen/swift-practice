import Foundation

class Point{
   var x =  0.0 
   var y = 0.0
   
   func getX()->Double{
       return x
   }
   func setX(a: Double){
       x = a
   }
    func getY()->Double{
       return y
   }
   func setY(a: Double){
       y = a
   }        
    
}


class User{
    var name = ""
    var lastName = ""
    var devices: [String] = []
    
    init(_ name: String, _ lastName: String){
        self.name = name
        self.lastName = lastName
    }
    func fullName()->String{ return name + " " + lastName}
    func getDevices()->[String]{ return devices }
    func addDevice(d: String){
        devices.append(d)
    }
    func addManyDevices(s: String){
        devices += s.componentsSeparatedByString(",")
                        
    }
}


//main
var p = Point()
print("x: \(p.x)")
p.setX(12)
p.setY(23)
print("x: \(p.x), y: \(p.y)")
var q = Point()
print("qx: \(q.x), qy: \(q.y)")
print("\(p.x + p.y)")
var u = User("Maria", "Zira")
print( "nombre: \(u.fullName())" )
u.addDevice("iphone")
u.addDevice("ipad")
u.addManyDevices("phone,TV,iMac,Apple TV")
print( "devices: \(u.getDevices())" )
