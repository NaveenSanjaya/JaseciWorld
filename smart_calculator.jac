import:py os;

# Real Gemini LLM function for calculation explanations
def explain_calculation(operation: str, num1: float, num2: float, result: float) -> str by llm(model="gemini/gemini-2.0-flash-exp", temperature=0.7);

with entry {
    # Check for real API key and MTLLM
    api_key = os.getenv("GOOGLE_API_KEY") or "";
    
    mtllm_available = False;
    try {
        import:py mtllm;
        mtllm_available = True;
    } catch {
        mtllm_available = False;
    }
    
    ai_ready = bool(api_key and mtllm_available);
    
    if ai_ready {
        print("🧮 === REAL Gemini AI Calculator ===");
        print("🤖 Gemini-2.0-Flash Connected!");
        print("💡 Real LLM explanations active");
    } else {
        print("🧮 === Calculator (AI Setup Needed) ===");
        if not mtllm_available {
            print("❌ Missing: pip install mtllm");
        }
        if not api_key {
            print("❌ Missing: GOOGLE_API_KEY environment variable");
        }
        print("💡 Fallback mode: Basic explanations");
    }
    print("============================================");
    
    smart_mode = False;
    
    while True {
        status = "🤖Real AI" if ai_ready else "📚Fallback";
        if smart_mode {
            print(f"\nMode: 🧠 Smart ({status} explanations ON)");
        } else {
            print("\nMode: 📊 Basic (calculations only)");
        }
        
        print("Commands: 'smart', 'setup', 'test', 'q'");
        user_input = input("Enter calculation > ");
        
        if user_input == 'q' {
            print("Thanks for using Gemini Calculator! 🚀");
            break;
        } elif user_input == 'smart' {
            smart_mode = not smart_mode;
            mode_text = "ON" if smart_mode else "OFF";
            print(f"✅ Smart mode {mode_text}");
            continue;
        } elif user_input == 'setup' {
            print("\n🚀 === Real Gemini Setup ===");
            print("1. Install MTLLM:");
            print("   pip install mtllm");
            print("\n2. Get API key:");
            print("   https://makersuite.google.com/app/apikey");
            print("\n3. Set environment variable:");
            print("   PowerShell: $env:GOOGLE_API_KEY=your-key");
            print("   CMD: set GOOGLE_API_KEY=your-key");
            print("   Linux/Mac: export GOOGLE_API_KEY=your-key");
            print("\n4. Restart terminal and run again");
            print("===============================");
            continue;
        } elif user_input == 'test' {
            if ai_ready {
                print("\n🧪 Testing Gemini Flash Model...");
                try {
                    test_explanation = explain_calculation("addition", 5.0, 3.0, 8.0);
                    print(f"✅ Gemini Response: {test_explanation}");
                } except Exception as e {
                    print(f"❌ Gemini Error: {e}");
                    print("💡 Check your API key and internet connection");
                }
            } else {
                print("❌ AI not ready. Run 'setup' command for instructions.");
            }
            continue;
        }
        
        # Parse calculation
        parts = user_input.split();
        
        if len(parts) != 3 {
            print("❌ Format: number operator number (e.g., '5 + 3')");
            continue;
        }
        
        # Calculate
        try {
            num1 = float(parts[0]);
            operator = parts[1];
            num2 = float(parts[2]);
            
            if operator == "+" {
                result = num1 + num2;
                print(f"✅ {num1} + {num2} = {result}");
                if smart_mode {
                    if ai_ready {
                        try {
                            explanation = explain_calculation("addition", num1, num2, result);
                            print(f"🤖 Gemini: {explanation}");
                        } except Exception as e {
                            print(f"🤖 Fallback: Adding {num1} and {num2} combines quantities to get {result}");
                            print(f"⚠️ AI Error: {e}");
                        }
                    } else {
                        print(f"🤖 Fallback: Adding {num1} and {num2} combines quantities to get {result}");
                    }
                }
            } elif operator == "-" {
                result = num1 - num2;
                print(f"✅ {num1} - {num2} = {result}");
                if smart_mode {
                    if ai_ready {
                        try {
                            explanation = explain_calculation("subtraction", num1, num2, result);
                            print(f"🤖 Gemini: {explanation}");
                        } except Exception as e {
                            print(f"🤖 Fallback: Subtracting {num2} from {num1} gives {result}");
                            print(f"⚠️ AI Error: {e}");
                        }
                    } else {
                        print(f"🤖 Fallback: Subtracting {num2} from {num1} gives {result}");
                    }
                }
            } elif operator == "*" {
                result = num1 * num2;
                print(f"✅ {num1} * {num2} = {result}");
                if smart_mode {
                    if ai_ready {
                        try {
                            explanation = explain_calculation("multiplication", num1, num2, result);
                            print(f"🤖 Gemini: {explanation}");
                        } except Exception as e {
                            print(f"🤖 Fallback: Multiplying {num1} by {num2} scales to {result}");
                            print(f"⚠️ AI Error: {e}");
                        }
                    } else {
                        print(f"🤖 Fallback: Multiplying {num1} by {num2} scales to {result}");
                    }
                }
            } elif operator == "/" {
                if num2 == 0 {
                    print("❌ Error: Division by zero is undefined!");
                    continue;
                }
                result = num1 / num2;
                print(f"✅ {num1} / {num2} = {result}");
                if smart_mode {
                    if ai_ready {
                        try {
                            explanation = explain_calculation("division", num1, num2, result);
                            print(f"🤖 Gemini: {explanation}");
                        } except Exception as e {
                            print(f"🤖 Fallback: Dividing {num1} by {num2} gives {result}");
                            print(f"⚠️ AI Error: {e}");
                        }
                    } else {
                        print(f"🤖 Fallback: Dividing {num1} by {num2} gives {result}");
                    }
                }
            } else {
                print(f"❌ Unknown operator '{operator}'. Use: +, -, *, /");
                continue;
            }
            
        } except ValueError {
            print("❌ Please enter valid numbers!");
        }
    }
}
