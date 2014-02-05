IVERILOG = /vol/eecs362/iverilog/bin/iverilog

sll_test: ; ${IVERILOG} 2to1_mux_n.v sll.v tests/sll_test.v -o tests/sll_test
srl_test: ; ${IVERILOG} 2to1_mux_n.v srl.v tests/srl_test.v -o tests/srl_test
sra_test: ; ${IVERILOG} 2to1_mux_n.v sra.v tests/sra_test.v -o tests/sra_test
mult_test: ; ${IVERILOG} fulladder.v mult.v tests/mult_test.v -o tests/mult_test
equal_test: ; ${IVERILOG} sets.v tests/equal_test.v -o tests/equal_test
greaterThan_test: ; ${IVERILOG} sets.v tests/greaterThan_test.v -o tests/greaterThan_test
greaterEqual_test: ; ${IVERILOG} sets.v tests/greaterEqual_test.v -o tests/greaterEqual_test
lessThan_test: ; ${IVERILOG} sets.v tests/lessThan_test.v -o tests/lessThan_test
lessEqual_test: ; ${IVERILOG} sets.v tests/lessEqual_test.v -o tests/lessEqual_test
