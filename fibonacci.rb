def fibs n
    fib = [0,1]
    (1..n).each do |x|
        fib[x] = fib[x-1] + fib[x-2] 
    end
    return fib[n]
end

def fibs_rec n
    n == 0 ? 0 : n == 1 ? 1 : fibs_rec(n-1) + fibs_rec(n-2)
end