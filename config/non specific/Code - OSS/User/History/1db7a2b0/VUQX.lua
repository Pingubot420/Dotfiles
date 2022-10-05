for i = 1, 100 do
    n = ""
    
    if i % 3 == 0 then n = "Fizz"
    elseif i % 5 == 0 then n = "Buzz" end

    if n == "" then n = i end

    

    print(n)
    end

