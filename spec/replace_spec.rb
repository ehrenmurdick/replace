require 'rubygems'
require 'spec'
require 'replace'

describe Replace do
  it "should replace any word which occurs more than once with ?" do
    text = <<-END
      Foo bar baz foo qux foo.
    END
    Replace.remove_duplicate_words(text).should == <<-END
      ? bar baz ? qux ?.
    END
  end

  it "shouldn't replace word fragments" do
    Replace.remove_duplicate_words("i andies i").should == "? andies ?"
  end
end
