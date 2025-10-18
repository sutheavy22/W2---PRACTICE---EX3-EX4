class customDuration{
 final  int _milliseconds;
 
 customDuration(this._milliseconds);

 customDuration.fromHours(int hours) : _milliseconds = hours * 60 *60 *1000;
 customDuration.fromMinutes(int minutes) : _milliseconds = minutes *60 *1000;
 customDuration.fromSeconds(int seconds) : _milliseconds = seconds *1 *1000;

int get milliseconds => _milliseconds;

 // operator inside the class
bool operator > (customDuration other){
  return _milliseconds > other._milliseconds;
}
customDuration operator + (customDuration other) {
  return customDuration(_milliseconds + other._milliseconds);
}
customDuration operator - (customDuration other){
  return customDuration(_milliseconds - other._milliseconds);
}

}
void main(){
  var d1 = customDuration.fromHours(1);
  var d2 = customDuration.fromMinutes(30);
  var sum = d1 + d2;

  print('d1 milliseconds: ${d1.milliseconds}');
  print('d2 milliseconds: ${d2.milliseconds}');
  print('sum milliseconds: ${sum.milliseconds}');
  print('d1 > d2: ${d1 > d2}');
}
 