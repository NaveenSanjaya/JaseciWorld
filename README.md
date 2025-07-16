# JaseciWorld Smart Calculator

An AI-powered calculator built with Jac programming language, featuring real Gemini LLM integration for intelligent calculation explanations.

## 📁 Main File

- **`smart_calculator.jac`** - Complete AI-enhanced calculator with Gemini Flash integration

## 🚀 Features

- **Basic arithmetic**: +, -, *, / operations
- **Smart mode**: Toggle AI explanations on/off  
- **Real Gemini AI**: Uses Gemini-2.0-Flash for calculation insights
- **Fallback mode**: Works without AI when not configured
- **Error handling**: Division by zero protection and input validation

## ⚙️ Setup

### Basic Usage
```bash
jac run smart_calculator.jac
```

### AI Features (Optional)
1. Install MTLLM: `pip install mtllm`
2. Get API key: [Google AI Studio](https://makersuite.google.com/app/apikey)
3. Set environment variable:
   ```bash
   # Windows PowerShell
   $env:GOOGLE_API_KEY="your-api-key"
   
   # Windows CMD  
   set GOOGLE_API_KEY=your-api-key
   
   # Linux/Mac
   export GOOGLE_API_KEY="your-api-key"
   ```

## 🎮 Usage

```
Commands: 'smart', 'setup', 'test', 'q'
Enter calculation > 5 + 3
✅ 5.0 + 3.0 = 8.0

> smart
✅ Smart mode ON

> 12 * 4  
✅ 12.0 * 4.0 = 48.0
🤖 Gemini: [AI-generated explanation about multiplication and its applications]
```

## 🎯 Commands

- **Calculations**: `5 + 3`, `10 - 4`, `6 * 7`, `15 / 3`
- **`smart`**: Toggle AI explanations
- **`setup`**: Show AI setup instructions
- **`test`**: Test Gemini connection
- **`q`**: Quit calculator

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

### Running the Advanced Calculator (Steps 5 & 6)

```bash
jac run calculator_working.jac
```

**Features:**
- **Smart mode**: Type `smart` to toggle AI-enhanced explanations
- **Demo mode**: Type `demo` to see all advanced features
- **Scale-agnostic**: Same code runs locally or as cloud API

**Sample session:**
```
🧮 === Steps 5 & 6: Advanced Calculator ===
Step 5: Scale-agnostic (local + cloud ready)
Step 6: AI-enhanced with smart features

Mode: 📊 Basic (calculations only)
Enter calculation > smart
✅ Smart mode ON - AI explanations enabled!

Mode: 🧠 Smart (explanations ON)
Enter calculation > 12 * 8
✅ 12.0 * 8.0 = 96.0
💡 Multiplication scales one quantity by another factor
🎯 Real-world tip: This calculation could be useful for budgets, measurements, or recipes!

Enter calculation > demo
🎯 === Feature Demonstration ===
📡 Step 5: Scale-Agnostic Architecture
✓ Currently running locally in CLI mode
✓ Same code can be deployed as cloud API
✓ Use 'jac serve calculator_working.jac' for API mode

🧠 Step 6: AI-Enhanced Features
Demo calculations with smart explanations:
✅ 15 + 8 = 23
💡 Addition combines quantities to find the total sum
🎲 The concept of zero was invented in ancient India around 500 CE!
```

### Running as Cloud API (Step 5 Feature)

```bash
jac serve calculator_step5.jac
```

This transforms your calculator into a REST API service that can be called from any HTTP client, demonstrating Jac's scale-agnostic architecture.

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

## 🎓 Jac Learning Progression

This project demonstrates the evolution from basic Python-style code to advanced Jac features:

1. **Step 0**: Python baseline (reference in `JAc in 5 min.txt`)
2. **Step 1**: Direct Jac translation with `with entry` blocks
3. **Step 2**: Jac objects with `has` field declarations  
4. **Step 3**: Separated implementation with `impl` blocks
5. **Step 4**: Graph-based walker architecture ⭐
6. **Step 5**: Scale-agnostic deployment (local + cloud) ⭐ `calculator_step5.jac`
7. **Step 6**: AI-enhanced with MTLLM integration ⭐ `calculator_working.jac`

## 🔧 Advanced Jac Concepts Demonstrated

### Walker-Based Architecture
- **Walkers**: Mobile agents that traverse node graphs
- **Nodes**: Stateful entities that walkers can visit
- **Graph traversal**: Using `visit [-->]` and `spawn` operations
- **Entry points**: `can ability_name with node_type entry`

### Scale-Agnostic Design
- **Local execution**: `jac run filename.jac`
- **Cloud deployment**: `jac serve filename.jac` 
- **Automatic API generation**: Walkers become REST endpoints
- **No code changes**: Same logic works in both modes

### AI Integration Patterns
- **MTLLM functions**: `def function_name(...) -> str by llm();`
- **Smart explanations**: Context-aware educational content
- **Dynamic responses**: AI-generated facts and applications
- **Toggle functionality**: Switch between basic and enhanced modes
