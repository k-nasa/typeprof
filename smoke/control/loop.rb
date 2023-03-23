# update
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

# assert
class Object
  def foo: () -> ([[nil]] | [nil])?
  def bar: () -> ([[nil]] | [nil])?
  def baz: () -> ([[nil]] | [nil])?
end