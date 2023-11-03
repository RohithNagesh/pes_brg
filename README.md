# Baud rate generator
# TABLE OF CONTENTS
- [Introduction](#introduction)
- [Working](#working)
- [Functional Simulation](#functional-simulation)
- [Synthesis](#synthesis)
- [Gate Level Simulation](#gate-level-simulation)
- [Physical Design](#physical-design)
- [Results](#Results)
- [KLayout](#KLayout)

## Introduction
The Baud rate generator is nothing but a frequency divider. It helps two devices in communicating with each other. When data is sent from transmitter to receiver then the data at the receiver side is sampled at a particular baud rate. If there is a high mismatch between the baud rate of transmitter and receiver then the sampling will not happen at the centre of the bit period and there will be an offset. Due to the offset, there will be information that will be missed and communication will not occur efficiently. For example, if transmitter transmit at a particular rate and the receiving device only expects half of that data rate then half of the information will be lost.
<p align="center">
  <img src="https://github.com/RohithNagesh/pes_brg/assets/103078929/e2dd54db-008e-48b3-be09-3a8cc74afa30" width="500"/>
</p>
<p align="center">
  Fig 1. Baud Rate Generator Block Diagram
</p>

## Working 
The block diagram of the baud rate generator is given in the fig 1. The input to the system is Clock, Baud rate select line and reset. The output is the clock with the frequency corresponding to the baud rate. 
The system works on positive edge triggered clock and uses select line to decide the clock frequency for the corresponding selected Baud Rate to be give as output. A counter value is calculated based on the system clock and 115200bps baud rate which is DIV1. For 115200 bps, when the counter reaches DIV1 the clock pulse is negated. For 38400bps, the clock pulse is negated when the counter reaches DIV1 twice. For 19200bps, the clock pusle is negated when the counter reaches DIV1 5 times. For 9600bps, the clock pulse is negated when the counter reaches DIV1 11 times.<br>
The clock output is set to 0 when the reset is set to high.
### Installing Software 
```
sudo apt-get install git 
sudo apt-get install iverilog 
sudo apt-get install gtkwave 
```
### Executing the project
```
git clone https://github.com/RohithNagesh/pes_brg.git
cd pes_brg
iverilog pes_brg.v pes_brg_tb.v 
gtkwave pes_brg_out.vcd
```
![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/87e37de0-0692-4fea-9f04-441eac7c7a2f)

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/817c37b4-2d15-4c64-81dc-6ef3dfbb643c)

When the project is run, we get the following output which is shown with the help of GTKwave. 

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/329b7fb2-bfc5-4fe9-9a22-52693520099d)

<p align="center">
  Fig 2. Simulation result for different Baud Rate
</p>

## Synthesis 
The software used to run gate level simulation is yosys.
### Yosys
**Yosys** is a framework for RTL synthesis tools. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.
Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes as needed by extending the yosys C++ code base.
### Yosys installation
1. Download yosys.sh from the repo
2. Open terminal and go to the directory where yosys.sh is present
3. run the commands `chmod +x yosys.sh` `./yosys.sh`
### Steps to Synthesis
- Go to pes_brg directory
- once you get to pes_brg directory, Invoke yosys by using the command yosys
- once yosys is invoked follow the above sequence of commands
  ``` sh
  read_liberty -lib lib/sky130_fd_sc_hd__tt_025C_1v80.lib  
  read_verilog pes_brg.v
  synth -top pes_brg
  dfflibmap -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
  abc -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
  flatten
  write_verilog -noattr pes_brg_net.v
  stat
  show
  ```
  On running the above command we get the statistics about number of gates that are used, Logic realized using standard cells and also the netlist [pes_brg_net.v](https://github.com/RohithNagesh/pes_brg/blob/main/pes_brg_net.v).

**Statistics**
<p align="center">
  <img src="https://github.com/RohithNagesh/pes_brg/assets/103078929/c58552b0-48d9-4b33-9bf1-a3be4cd9ca6c"><br>
  Fig 3. Statistics 
</p>

**Logic realized**
<p align="center">
  <img src="https://github.com/RohithNagesh/pes_brg/assets/103078929/8b175915-b70e-41c1-af8e-84a4f8c9c6d1"><br>
  Fig 4. Logic Synthesis
</p>

## Gate Level Simulation
GLS stands for Gate level Simulation. when we make an RTL design we test it with the help of test bench, which applies some stimulus. The output of that stimulus is checked for the desired functionality. After synthesis we need to again check if the functionality is maintained, for that we perform the GLS. We put the netlist under test and use the same test bench that we did for RTL design to check the functionality. GLS also ensures the timing of the design.
We run the below command for GLS

```
iverilog pes_brg/verilog_model/primitives.v pes_brg/verilog_model/sky130_fd_sc_hd.v pes_brg_net.v pes_brg_tb.v
./a.out
gtkwave pes_brg_out.vcd
```
![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/0b6facad-2a90-4f3b-b780-b07134903be9)

<p align="center">
  Fig 5. GLS Waveform
</p>

## Physical Design
Physical design means --->> netlist (.v ) converted into GDSII form(layout form)
logical connectivity of cells converted into physical connectivity.
During physical design, all design components are instantiated with their geometric representations. In other words, all macros, cells, gates, transistors, etc., with fixed shapes and sizes per fabrication layer, are assigned spatial locations (placement) and have appropriate routing connections (routing) completed in metal layers.

### OpenLANE
OpenLANE is an opensource tool or flow used for opensource tape-outs. The OpenLANE flow comprises a variety of tools such as Yosys, ABC, OpenSTA, Fault, OpenROAD app, Netgen and Magic which are used to harden chips and macros, i.e. generate final GDSII from the design RTL. The primary goal of OpenLANE is to produce clean GDSII with no human intervention. OpenLANE has been tuned to function for the Google-Skywater130 Opensource Process Design Kit.

#### OpenLane installation

refer below link for OpenLANE installation:

https://openlane.readthedocs.io/en/latest/
### Making Design folder in OpenLane
running the below commands would create folder `pes_brg` and default `config.json` inside `pes_brg` folder
```
cd
cd Openlane
make mount
./flow.tcl -design pes_brg -init_design_config
```
![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/70b50e8c-98b9-44e4-8e8c-ccb1d9aacf46)

Now make one more folder inside `pes_brg` named as `src` which contains the source file.

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/dc75cac4-1278-460d-a2d4-8f433f143755)

### Editing Config file for running OpenLane
Insert design path in config.json and add few more configuration variables in config file
``` json
{
    "DESIGN_NAME": "pes_brg",
    "VERILOG_FILES": "dir::src/pes_brg.v",
    "CLOCK_PORT": "clk",
    "CLOCK_PERIOD": 2.1,
    "SYNTH_STRATEGY": "DELAY 0",
    "CELL_SIZING": 1,
    "PL_TARGET_DENSITY": 0.9,
    "FP_CORE_UTIL": 75,
    "DIE_AREA": "0 0 100 100",
    "CORE_AREA": "5 5 60 60",
    "DESIGN_IS_CORE": true
}
```

### Automate the whole ASIC flow
Now we go into the OpenLane folder and run the following command to automate the whole ASIC flow.
```
sudo make mount
./flow.tcl -design openlane/pes_brg -tag RUN
```
![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/192e9c4f-fd5b-466a-90a9-76394cd87a17)

### foorplan layout
OpenLane->openlane->pes_brg->runs->RUN->results->floorplan
```
magic -T /home/rohith_nagesh/ASIC/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.nom.lef def read pes_brg.def
```

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/bd8315b0-2394-4049-bc5e-aae4cf03cd45)

### placement layout
OpenLane->openlane->pes_brg->runs->RUN->results->placement
```
magic -T /home/rohith_nagesh/ASIC/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.nom.lef def read pes_brg.def
```

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/7c166875-f79e-4a63-bb34-7d0e01056ecd)

### routing layout
OpenLane->openlane->pes_brg->runs->RUN->results->routing
```
magic -T /home/rohith_nagesh/ASIC/work/tools/openlane_working_dir/pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.nom.lef def read pes_brg.def
```
![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/f4c8b528-efaa-41e8-8bdb-f7d9f144d285)119

## Results
### Gate Count and Flop Ratio
<p align="center">
<img alt="image" src= "https://github.com/RohithNagesh/pes_brg/assets/103078929/10d9edda-41be-44bc-8320-7922fe30102c">
<img alt="image" src= "https://github.com/RohithNagesh/pes_brg/assets/103078929/85b89845-ef9a-4c33-9c7b-93161c48a268">
</p>

+ Number of cells = 119
+ Flop ratio = 16/119 = 0.1344537815

### Power Performance
<p align="center">
<img alt="image" src= "https://github.com/RohithNagesh/pes_brg/assets/103078929/67669422-7f91-404f-bc69-2ff00b36233d">
</p>

+ Total power = 1.16e-03 Watts

### Performance
<p align="center">
<img alt="image" src= "https://github.com/RohithNagesh/pes_brg/assets/103078929/bece5da6-bbbe-4892-9469-06d1eec2e310">
</p>

+ Performance = 1/(clock period-slack) = 1/(10-0.33)ps = 103.41GHz

### Area
![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/7aa362e2-7d8e-4593-9f14-82d32250e5b3)
+ Area = 2942.57 um^2

## KLayout
KLayout is a free computer-aided design (CAD) software for chip design engineers. It's used to edit designs or layouts for photolithography, electron beam lithography, or any fabrication process that uses the GDSII graphic design system format.

### Klayout installation 
```
sudo apt update
sudo apt install klayout
```

**Open the final layout using KLayout. This will open the window of KLayout in editing mode `-e` with sky130 technology.**

```
# Enter a Docker session
make mount

# Open the pes_brg.gds using KLayout with sky130 PDK
klayout -e -nn $PDK_ROOT/sky130A/libs.tech/klayout/tech/sky130A.lyt    -l $PDK_ROOT/sky130A/libs.tech/klayout/tech/sky130A.lyp    ./openlane/pes_brg/runs/RUN/results/signoff/pes_brg.klayout.gds
```

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/f276b250-6620-40e8-8c7e-6185da1e8e12)

