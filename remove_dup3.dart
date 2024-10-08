//Remove Duplicate Users Based on Multiple Criteria
//You have a list of users represented as maps.
//Each user has id, name, and age.
//Remove users with the same name and age,
//but keep the first one that appears in the list.

void main() {
  List<Map<String, dynamic>> userList = [
    {
      'id': 1,
      'name': 'Alice',
      'age': 25,
    },
    {
      'id': 8,
      'name': 'Charlie',
      'age': 22,
    },
    {
      'id': 8,
      'name': 'Charlie',
      'age': 21,
    },
    {
      'id': 6,
      'name': 'Diana',
      'age': 28,
    },
    {
      'id': 2,
      'name': 'Bob',
      'age': 30,
    },
    {
      'id': 3,
      'name': 'Charlie',
      'age': 22,
    },
    {
      'id': 4,
      'name': 'Diana',
      'age': 28,
    },
    {
      'id': 5,
      'name': 'Eve',
      'age': 35,
    }
  ];
  removeUsersWithSameNameAndAge(list: userList);
}

void removeUsersWithSameNameAndAge({
  required List<Map<String, dynamic>> list,
}) {
  // this viewed map is for adding the items which viewed by user
  Map<String, Map<String, dynamic>> viewed = {};
  // so to find out the duplicates, we need to iterate across the list of map
  for (var map in list) {
    // we can go through each map
    // here we need to find that if any of the user have the same name and same age
    // name variable contains the name of the current user in map
    final name = map['name'];
    // age variable contains the age of the current user in map
    final age = map['age'];
    // so here we need to check the age and name
    // so we are using a map for storing the viewed one
    // so as a key here I am using the name and age as a string
    String key = '$name-$age';
    // here we only need to add the not seen map to the viewed map
    // for the we can check if the key is already available in the viewed map
    // we don't need to add it again
    // if the key is not available in the viewed map
    // we can add it to the viewed map
    if (!viewed.containsKey(key)) {
      viewed[key] = map;
    } else {
      // here if the key is already available in the viewed map
      // we will come to this else condition
      // first we need to find the map that is already saved in the viewed map
      // for that we can use the key
      // so saved map is holding that value
      final savedMap = viewed[key];
      // savedMapAge variable contains the age of the saved map
      final savedMapAge = savedMap!['age'];
      // checking savemap age and dup map age are equal
      if (savedMapAge == age) {
        // then we can remove that map from the viewed map using the key
        // because before we found that the key is already available in the viewed map
        // so we can use the key
        viewed.remove(key);
      }
    }
  }
  // we can print the viewed map after that
  viewed.forEach((key, val) {
    print("$key: $val");
  });
}
