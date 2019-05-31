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
        let(:result) {[2,4,6]}
        it "returns an array with the elements of the original array which satisfies a certain condition" do 
            output = array.my_select {|i| i%2 == 0}
            expect(output).to eql (result)  
        end
    end
end
