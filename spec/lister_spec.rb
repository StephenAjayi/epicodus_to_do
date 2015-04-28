require('rspec')
require('lister')

describe(Task) do
  describe('#description') do
    it('returns the description of a task') do
      test_task = Task.new("wash the car")
      expect(test_task.description()).to(eq("wash the car"))
    end
  end

  describe('#save') do
    it('saves a description in an array') do
      test_task = Task.new("mow the lawn")
      expect(test_task.save()).to(eq(["mow the lawn"]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end





end
