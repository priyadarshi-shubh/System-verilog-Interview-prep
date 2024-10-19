//Write sv code to delete the queue entry which has to_removed bit set to 1 from a queue

class widget;
  int id;
   bit to_remove;
endclass

module top;
  widget q[$];
  initial begin
    widget w;
    int num,i;
    num=$urandom_range(20,40);
    for (int i=0;i<num;i++) begin
      w=new;
      w.id=i;
      w.to_remove=$urandom_range(0,1);
      q.push_back(w);
      $display("widget id is %0d, to remove %b", w.id,w.to_remove);
    end
//write sv code to make sure all queue entry with to_remove bit 1 is deleted
