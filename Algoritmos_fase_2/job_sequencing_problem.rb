def job_sequencing_problem(arr, t)
    arr.sort_by { |subarray| subarray[2]}.reverse
    time_slots = []
    job = []
    i = 0
    while 1 < t
        job[i] = "-1"
        time_slots[i] = false
    end
    i += 1
end

arr = [['a', 2, 100],
       ['b', 1, 19],
       ['c', 2, 27],
       ['d', 1, 25],
       ['e', 3, 15]]

puts job_sequencing_problem(arr, 3).inspect
