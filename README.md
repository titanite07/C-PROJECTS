# Haskell Compiler

## 📌 Project Overview

This is a **moderate-level compiler** written in Haskell that can **lex, parse, and execute** simple assembly-like instructions. It processes commands such as `MOV`, `ADD`, and `HLT`, transforming them into an **Abstract Syntax Tree (AST)** and simulating their execution.

## 🎯 Features

- **Lexical Analysis (Tokenization)** – Converts raw input into structured tokens.
- **Parsing (Syntax Analysis)** – Constructs an AST from tokens.
- **Execution (Interpreter)** – Simulates the execution of basic instructions.
- **Error Handling** – Detects invalid syntax and unknown tokens.
- **Expandable** – Can be extended to support additional instructions.

## 🧐 Requirements

- **Haskell Compiler**: Install GHC (Glasgow Haskell Compiler) and Stack
  ```sh
  sudo apt install ghc
  sudo apt install haskell-stack
  ```
- **Haskell Libraries** (Bundled with GHC & Stack)
  - `Data.Char`
  - `System.IO`
- **Docker (Optional for Containerized Execution)**
  ```sh
  sudo apt install docker.io
  ```

---

## ⚙️ Installation & Execution

### **🔹 Without Docker**

1. **Clone the Repository**

   ```sh
   git clone https://github.com/yourusername/haskell-compiler.git
   cd haskell-compiler
   ```

2. **Compile the Code**

   ```sh
   ghc -o compiler Main.hs
   ```

3. **Run the Compiler**

   ```sh
   ./compiler
   ```

4. **Provide Assembly-like Commands** (Example Input)

   ```
   mov eax, 5
   add eax, 10
   hlt
   ```

5. **Expected Output**

   ```
   MOV eax, 5
   ADD eax, 10
   Halting execution.
   ```

---

## **🐋 Running with Docker**

If you want to run the compiler inside a **Docker container**, follow these steps:

1. **Build the Docker Image**

   ```sh
   docker build -t haskell-compiler .
   ```

2. **Run the Container**

   ```sh
   docker run --rm -it haskell-compiler
   ```

3. **Using a Mounted File for Input**
   If you want to pass an input file (`input.asm`) to the compiler:

   ```sh
   docker run --rm -v $(pwd)/input.asm:/app/input.asm haskell-compiler input.asm
   ```

4. **Expected Output**

   ```
   MOV eax, 5
   ADD eax, 10
   Halting execution.
   ```

---

## 🔑 Code Principles

### **1⃣ Lexical Analysis**

- Identifies `MOV`, `ADD`, `HLT`, registers, numbers, and commas.

### **2⃣ Parsing (AST Construction)**

- Converts tokens into structured instructions.

### **3⃣ Execution (Simulation)**

- Simulates register operations based on AST.

---

## 🚀 Future Enhancements

- Add more operations like `SUB`, `MUL`, and `JMP`.
- Implement memory/register storage.
- Support reading instructions from a file.

---

## 🤝 Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Commit changes (`git commit -m 'Added new feature'`)
4. Push to branch (`git push origin feature-branch`)
5. Create a Pull Request

---

## 🐝 GitHub Setup & Push Guide

### **Step 1: Initialize Git**

```sh
git init
git add .
git commit -m "Initial commit"
```

### **Step 2: Create a GitHub Repository**

Go to GitHub and create a new repository named `haskell-compiler`.

### **Step 3: Connect Local Repo to GitHub**

```sh
git remote add origin https://github.com/yourusername/haskell-compiler.git
git branch -M main
git push -u origin main
```

### **Step 4: Verify the Push**

Go to [GitHub Repository](https://github.com/yourusername/haskell-compiler) and check if files are uploaded.

---

## 🐝 Common Git Commands

- **Pull Latest Changes**
  ```sh
  git pull origin main
  ```
- **Check Status**
  ```sh
  git status
  ```
- **Commit Changes**
  ```sh
  git commit -am "Updated feature"
  ```
- **Push Changes**
  ```sh
  git push origin main
  ```

---

## 🐝 License

This project is open-source and available under the **MIT License**.

---

## 📧 Contact

For suggestions or issues, contact **[your-email@example.com](mailto\:your-email@example.com)** or create an issue in the repository.

---

**Code!! and Preach Coding in a Unique Ways 🚀**

