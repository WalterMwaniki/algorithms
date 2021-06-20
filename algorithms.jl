function MergeSort(arr)
    
    len = length(arr)
    
    function Combine(L, R)
        i = 1
        j = 1
        k = 1
        sol = zeros(Int64, len)

        for k = 1:len
            if i <= length(L) && j <= length(R)
                if L[i] < R[j]
                    sol[k] = L[i]
                    i += 1
                else
                    sol[k] = R[j]
                    j += 1
                end
            elseif i > length(L) && j <= length(R)
                sol[k] = R[j]
                j += 1
            elseif j > length(R) && i <= length(L)
                sol[k] = L[i]
                i += 1
            end
        end
        return sol
    end

    if len > 1
            
        #  Divide the array into two
        first_half = arr[1:div(len, 2)]
        second_half = arr[div(len, 2) + 1 : len]

        # Call MergeSort on the two halves
        L = MergeSort(first_half)
        R = MergeSort(second_half)

        return Combine( L, R)
    elseif (len == 1 )
        return arr  
    end
end

arr = [5 4 6 7 6 3 2 11 20 99 87]
arr2 = [10 2]

answer = MergeSort(arr)
println(answer)

# function MergeSort(arr)
    
#     len = length(arr)
    
#     function Combine(L, R)
#         i = 1
#         j = 1
#         k = 1
#         sol = zeros(Int64, len)
# 
#         for k = 1:len
#             if i <= length(L) && j <= length(R)
#                 if L[i] < R[j]
#                     sol[k] = L[i]
#                     i += 1
#                 else
#                     sol[k] = R[j]
#                     j += 1
#                 end
#             elseif i > length(L) && j <= length(R)
#                 sol[k] = R[j]
#                 j += 1
#             elseif j > length(R) && i <= length(L)
#                 sol[k] = L[i]
#                 i += 1
#             end
#         end
#         return sol
#     end

#     if len > 1
            
#         #  Divide the array into two
#         first_half = arr[1:div(len, 2)]
#         second_half = arr[div(len, 2) + 1 : len]

#         # Call MergeSort on the two halves
#         L = MergeSort(first_half)
#         R = MergeSort(second_half)

#         return Combine( L, R)
#     elseif (len == 1 )
#         return arr  
#     end
# end

# arr = [5 4 6 7 6 3 2 11 20 99 87]
# arr2 = [10 2]

# answer = MergeSort(arr)
# println(answer)

