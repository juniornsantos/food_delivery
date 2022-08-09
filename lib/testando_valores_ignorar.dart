void main (){
  var myMap={
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
  print(myMap ["name"]);
  print(myMap ["address"]);
  
  
  var addressList = myMap["address"];
  
  (addressList as List).forEach ((e){
    print(e["Country"]);
  });
}