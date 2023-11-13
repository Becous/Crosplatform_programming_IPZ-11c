void main(){
  List<String> nameList = ['Andry', 'Moneta', 'Andry', 'Roman', 'Roman', 'Victor'];

  print(uniqueList(nameList));
}

List<String> uniqueList(List<String> listName){
  List<String> uniqueName = [];

  for(String name in listName){
    if(!uniqueName.contains(name)){
      uniqueName.add(name);
    }
  }

  return uniqueName;
}