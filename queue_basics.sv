//queue basic functions and syntax
module tb();
  typedef logic [2:0] my_data_type;
  my_data_type q[$]; //no need to do new for queue
  initial begin
    int num;
    repeat(5)begin
      num=$urandom_range(0,6);
      $display("pushing %0d in queue", num);
      q.push_back(num); //push the num to back of queue
    end
    //foreach(q[i])
    $display("queue contents are %0p",q);
    q.push_front(7);
    $display("queue contents are %0p",q);
    q.pop_back();
    $display("queue contents are %0p",q);
    q.insert($size(q)-1,0);
    $display("queue contents are %0p",q);
  end
endmodule
