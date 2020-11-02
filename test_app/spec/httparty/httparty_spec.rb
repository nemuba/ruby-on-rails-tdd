describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body] } do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
    posts = JSON.parse(response.body, simbolize_names: true)
    expect(posts.count).to eq(100)
  end

  it 'content-type', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body] } do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/1')
    posts = JSON.parse(response.body, simbolize_names: true)
    expect(posts[0]['id']).to eq(1)
  end
end
