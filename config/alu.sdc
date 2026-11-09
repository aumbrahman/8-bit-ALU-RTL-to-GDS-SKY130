# Virtual clock: timing reference only.
# The ALU has no physical clock input.
create_clock -name virtual_clk -period 10.0

# Input arrival times
set_input_delay -clock virtual_clk -max 0.5 [get_ports {a[*] b[*] op[*]}]
set_input_delay -clock virtual_clk -min 0.0 [get_ports {a[*] b[*] op[*]}]

# Output required times
set_output_delay -clock virtual_clk -max 0.5 [all_outputs]
set_output_delay -clock virtual_clk -min 0.0 [all_outputs]

# Assume 100 ps input transition
set_input_transition 0.1 [all_inputs]

# Assume 5 fF load on each output
set_load 0.005 [all_outputs]
