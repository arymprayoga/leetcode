# @param {String} s
# @return {String}
def reverse_words(s)
    s.strip!
    reverse_string(s,0,s.length-1)
    start = 0
    for i in 0...s.length
        if s[i] == " "
            reverse_string(s,start,i-1)
            start = i + 1
        end
    end
    reverse_string(s,start,s.length-1)

    i=0
    while i < s.length
        if s[i] == " " && s[i+1] == " "
            s[i] =""
        else
            i += 1
        end
    end   
    return s
end 

def reverse_string(s,start,finish)
    while start < finish
        s[start],s[finish] = s[finish],s[start]
        finish -= 1
        start +=1
    end
end

# s.split.reverse.join(' ')