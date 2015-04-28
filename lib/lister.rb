class Task
@@all_tasks = []
  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_method(:save) do
    @@all_tasks.push(@description)
    @@all_tasks
  end

  define_singleton_method(:all) do
    []
  end


end
