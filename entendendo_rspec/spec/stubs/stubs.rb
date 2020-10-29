require 'student'
require 'course'

describe 'Stub' do
  it 'has_finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:finished?).with(an_instance_of(Course)).and_return(true)
    finished = student.finished?(course)

    expect(finished).to be_truthy
  end
end
