/*Write a task and a function for a simple counter. The task should increment a counter value by a specified amount, while the function returns the counter’s current value. Demonstrate calling the task multiple times and printing the final result using the function. Consider edge cases for large numbers.*/
module tb();
  int count_value=0;
  
  task increment_counter(ref int count_value);
    logic [2:0] random_val;
    random_val=$urandom_range(0,7);
    $display("Initial count value of counter is %0d. Incrementing it by %0d", count_value, random_val);
    count_value=count_value+random_val;
    $display("Counter value after incrementing is %0d", count_value);
  endtask
  
  function void current_counter (input int count_value);
    $display("COunter current is %0d", count_value);
  endfunction
  
  initial begin
    increment_counter(count_value);
    current_counter(count_value);
    increment_counter(count_value);
    current_counter(count_value);
    increment_counter(count_value);
    current_counter(count_value);
    increment_counter(count_value);
    current_counter(count_value);
  end
endmodule
