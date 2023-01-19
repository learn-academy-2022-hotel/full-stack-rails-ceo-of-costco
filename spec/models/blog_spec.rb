require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'all blog posts contain title' do
    post = Blog.create content: 'more content'
    expect(post.errors[:title]).to_not be_empty
  end
  it 'all blog posts contain content' do
    post = Blog.create title: 'title'
    expect(post.errors[:content]).to_not be_empty
  end
  it 'does not allow duplicate titles' do
    Blog.create(title:'other title', content:'different content')
    post2 =  Blog.create(title:'other title',content:'different content')
    expect(post2.errors[:title]).to_not be_empty
  end
  it 'is not valid if title is less than 4 characters' do
    post = Blog.create(title: 'tit', content: 'content more')
    expect(post.errors[:title]).to_not be_empty
  end
  it 'is not valid if content is less than 10 characters' do
    post = Blog.create(title: 'title', content: 'content')
    expect(post.errors[:content]).to_not be_empty
  end

end
