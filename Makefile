sll_test: ; /vol/eecs362/iverilog/bin/iverilog 2to1_mux_n.v sll.v tests/sll_test.v -o tests/sll_test
srl_test: ; /vol/eecs362/iverilog/bin/iverilog 2to1_mux_n.v srl.v tests/srl_test.v -o tests/srl_test
sra_test: ; /vol/eecs362/iverilog/bin/iverilog 2to1_mux_n.v sra.v tests/sra_test.v -o tests/sra_test
mult_test: ; /vol/eecs362/iverilog/bin/iverilog fulladder.v mult.v tests/mult_test.v -o tests/mult_test
equal_test: ; /vol/eecs362/iverilog/bin/iverilog sets.v tests/equal_test.v -o tests/equal_test
