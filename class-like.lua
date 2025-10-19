Person = { immortal = true }


function Person:new() 
  newPerson = { name = 'Murillo' }
  self.__index = self
  return setmetatable(newPerson, self)
end

function Person:greet()
  print('Hello, my name is: ' .. self.name)
end

function Person:isImmortal()
  print(self.immortal)
end

person1 = Person:new()
person1:greet()
person1:isImmortal()

