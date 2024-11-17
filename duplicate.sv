//Given an integer array nums, return true if any value appears more than once in the array, otherwise return false.
module tb;
  
  function bit duplicate(ref int arr[]);
    int assoc_array [int];
    for(int i=0;i<$size(arr);i++) begin
      if(assoc_array.exists(arr[i]))
        return 1;
      else
        assoc_array[arr[i]]=1;
      
    end
    return 0;
  endfunction
  
  int arr[];
  bit status;
  initial begin
    arr ='{1,2,3,3,4,5,6};
    status =duplicate(arr);
    $display("duplicate %s", status?"found":"not found");
  end
endmodule
