//You are given a dynamic array of integers where each element can have a value between 0 and 100. You are required to write a function in SystemVerilog that:

//Randomizes the dynamic array (with values between 0 and 100).
//Computes the sum of all the even numbers in the array using array reduction methods.
//Additionally, compute the sum of all the elements at odd indices.
 module tb();
  int dyn [];
  int sum_even=0;
  int sum_odd=0;
      function void sum_odd_even (ref int dyn[]);
        sum_even=0;
        sum_odd=0;
    foreach(dyn[i]) begin
      dyn[i]=$urandom_range(0,100);
      $display("the index %0d is %0d",i,dyn[i]);
    end
        
    foreach(dyn[i]) begin
      if(i%2==1)
        sum_odd+=dyn[i];
    end
        //sum_even =dyn.sum() with (item >0);
        sum_even = dyn.sum() with (item % 2 == 0 );//? item : 0);
    $display("sum_odd is %0d sum_even is %0d", sum_odd, sum_even);
  endfunction
        
  initial begin
    int num;
    num=$urandom_range(2,5);
    dyn=new[num];
  
    sum_odd_even(dyn);
    $display("sum even is %0d", sum_even);
  end
    endmodule
