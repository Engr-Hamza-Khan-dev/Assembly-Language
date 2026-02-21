# 🖥️ Assembly Language Program – Add Two Numbers (8086)

## 📌 Project Overview

This is a simple 8086 Assembly Language program that demonstrates how to

- Take input from the user
- Process the data using CPU registers
- Display the result as output

The program adds two numbers entered by the user and shows the result on the screen using DOS interrupt services.

---

## ⚙️ Tools Required

- EMU8086 Emulator  
- DOSBox (Optional)  
- MASM  TASM Assembler  

---

## 🧠 Concepts Used

- CPU Registers  
- Input  Output Operations  
- Arithmetic Operations  
- Interrupt 21H  
- Assembly Instructions  

---

## 🗂️ Registers Used

 Register  Purpose 
--------------------
 AX  Data operations 
 BL  First number input 
 CL  Second number input 
 DL  Output result 

---

## 🔄 Working Principle

### 1. Input
The program takes two single-digit numbers from the user through the keyboard.

### 2. Process
The CPU performs addition using registers
- First number is stored in BL
- Second number is stored in CL
- Both values are added together

### 3. Output
The result is displayed on the screen after converting it into ASCII format.

---

## 📄 Assembly Instructions Used

- `MOV` → Move data  
- `ADD` → Add values  
- `SUB` → Subtract ASCII value  
- `INT 21H` → DOS interrupt for inputoutput  

---

## ▶️ How to Run the Program

1. Open EMU8086  
2. Create a new Assembly file  
3. Copy and paste the code from `add.asm`  
4. Compile the program  
5. Run the program  
6. Enter two numbers  
7. View the result on the screen  

---

## 📌 Output Example
Enter First Number: 4
Enter Second Number: 5
Result is: 9