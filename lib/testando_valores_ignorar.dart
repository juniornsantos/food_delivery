void main (){
  var myMap= {
    "name":"Junior",
    "age":25,
    "city":"Pereiro",
    "address":[
       {
         "Country": "Brasil", 
         "City":"Pereiro"
       },
       {
         "Country": "China", 
         "City":"Shanghai"
       }, 
     ]
  };
  var obj = Person.fromJson(myMap);
  
  var myAddress = obj.address;
  myAddress!.map((e){
    print(e.country);
    
  }).toList();
  
}

class Person {
  String? name;
  int? age;
  String? city;
  List<Address>? address;
  
  Person ({this.name, this.age, this.city, this.address});
  
  Person.fromJson(Map<String, dynamic> json){
    name=json['name'];
    age=json['age'];
    city=json['city'];
    if (json ['address']!= null){
      address=<Address>[];
      (json ['address'] as List ).forEach((e){
        address!.add(Address.fromJson(e));
        
        
      });
    }
  }
}

class Address {
  String? country;
  String? city;
  
  Address ({this.country, this.city});
  
   Address.fromJson(Map<String, dynamic> json){
    country =json['Country'];
    city=json['city'];
  }
  
}













