require('rspec')
require('lister')

describe(Task) do
  before() do
    Task.clear()
  end

  describe('#description') do
    it('returns the description of a task') do
      test_task = Task.new("wash the car")
      expect(test_task.description()).to(eq("wash the car"))
    end
  end

  describe('#save') do
    it('saves a description in an array') do
      test_task = Task.new("mow the lawn")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved tasks') do
      Task.new("mow the lawn").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end





end
