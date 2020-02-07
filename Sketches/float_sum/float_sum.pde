//int is = Integer.sum(2, 3);
//println(is);

//float fs = Float.sum(0.1, 0.3);
//println(fs);

float fraction1 = 0;
float fraction2 = 0;
int total = 0;

for (int i = 0; i < 100; i++) {
  fraction1 += 0.1;
  fraction2 = Float.sum(fraction2, 0.1);
  total++;
}

println(fraction1);
println(fraction2);
println(total/10.0);
println();

println(fraction1 == 10);
println(fraction2 == 10);
println(total/10.0 == 10);
