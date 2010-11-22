require 'rubygems'
require 'spec'
require 'replace'

describe Replace do
  it "should replace any word which occurs more than once with ?" do
    text = <<-END
      Foo bar baz foo qux.
    END
    Replace.remove_duplicate_words(text).should == "? bar baz ? qux."
  end
end
