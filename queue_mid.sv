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
    
    
    for(i=0;i<$size(q);i++)begin
      $display("q at idx:0d is %0d",i,q[i]);
      //$display(q[i].id,q[i].to_remove);
      if(q[i].to_remove==1)begin
        $display("queue id %0d has to be removed", q[i].id);
        q.delete(i);
        i=i-1;
      end
      else
        $display("q id %0d is ok",q[i].id);
        
      
    end
      
      
    foreach(q[i])
      $display("Queue id: %0d to_remove:%0b", q[i].id, q[i].to_remove);
  end
 endmodule
        
       
