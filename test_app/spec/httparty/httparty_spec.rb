describe 'HTTParty' do
  it '#get' do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/1')
    content_type = response.headers['content-type']
    expect(content_type).to match(%r{application\/json})
  end
end
