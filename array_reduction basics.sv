//Write a SystemVerilog function that takes a dynamic array of integers as input and returns the sum of all elements using the built-in sum() method.

module tb();
  int dyn[];
  int num;
  int sum;
  initial begin
    num=$urandom_range(3,8);
    dyn=new[num];
    foreach(dyn[i])
      dyn[i]=$urandom_range(0,10);
    $display("printing the dynamic array %0p", dyn);
    sum=dyn.sum();
    $display("sum of array is %0d", sum);
  end
endmodule
