# frozen_string_literal: true

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

  it 'Argumentos Dinâmicos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      case arg
      when :hello
        'Ola'
      when :hi
        'Oi'
      end
    end

    expect(student.foo(:hello)).to eq('Ola')
    expect(student.foo(:hi)).to eq('Oi')
  end

  it 'Qualquer instância de Classe' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Errors' do
    student = Student.new
    allow(student).to receive(:div).and_raise(ZeroDivisionError)
    expect { student.div }.to raise_error(ZeroDivisionError)
  end
end
