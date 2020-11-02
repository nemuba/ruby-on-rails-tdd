describe 'HTTParty' do
  it '#get id = 1' do
    VCR.use_cassette('jsonplaceholder/posts/1') do
      response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/1')
      post = JSON.parse(response.body, simbolize_names: true)
      expect(post['id']).to eq(1)
    end
  end
end
