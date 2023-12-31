# About us:

Building resilience doesn't happen overnight. It's a journey, and we're here to go on.

We are a team of passionate and dedicated students from the faculty of Engineering at Mansoura University, united by a common goal: to empower individuals and communities to **face the challenge of earthquakes**. Empowered with expertise in artificial intelligence, mobile app development, hardware design and disaster management, we have embarked on a mission to save lives and minimize the devastating impact of these natural disasters.


<p align="center">
 <img width="400" src="https://user-images.githubusercontent.com/91850794/209578154-9e474e32-3cb2-4d09-afc9-402349caab8e.png" alt="Material Bread logo">
 </p>
 


# Repository Content:

In this Technology-Integrated project repository, we have:
* `AI-Webapp`: Houses files and documentation for the earthquake-forecasting web application.
* `Flutter_app`: Contains files and documentation for the earthquake-awareness Flutter application.
* `Hardware_design`: Stores code files and circuit designs for the earthquake-sensing hardware components.


# Project Overview:

It is a comprehensive system that empowers individuals and communities before, during, and after earthquakes, mitigating the devastating impact of these natural disasters.This system will include three main components:

- A mobile app that will provide users with real-time alerts, personalized evacuation routes, and essential safety tips.
- A Wepapp that will predict the possible earthquake risk in the upcoming 7-days based on historical data and seismic activity.
- A sensor network that will detect seismic activity and send alerts to the mobile app.

<div align='center'>
<table> 
  <tr>
    <td>Webapp</td>
  </tr>
  <tr>
    <td><img src="https://github.com/The-Seismic-Seven/DSP_Project/assets/91850794/889613c4-c561-4eb3-a872-e58e33261ddd" width=567 ></td>
  </tr>
</table>
 </div>

<div align="center">
<table>
  <tr>
    <td>Hardware Circuit</td>
     <td>Flutter App</td>
  </tr>
   <tr>
    <td><img src="https://github.com/The-Seismic-Seven/DSP_Project/assets/91850794/9c763201-6d84-46e0-8fb0-c946b0e47069" width=270 height=400></td>
    <td><img src="https://github.com/The-Seismic-Seven/DSP_Project/assets/91850794/37d23dd7-31a5-4eda-b5f8-74f695e98851" width=270 height=600></td>
  </tr>
</table>
 </div>

The mobile app will help users stay safe during an earthquake. It will provide users with real-time alerts, personalized evacuation routes, and essential safety tips. The Webapp will help communities prepare for earthquakes by predicting areas with high earthquake risk. The sensor network will help emergency services identify areas of damage after an earthquake.


## Abstract:


> The project aims to design a car and do some control analysis on its system to apply what we have learnt in our unviersity control course. The main component of the car deisgn is the Arduino mircrocontroller that controls the movement of the car through digital signals received from the mobile phone via bluetooth module connected to the Arduino. In this open loop system of the car, we were interseted in studying the transfer function and analyse the its error that resulted from the studting its step response. Finally, all the project details was documented in the following sections.

## Introduction:

> The studied system is in the form of Arduino based, Bluetooth controlled RC car. It is controlled by a smart phone application that gives the moevment directions to a bluetooth module which translates them into digital signals inputted to the Arduino and processed by the uploaded Arduino-C code. After that, the Arduino sends its output signals to the car motor drivers to move them in the specified directions. In fact, this system is prone to err in some processes like the time of sending and receiving signals from and to the arduino and that what we studied in the anaylsis part.

## Materials & Methods:
> > ### Used Materials:
>  * Arduino Uno - x1
>  * HC-05 Bluetooth Module - x1
>  * L293D Motor driver - x1
>  * Wheels with motors -x4
>  * 12v Battery - x1
>  * Body of the car & Jumpers.  
>  * Mini test board
> ![image](https://user-images.githubusercontent.com/91850794/209566528-f5a3030d-9f0d-40e6-9832-2d619277c89c.png)
> ![image](https://user-images.githubusercontent.com/91850794/209566993-0ddf124b-7608-4307-805c-45c816e22ac7.png)
______________________________________________________________
>> ### Followed methods:

>To design the prototype, the following steps were followed:

> * **STEP 1:**

>  On the three slots of the motor driver, we connect:
>   - The battery by the the 12v slot on the left-hand side of the three slots.
>   - The slot of ground in the middle on Arduino ground slot.
>   - The right one on the mini test board to have two  input for Bluetooth module and 5v for Arduino.

> * **STEP 2:**

>  Connecting each 2-car motors in parallel.

> * **STEP 3:**

>  Connecting the HC-05 Bluetooth Module to the Arduino.
>  The HC-05 Bluetooth Module is responsible for enabling Bluetooth Communication between Arduino and Mobile Phone.

> * **STEP 4:**
  
>  Checking the Arduino bins' connection:
>  * Arduino GND -> motor driver GND
>  * Arduino TX slot -> Bluetooth module RX slot
>  * Arduino RX slot -> Bluetooth module TX slot
>  * motor driver VCC -> Bluetooth module VCC

> * **STEP 5:** 

>  Testing the car -> [Testing Video](https://github.com/Controllers-Group/RC_car_project/tree/main/Testing)

> * **STEP 6:** 

> Conducting the control analysis (in the following section). 


## Analysis:

> For the **modeling** and **transfer function** of the RC car system:

>   * The studied system is electrical system. 
>   * The input is the signal coming from the bluetooth module. 
>   * The output is the voltage across the capacitor.

<p align="center">
 <img width="400" src="https://user-images.githubusercontent.com/91850794/209574164-bc1a8112-d742-46ba-8d89-12a4e76c8652.png" alt="Material Bread logo">
 </p>
 
>   * The damping ratio (ζ) for the system in the standard equation will be less than 1 that is the reason of having an underdamped system if we want to go forward all the outputs will be active and in case we want to turn right or left we we will deactivate one output and activate the other one.

> For the **block diagram** of the system:

<p align="center">
 <img width="800" src="https://user-images.githubusercontent.com/91850794/209575006-4ab8e528-c55e-4265-b918-d6305561f3f6.png" alt="Material Bread logo">
 </p>
 



## Recommendations:

> The Project can be furthur developed if a Desktop GUI was made to control the car not only by the mobile phone but also with the computer device. We worked on this idea using python to make the GUI but for the shortage of time, the GUI wasn't completed.

## Conclusion:

> An Arduino-Based bluetooth-controlled RC-car was designed and systematically analysied using what is learnt in our control course. 

## References:

> Arduino-Based bluetooth-controlled RC-car Reaserch Paper -> [Click here](http://csjournals.com/IJCSC/PDF11-1/2.%20Paul.pdf)



_________________________________________________________________________
_________________________________________________________________________

# How to navigate our Github Project:

The GitHub repository is divided into 4 folders:

> * `Code` folder that contains the C- programming code files.
> * `Proteus Simulation` that contains the simulation of the Arduino circuit.
> * `Testing` that contains a video for the car.
> * `Modeling & Anaylsis` that contains our analysis process.
