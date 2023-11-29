class MaxHeap

    def heapify(arr, n, i)
        parent = (i - 1) / 2

        if arr[parent] > 0
            if arr[i] > arr[parent]
                temp = arr[i]
                arr[i] = arr[parent]
                arr[parent] = temp

                heapify(arr, n, parent)
            end
        end
    end # heapify

    def insert(arr, n, key)
      n += 1

      arr[n-1] = key

      heapify(arr, n, n-1)

      return n

    end # insert

    def print(arr, n)
      arr.each { |e| puts e }
    end

end # class MaxHeap
