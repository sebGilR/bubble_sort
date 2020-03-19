

def bubble_sort(arr)
    loops = arr.length
    i = 0
    

    while i < loops - 1
        j = 0

        while j < loops - 1
            if  arr[j] > arr[j + 1]
                arr[j],arr[j + 1] = arr[j + 1],arr[j]

                puts arr[j].to_s + arr[j + 1].to_s
                
            end
            j += 1
        end

        i += 1
    end

    puts arr
end

bubble_sort([5, 3, 1, 0, 4])