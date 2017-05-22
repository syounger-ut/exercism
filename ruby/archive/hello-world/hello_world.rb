class HelloWorld
  def self.hello(*name)
    if name.empty?
      'Hello, World!'
    else
      "Hello, #{name.join("")}!"
    end
  end
end
