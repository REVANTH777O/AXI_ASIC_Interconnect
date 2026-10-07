# AXI ASIC Interconnect — RTL to GDSII Implementation

## Overview

This project presents a complete RTL-to-GDSII ASIC implementation of a low-latency AXI-based interconnect using the SKY130 open-source Process Design Kit (PDK) and OpenLane ASIC flow.

The design supports pipelined AXI communication using valid-ready handshake protocol and demonstrates a complete ASIC physical design flow including:

- RTL Design
- Functional Verification
- Logic Synthesis
- Floorplanning
- Placement
- Clock Tree Synthesis (CTS)
- Routing
- DRC Verification
- GDSII Generation

This work was developed as part of an IEEE conference research project focused on scalable and energy-efficient SoC communication architectures.
---

# ASIC Design Flow

```text
RTL Design
   ↓
Functional Simulation
   ↓
Logic Synthesis
   ↓
Floorplanning
   ↓
Placement
   ↓
Clock Tree Synthesis
   ↓
Routing
   ↓
DRC Verification
   ↓
GDSII Generation
```

---

# Tools Used

| Tool | Purpose |
|------|----------|
| OpenLane | ASIC RTL-to-GDSII Flow |
| OpenROAD | Physical Design |
| Yosys | Logic Synthesis |
| Magic VLSI | Layout + DRC |
| Netgen | LVS |
| SKY130 PDK | Standard Cell Library |

---

# Final Implementation Results

| Parameter | Value |
|-----------|-------|
| Total Standard Cells | 54 |
| Flip-Flops | 17 |
| Chip Area | 661.88 µm² |
| Worst Setup Slack | +6.75 ns |
| Worst Hold Slack | +0.15 ns |
| DRC Violations | 0 |
| CTS Buffers Inserted | 3 |

---

# Repository Structure

```text
AXI_ASIC_GITHUB/
│
├── rtl/            → Verilog RTL source files
├── reports/        → Synthesis and timing reports
├── logs/           → OpenLane execution logs
├── layout/         → DEF / LEF / layout databases
├── gds/            → Final GDSII layout
├── screenshots/    → Layout and routing screenshots
├── scripts/        → Flow automation scripts
└── docs/           → Documentation and paper files
```

---

# Physical Design Stages Included

✅ Synthesis  
✅ Floorplanning  
✅ Placement  
✅ Clock Tree Synthesis  
✅ Routing  
✅ DRC Clean Layout  
✅ GDSII Generation  

---

# Author

**Tadikonda Revanth Roy Naidu**  
Department of Electronics and Communication Engineering  
Amrita Vishwa Vidyapeetham

---

# License

This project is intended for academic and research purposes.
