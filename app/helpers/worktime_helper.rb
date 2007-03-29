module WorktimeHelper 
     
  def select_report_type(object_name = 'worktime', method = 'report_type', switch = true)
      htmlOptions = {}
      htmlOptions[:onChange] = 'switchvisibility();' if switch
      select object_name, 
             method, 
             ReportType::INSTANCES.collect {|type| [type.name, type.key]}, 
             {:selected => instance_variable_get("@#{object_name}").send(method).key},
             htmlOptions
  end
  
  def genericPath
    'worktime'
  end

end
