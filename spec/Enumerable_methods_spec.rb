require_relative "../lib/Enumerable_methods.rb"

describe Enumerable do
    context "testing my_each on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {[1,4,9,16,25,36,49]}
        let(:output) {[]}
        before do
            array.my_each {|i| output << i*i}
        end
        it "returns an array after something is done to the elements of it" do
            expect(output).to eql (result)
        end
    end

    context "testing my_each_with_index on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {[1,2,3,4,5,6,7]}
        let(:output) {[]}
        before do
            array.my_each_with_index {|val, index| output << index+1}
        end
        it "returns an array of indexes after adding 1 to each index" do
            expect(output).to eql (result)
        end
    end

    context "testing my_select on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {[2,4,6]}
        it "returns an array with the elements of the original array which satisfies a certain condition" do
            output = array.my_select {|i| i%2 == 0}
            expect(output).to eql (result)
        end
    end

    context "testing my_all? on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {true}
        it "returns true if all numbers are greater than 0" do
            output = array.my_all? {|i| i>0}
            expect(output).to eql (result)
        end
    end
    context "testing my_all? on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {false}
        it "returns false if not all number satisfies a condition" do
            output = array.my_all? {|i| i%2 == 0}
            expect(output).to eql (result)
        end
    end
    context "testing my_all? on array" do
        let(:array) {["N","M"]}
        let(:result) {true}
        it "returns true if  all elements are strings" do
            output = array.my_all? {|i| i.is_a? (String)}
            expect(output).to eql (result)
        end
    end
    context "testing my_any? on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {true}
        it "returns true if there is any element that satisfies the condition" do
            output = array.my_any? {|i| i%2 == 0}
            expect(output).to eql (result)
        end
    end
    context "testing my_any? on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {false}
        it "returns false if there no element that satisfies the condition" do
            output = array.my_any? {|i| i>7}
            expect(output).to eql (result)
        end
    end
    context "testing my_none? on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {false}
        it "returns false if there is an element that satisfies the condition" do
            output = array.my_none? {|i| i>3}
            expect(output).to eql (result)
        end
    end
    context "testing my_none? on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {true}
        it "returns true if there is no element that satisfies the condition" do
            output = array.my_none? {|i| i>7}
            expect(output).to eql (result)
        end
    end
    context "testing my_count on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {4}
        it "returns number of elements in array that satisfies the condition if given" do
            output = array.my_count {|i| i>3}
            expect(output).to eql (result)
        end
    end
    context "testing my_count on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {7}
        it "returns number of elements in array if a block is not given" do
            output = array.my_count
            expect(output).to eql (result)
        end
    end
    context "testing my_map on array" do
        let(:array) {[1,2,3,4,5,6,7]}
        let(:result) {[1,2,3]}
        it "returns an array of elements that satisfies the condition" do
            output = array.my_map {|i| i<4}
            expect(output).to eql (result)
        end
    end
    context "testing my_inject on array" do
        let(:array) {[1,2,3,4,5]}
        let(:result) {15}
        it "returns the sum of elements without pass a parameter" do
            output = array.my_inject {|sum, k| sum + k}
            expect(output).to eql (result)
        end
    end
    context "testing my_inject on array" do
        let(:array) {[1,2,3,4,5]}
        let(:result) {120}
        it "returns the product of elements after passing initial value of product as 1" do
            output = array.my_inject(1) {|product, k| product * k}
            expect(output).to eql (result)
        end
    end
end
