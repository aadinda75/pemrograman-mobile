void main() {
  // Langkah 1 & 2 - Spread Operator Dasar
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);      
  print(list2);       
  print(list2.length);  
  print('-------------------------------');

  // Langkah 3 - Null-Aware Spread Operator
  var list1 = [1, 2, null];
  print(list1);                  
  var list3 = [0, ...list1];
  print(list3.length);     
  print('-------------------------------');    

  // NIM pakai spread operator (ganti dengan NIM kamu)
  var nim = [2, 4, 4, 1, 0, 7, 0, 6, 0, 1, 3, 7];
  var listNim = [0, ...nim];
  print(listNim);     
  print(listNim.length); 
  print('-------------------------------');

  // Langkah 4 - Collection If
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav); 
  var navFalse = ['Home', 'Furniture', 'Plants', if (false == true) 'Outlet'];
  print(navFalse); 
    print('-------------------------------');

  // Langkah 5 - Collection If + Case
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
  login = 'User';
  nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2); 
  print('-------------------------------');

  // Langkah 6 - Collection For
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings); 
}