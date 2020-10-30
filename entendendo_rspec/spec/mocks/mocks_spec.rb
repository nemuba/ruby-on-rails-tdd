require 'student'

describe 'Mocks' do
  it '#bar' do
    #setup
    student = Student.new
    #vaerify
    expect(student).to receive(:bar)
    #exercise
    student.bar
  end
end
