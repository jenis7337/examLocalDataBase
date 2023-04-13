import Foundation
struct Model{
    var id : Int
    var name : String
}
class fmdbhelper {
    static var file : FMDatabase!
    static func createFile(){
        var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        x.appendPathComponent("My FMDB File1.db")
        file = FMDatabase(url: x)
        file.open()
        print(x.path)
        createTable()
    }
    static func createTable(){
        let q = "Create Table if not exists Students (name text ,id integer)"
        try? file.executeUpdate(q, values:nil)
        print("create table")
    }
    static func addData(name : String , id : Int){
        let q = "insert into Students values ('\(name)' ,\(id))"
        try? file.executeUpdate(q, values:[name,id])
        print("Add data")
        
    }
    static func getData() -> [Model]{
        var arr = [Model]()
        let q = "select * from Students"
        if let data =  try? file.executeQuery(q, values:nil){
            while data.next(){
                let name = data.object(forColumn: "name") as? String ?? ""
                let id = data.object(forColumn: "id") as? Int ?? 0
                let obj = Model(id: id, name: name)
                arr.append(obj)
            }
        }
        return arr
    }
    static func deleteData(name : String , id : Int){
        let q = "DELETE FROM Students WHERE id = \(id)"
        try? file.executeUpdate(q, values: nil)
        print("Data Delete")
    }
}
