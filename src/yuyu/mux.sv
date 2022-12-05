module mux (
  input a,
  input b, 
  input s,
  output c
);
  assign c = s ? a : b;
endmodule
