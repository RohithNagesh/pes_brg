# Baud rate generator
The Baud rate generator is nothing but a frequency divider. It helps two devices in communicating with each other. When data is sent from transmitter to receiver then the data at the receiver side is sampled at a particular baud rate. If there is a high mismatch between the baud rate of transmitter and receiver then the sampling will not happen at the centre of the bit period and there will be an offset. Due to the offset, there will be information that will be missed and communication will not occur efficiently. For example, if transmitter transmit at a particular rate and the receiving device only expects half of that data rate then half of the information will be lost.

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/87e37de0-0692-4fea-9f04-441eac7c7a2f)

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/817c37b4-2d15-4c64-81dc-6ef3dfbb643c)

![image](https://github.com/RohithNagesh/pes_brg/assets/103078929/fbc9d960-6638-4442-9519-cb7d10aada29)
