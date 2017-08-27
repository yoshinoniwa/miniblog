postlist = %w(AAA BBB CCC DDD EEE FFF GGG HHH III JJJ)
0.upto(9) do |idx|
    Post.create(
      post: postlist[idx]
    )
end
