def merge_sort arry
    if arry.length < 2
        return arry
    else
        n = arry.length/2
        a = merge_sort(arry[0...n])
        b = merge_sort(arry[n..-1])
        c = []
        until a.empty? || b.empty?
            a[0] < b[0] ? c.push(a.shift) : c.push(b.shift)
        end
        c + b + a
    end
end

puts merge_sort([9,20,10,5,15,24,3,1,100]).inspect