# AI-Enhanced Calculator Setup Instructions

## Prerequisites for AI Features

To enable the AI-enhanced explanations powered by Gemini LLM, you need to install the MTLLM library:

```bash
pip install mtllm
```

## API Key Setup

You'll also need to set up your Google AI API key for Gemini:

1. Get your API key from [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Set the environment variable:

**Windows (PowerShell):**
```powershell
$env:GOOGLE_API_KEY="your-api-key-here"
```

**Windows (Command Prompt):**
```cmd
set GOOGLE_API_KEY=your-api-key-here
```

**Linux/Mac:**
```bash
export GOOGLE_API_KEY="your-api-key-here"
```

## Running the AI Calculator

```bash
# Basic calculator (no AI dependency)
jac run calculator.jac

# AI-enhanced calculator (requires mtllm + API key)
jac run calculator_working.jac

# Pure AI walker-based version
jac run calculator_ai_walker.jac

# Scale-agnostic version
jac run calculator_step5.jac
```

## Fallback Behavior

If MTLLM is not installed or the API key is not set, the calculator will:
- Display a warning message
- Fall back to built-in educational explanations
- Continue to work normally without AI features

## AI Features Available

When properly configured, the AI calculator provides:

1. **Intelligent Explanations**: Context-aware explanations for each operation
2. **Smart Insights**: Mathematical insights and educational tips
3. **Number Stories**: Interesting facts related to your calculations
4. **Real-world Applications**: Practical uses for your calculations

## Troubleshooting

**Error: "AI model not available"**
- Install mtllm: `pip install mtllm`
- Set your GOOGLE_API_KEY environment variable
- Restart your terminal/IDE

**Error: "API quota exceeded"**
- Check your Google AI Studio quota
- Wait for quota reset or upgrade your plan

**Error: "Network timeout"**
- Check your internet connection
- The calculator will fall back to basic explanations
