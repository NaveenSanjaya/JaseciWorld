# JaseciWorld Calculator

A simple calculator application built with Jac programming language, demonstrating basic arithmetic operations and interactive user input.

## 📁 Project Structure

```
JaseciWorld/
├── calculator.jac      # Interactive calculator with user input
├── simple_calc.jac     # Basic calculator with predefined operations
├── test.jac           # Original calculator with node-based structure
└── README.md          # This file
```

## 🚀 Features

### Interactive Calculator (`calculator.jac`)
- **Real-time calculations**: Enter expressions and get instant results
- **Basic arithmetic operations**: Addition (+), Subtraction (-), Multiplication (*), Division (/)
- **Error handling**: Division by zero protection and input validation
- **User-friendly interface**: Clear menu and instruction prompts
- **Continuous operation**: Keep calculating until you choose to quit

### Simple Calculator (`simple_calc.jac`)
- **Demonstration mode**: Shows predefined calculations
- **Quick testing**: Verify basic arithmetic operations
- **Clean output**: Formatted results display

## 🛠️ Prerequisites

- **Jac**: Version 0.8.4 or later
- **Python**: Required for Jac runtime

## 📦 Installation

1. **Clone or download** this repository
2. **Ensure Jac is installed**:
   ```bash
   pip install jaclang
   ```
3. **Verify installation**:
   ```bash
   jac --version
   ```

## 🎯 Usage

### Running the Interactive Calculator

```bash
jac run calculator.jac
```

**How to use:**
1. The calculator will display a menu with available operations
2. Enter calculations in the format: `number operator number`
   - Example: `5 + 3`
   - Example: `10.5 / 2`
3. Press Enter to see the result
4. Type `q` to quit the calculator

**Sample session:**
```
=== Simple Calculator ===
Available operations:
  + : Addition
  - : Subtraction
  * : Multiplication
  / : Division
  q : Quit
========================

Enter calculation (e.g., '5 + 3') or 'q' to quit:
> 15 + 25
15.0 + 25.0 = 40.0

Enter calculation (e.g., '5 + 3') or 'q' to quit:
> 100 / 4
100.0 / 4.0 = 25.0

Enter calculation (e.g., '5 + 3') or 'q' to quit:
> q
Thanks for using the calculator!
```

### Running the Simple Calculator

```bash
jac run simple_calc.jac
```

This will execute predefined calculations and display the results:
```
Calculator starting...
5 + 3 = 8
10 - 4 = 6
6 * 7 = 42
15 / 3 = 5.0
Calculator test complete!
```

## 🔧 Supported Operations

| Operator | Operation      | Example |
|----------|----------------|---------|
| `+`      | Addition       | `5 + 3` |
| `-`      | Subtraction    | `10 - 4` |
| `*`      | Multiplication | `6 * 7` |
| `/`      | Division       | `15 / 3` |

## ⚠️ Error Handling

The calculator includes robust error handling for:

- **Division by zero**: Prevents crashes and shows error message
- **Invalid input format**: Guides users to correct format
- **Invalid operators**: Only accepts +, -, *, /
- **Non-numeric input**: Validates number format before calculation

## 🐛 Troubleshooting

### Common Issues

1. **Encoding Error**: `'utf-8' codec can't decode byte 0xff`
   - **Solution**: Ensure files are saved with UTF-8 encoding (without BOM)

2. **Syntax Error**: `Syntax Error at line 1`
   - **Solution**: Check Jac syntax and ensure proper file encoding

3. **Command not found**: `jac: command not found`
   - **Solution**: Install Jac using `pip install jaclang`

### File Encoding
If you encounter encoding issues, ensure your `.jac` files are saved with:
- **Encoding**: UTF-8
- **BOM**: None (UTF-8 without BOM)

## 🤝 Contributing

Feel free to contribute to this project by:
1. Adding new mathematical operations (power, square root, etc.)
2. Implementing memory functions (store, recall)
3. Adding scientific calculator features
4. Improving the user interface
5. Adding more comprehensive error handling

## 📚 Learn More

- [Jac Programming Language Documentation](https://www.jac-lang.org/)
- [Jac GitHub Repository](https://github.com/Jaseci-Labs/jaclang)

## 📄 License

This project is open source and available under the MIT License.

---
  
**Repository**: JaseciWorld  
**Built with**: Jac Programming Language 🚀
