//Given a dynamic array of 4-bit logic values, write a function that computes the bitwise OR across all the elements using the or() array reduction method.
//Given a dynamic array of 4-bit logic values, write a function that computes the bitwise OR across all the elements using the or() array reduction method.
module tb();
  logic[3:0] dynarray [];
  logic[3:0] out_or;
  initial begin
    int num;
    num=$urandom_range(3,5);
    dynarray=new[num];
    foreach(dynarray[i])
      dynarray[i]=$urandom_range(0,15);
    foreach(dynarray[i])
      $display("Printing the contents of array %b",  dynarray[i]);
    out_or=dynarray.or();
    $display("Ouput of bitwise or is %0b",out_or);
  end
endmodule
