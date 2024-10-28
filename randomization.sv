/*Design a class with two dynamic arrays, even_array and odd_array. Write a constraint that randomizes these arrays with values between 1 and 50 such that all elements in even_array are even and all in odd_array are odd, with no repeated elements between or within the arrays. Additionally, both arrays should have the same length, which should also be randomized.*/
module tb();
  class arr;
    randc logic [7:0] even_array[];
    randc logic [7:0] odd_array[];
    rand logic [7:0] size;
    constraint even_arr_c {foreach(even_array[i])
      even_array[i]%2==0;
      //even_array inside {[1:50]};
    }
    constraint even_array_mem_c {foreach(even_array[i])
      even_array[i] inside {[1:50]};}
    constraint odd_array_mem_c {foreach(odd_array[i])
      odd_array[i] inside {[1:50]};}
    constraint odd_arr_c {foreach(odd_array[i])
      odd_array[i]%2==1;
      //odd_array inside {[1:50]};
    }
    constraint arr_size_c {size inside {[2:6]};
                           even_array.size==size; odd_array.size==size;}
  endclass
    arr arr_h;
    initial begin
      arr_h =new();
      arr_h.randomize();
      $display("displaying arr_even %0p arr_odd %0p", arr_h.even_array, arr_h.odd_array);
    end
endmodule
