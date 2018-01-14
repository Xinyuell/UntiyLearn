local t = {1,13,3,2,4,7,12,16,8,5}
local function sort(A,p,r)
    local x = A[r]
    local i = p - 1
    for j = p, r-1 do
        local valueJ = A[j]
        if A[j] <= x then
            i = i + 1
            local valueI = A[i]
            A[i],A[j] = A[j], A[i]
        end
    end
    A[i+1],A[r] = A[r],A[i+1]
    return i + 1
end

local function test_sort(a,p,r)
    if p < r then
        local q = math.floor( (p+r)/2 )
        test_sort(a,p,q)
        test_sort(a,q+1,r)
        sort(a,p,q,r)
    end
end

sort(t,1,#t)
