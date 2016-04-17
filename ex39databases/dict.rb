module Dict
  def Dict.new(num_buckets=256)
    # Dict.new is an initialization. Dict.new() will be equal to states and cities.
    # Running defined? states in irb returns "local-variable". 
    # When states was declared it returned an array with 256 arrays in it.
    # Original comment: Initializes a Dict with the given number of buckets.
    aDict = []
    # aDict is an array
    (0...num_buckets).each do |i|
      aDict.push([])
    # We are pushing each of the 256 arrays (or buckets) into the array aDict
    end
    
    return aDict
  end
  
  def Dict.hash_key(aDict, key)
    # Given a key this will create a number then convert it to
    # an index for aDict's buckets.
    
    # They key is converted into a number (very big) with the .hash function. 
    # The converted key is then % by aDict.length (which would be 256)
    # The remainder will be less than 256.
    puts "HASH #{key}=#{key.hash}"
    return key.hash % aDict.length
  end
  
  def Dict.get_bucket(aDict, key)
    # Given a key, find the bucket where it would go.
    # bucket_id = (Dict.this is just calling the method function)hash_key of (aDict, key)
    # Example: bucket_id = states[166]
    # We then return aDict[166] and this is the bucket we need.
    bucket_id = Dict.hash_key(aDict, key)
    return aDict[bucket_id]
  end
  
  # Why use such a complicated structure? Why have 256 buckets inside Dict.new? 
  # Why not just use a large hash containing key-value pairs
  # I think that having these buckets inside of Dict.new allows the computer to
  # have a much for refined search (skipping 255 other possibilities) before 
  # having to search for a specific key.
  # To find the key, one only needs to pass in the Dict.new (such as "I'm looking for state")
  # and the key (the state itself "Wisconsin") in order to find the key. 
  # This data structure is based soley off of the information it's composed of,
  # and it allows for quick access.
  
  def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
    # bucket = states[166 (some number below 255)]
    #  
    bucket = Dict.get_bucket(aDict, key)
    
    # iterate over each slot in bucket # each_with_index is an enumerator
    # If key doesn't match k, we will go to the next slot (key-value pair)
    # k, v = kv (kv is (key, value) # read tuple unpacking
    # return the index(which slot it was in), key, and value # example: 0, Wisconsin, WI
    bucket.each_with_index do |kv, i|
      k, v = kv
      if key == k
        return i, k, v
      end
    end
    # if key != k in any iteration we will do this. return
    # -1 (similar to nil), key (what we searched for), default (nil?)
    # return -1 as i, will prevent Dict.set if statement, and force the else statement.
    # default prevents nil which would cause errors. 
    return -1, key, default
  end
  
  def Dict.get(aDict, key, default=nil)
    # gets the value in a bucket for the given key, or the default.
    i, k, v = Dict.get_slot(aDict, key, default=default)
    # just return the value (we are using the dictionary to search for this)
    return v
  end
  
  def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing any existing value.
    # bucket = states[166]
    bucket = Dict.get_bucket(aDict, key)
    # i, k, v = i, k, v
    i, k, v = Dict.get_slot(aDict, key)
    # if index is greater than or equal to 0
    # 166[0] The contents of 166[0] (a key value pair)
    # are now = to [key, value]
    if i >= 0
      bucket[i] = [key, value]
    else
      # otherwise 166 has the [key, value] pushed into the array
      bucket.push([key, value])
    end
  end
  
  def Dict.delete(aDict, key)
    # Deletes the given key from Dict.
    # bucket = states[166]
    bucket = Dict.get_bucket(aDict, key)
    # 0...the number of key value pairs in bucket
    # iterates through each slot assigning k, v = to the key-value in each slot
    # if key == k delete_at (delete element at the specified index)
    # the key-value in the bucket at the current slot in this the iteration.
    (0...bucket.length).each do |i|
      k, v = bucket[i]
      if key == k
        bucket.delete_at(i)
        break
      end
    end
  end
  
  def Dict.list(aDict)
    # Prints out what's in the Dict.
    # for each array in aDict, do each slot in bucket put the key-value pairs
    aDict.each do |bucket|
      if bucket
        bucket.each {|k, v| puts k, v}
      end
    end
  end
end
