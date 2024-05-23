## update
def foo
  a = [[nil]]
  while a
    a = a[0]
  end
  a
end

def bar
  a = [[nil]]
  until a
    a = a[0]
  end
  a
end

def baz
  a = [[nil]]
  begin a
    a = a[0]
  end while a
  a
end

def qux
  a = b = [[nil]]
  while a
    a = a[0]
    b = b[0] # 29
  end
  b
end

def quux
  for i in [1,2,3,4]
    i
  end
end

## assert
class Object
  def foo: -> nil
  def bar: -> [[nil]]
  def baz: -> nil
  def qux: -> ([[nil]] | [nil])?
  def quux -> [Integer]
end

## diagnostics
(29,9)-(29,12): undefined method: nil#[]
