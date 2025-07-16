with entry {
    print("\n=== Simple Calculator ===");
    print("Available operations:");
    print("  + : Addition");
    print("  - : Subtraction"); 
    print("  * : Multiplication");
    print("  / : Division");
    print("  q : Quit");
    print("========================");
    
    while True {
        print("\nEnter calculation (e.g., '5 + 3') or 'q' to quit:");
        user_input = input("> ");
        
        if user_input.lower() == 'q' {
            print("Thanks for using the calculator!");
            break;
        }
        
        # Parse input
        parts = user_input.split();
        
        if len(parts) != 3 {
            print("Invalid format! Please use: number operator number");
            print("Example: 5 + 3");
            continue;
        }
        
        # Try to convert to numbers
        num1_str = parts[0];
        operator = parts[1];
        num2_str = parts[2];
        
        # Simple number validation
        valid_input = True;
        num1 = 0.0;
        num2 = 0.0;
        
        # Convert first number
        if "." in num1_str or num1_str.isdigit() or (num1_str.startswith("-") and num1_str[1:].replace(".", "").isdigit()) {
            num1 = float(num1_str);
        } else {
            valid_input = False;
        }
        
        # Convert second number
        if "." in num2_str or num2_str.isdigit() or (num2_str.startswith("-") and num2_str[1:].replace(".", "").isdigit()) {
            num2 = float(num2_str);
        } else {
            valid_input = False;
        }
        
        if not valid_input {
            print("Invalid numbers! Please enter valid numbers.");
            continue;
        }
        
        if operator == "+" {
            result = num1 + num2;
        } elif operator == "-" {
            result = num1 - num2;
        } elif operator == "*" {
            result = num1 * num2;
        } elif operator == "/" {
            if num2 == 0 {
                print("Error: Division by zero!");
                continue;
            }
            result = num1 / num2;
        } else {
            print("Invalid operator! Use +, -, *, or /");
            continue;
        }
        
        print(f"{num1} {operator} {num2} = {result}");
    }
}
