def job_sequencing_problem(arr, t)
    sorted_array = arr.sort_by { |subarray| subarray[2]}.reverse
    time_slots = []
    job = []
    i = 0
    while i < t
        job[i] = "-1"
        time_slots[i] = false
        i += 1
    end

    i = 0
    while i < sorted_array.length
        j = [t - 1, sorted_array[i][1] - 1].max
        while j >= 0
            if time_slots[j] == false  zsh
                time_slots[j] = true
                job[j] = sorted_array[i][0]
                break
            end
            j -= 1
            if j < 0
                break
            end
        end
        i += 1
    end
    job
end

# def job_sequencing_problem(arr, t)
#   # Ordena o array de trabalhos por lucro em ordem decrescente
#   sorted_array = arr.sort_by { |subarray| subarray[2] }.reverse
#   time_slots = Array.new(t, false)
#   job = Array.new(t, "-1")
#
#   sorted_array.each do |job_info|
#     # Encontra um slot livre para o trabalho atual
#     j = [t - 1, job_info[1] - 1].max
#     while j >= 0
#       if time_slots[j] == false
#         time_slots[j] = true
#         job[j] = job_info[0]
#         break
#       end
#       j -= 1
#     end
#   end
#
#   # Retorna a sequência de trabalhos agendados
#   job
# end

arr = [['a', 2, 100],
       ['b', 1, 19],
       ['c', 2, 27],
       ['d', 1, 25],
       ['e', 3, 15]]

puts job_sequencing_problem(arr, 3)
