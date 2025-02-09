fn main() {
    let s = string::from"Hello"; //s is a string literal
    
    s.push_str(", Twitch!");
    println!("{}", s);

    // Integers are simple values and stored the stack
    // so in this case y is a copy of 5. 
    let x = 5;
    let y = x;
}

//scope is over and s is nolonger valid
