# 8-bit ALU: RTL-to-GDS Implementation Using SKY130

## ABOUT :

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL and takes the design through a complete RTL-to-GDS physical-design flow using OpenLane and the SKY130A open-source PDK.

The objective is to understand the complete ASIC implementation process, from RTL description and functional verification to synthesis, floorplanning, placement, routing, and physical verification.

## Architecture

The ALU supports eight operations selected using a 3-bit operation code.

| Opcode | Operation |
|---|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Bitwise AND |
| 011 | Bitwise OR |
| 100 | Bitwise XOR |
| 101 | Bitwise NOT |
| 110 | Logical left shift |
| 111 | Logical right shift |

### Status flags

- Zero: Indicates whether the result is zero.
- Carry: Reports the arithmetic or shift carry/borrow convention implemented in the RTL.
- Overflow: Reports arithmetic overflow.
- Negative: Represents the most significant bit of the result.

## Tools and Technology

- Verilog HDL
- Icarus Verilog
- Yosys
- OpenLane
- OpenROAD
- SKY130A PDK
- SKY130 High Density Standard Cell Library
- KLayout
- Linux

## Implementation Flow

The design was implemented using the OpenLane Classic flow.

The major stages included:

1. RTL linting and validation
2. Logic synthesis
3. Standard-cell technology mapping
4. Floorplanning
5. Power distribution network generation
6. Global placement
7. Detailed placement
8. Global routing
9. Detailed routing
10. Parasitic extraction
11. Timing analysis
12. GDS generation
13. Design Rule Check (DRC)
14. Layout Versus Schematic (LVS)
15. Antenna verification

## Synthesis Results

| Parameter | Result |
|---|---:|
| Standard-cell instances | 136 |
| Synthesized cell area | 1241.1904 µm² |
| Unmapped cells | 0 |
| Synthesis check errors | 0 |

Note: These are the synthesis-stage metrics. Final post-placement and post-routing metrics are reported separately.

## Physical Verification

The completed OpenLane run reported:

| Verification | Result |
|---|---|
| DRC | PASS |
| LVS | PASS |
| Antenna | PASS |

These results are from the configured OpenLane flow and should not be interpreted as independent foundry manufacturing signoff.

## Layout

The final GDS layout was generated and inspected using KLayout.

Add screenshots of:
- Final chip layout
- Zoomed-in standard-cell placement
- Metal routing and layer visualization

## Repository Structure

```text
rtl/          Verilog implementation
tb/           Functional testbench
simulation/   Simulation output
config/       OpenLane configuration
results/      Selected reports and layout screenshots
docs/         Design and implementation documentation
```

## Future Improvements

- Compare alternative ALU architectures.
- Explore different adder implementations.
- Optimize area and timing.
- Study routing congestion and parasitic effects.
- Compare different placement utilization targets.
- Perform more detailed power and timing analysis.

## Learning Outcomes

This project provided practical experience with:

- RTL design and functional verification
- Standard-cell synthesis
- ASIC floorplanning and placement
- Power distribution network generation
- Physical routing
- Parasitic extraction
- Static timing analysis
- GDS layout inspection
- Physical verification using DRC and LVS


