String url = "https://coolors.co/30292f-5d5e60-77af9c-d54160-eec170";
int slash_index = url.lastIndexOf('/');
String pallate_str = url.substring(slash_index + 1);
String [] arr = split(pallate_str, "-");
color [] arrCoul = new color[arr.length];
for (int i = 0; i < arrCoul.length; i++) {
  arrCoul[i] = color(0xFF000000 | unhex(str(arr[i].charAt(0))+str(arr[i].charAt(1))) << 16 | unhex(str(arr[i].charAt(2))+str(arr[i].charAt(3))) << 8 | unhex(str(arr[i].charAt(4))+str(arr[i].charAt(5))));
}
println(arrCoul);
size(500, 100);
for (int i = 0; i < arrCoul.length; i++) {
  noStroke();
  fill(arrCoul[i]);
  rect(i*100, 0, 100, 100);
}
