# Shutdown t hash - 'no' tag will be ignored as it should run 24/7

SHUTDOWN_TAG = {"shutdown" => ["yes"]}

#Creates a downcased hash using the actual instance tags

AWS.memoize do
  ec2.instances.each do |instance|
    instance_tags = {}
    instance.tags.to_h.each  {|key, val| instance_tags[key.downcase] = val.downcase unless val.nil?}
  end
end


#Define actual time
NOW = Time.now()
STARTTIME = Time.parse(config["StartTime"])
STOPTIME = Time.parse(config["ShutDownTime"])


# Loops through shutdown hash and matches with the actual instance tags
SHUTDOWN_TAG.each do |tag_name, tag_values|
  if instance_tags.has_key?(tag_name) && tag_values.include?(instance_tags[tag_name])
    if tag_name == :shutdown
      shutdown_logic()
    end

  end


def shutdown_logic
  if NOW <= STARTTIME or NOW >= STOPTIME  #Matches time constants
    if instance.status == :running
      stop_inst
      break #No need to keep looping through tags
    end
  else
    if instance.status == :stopped
      instance.start
      start_inst
      break
    end
  end
end