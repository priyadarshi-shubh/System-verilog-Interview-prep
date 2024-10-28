 /*Design a class that has a random integer id that is constrained to be unique each time you randomize it. Implement the functionality so that id retains uniqueness for as many instances as possible until it resets.*/

module tb();
  class rand_class;
    randc int id;
    static int id_q[$];
    constraint r_cl_c {id inside {[0:10]};}
    constraint uniq_id {if(id_q.size()<=10) !(id inside{id_q});}
    
    function void pre_randomize();
    endfunction
    function void post_randomize();
     
      id_q.push_back(id);
      
        
    endfunction
  endclass
  
  
  rand_class r_cl;
  initial begin
    //r_cl=new();
    repeat(15) begin
    r_cl=new();
  r_cl.randomize();
  $display(r_cl.id);
    end
  end
    

endmodule
