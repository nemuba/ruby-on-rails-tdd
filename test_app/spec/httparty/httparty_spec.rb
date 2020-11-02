describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'jsonplaceholder/posts' } do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
    posts = JSON.parse(response.body, simbolize_names: true)
    expect(posts.count).to eq(100)
  end
end
