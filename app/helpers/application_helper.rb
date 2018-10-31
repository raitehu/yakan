module ApplicationHelper
  def default_meta_tags
  {
    site: '-向井弘記 能の会-',
    charset: 'utf-8',
    description: '能楽師シテ方金剛流 向井弘記の公演情報、稽古情報をはじめさまざまな最新ニュースが掲載しています。',
    keywords: '能, 能楽, 能楽師, 金剛, 金剛流, 向井, 弘記, 向井弘記, 弘紀, 向井弘紀, Noh, noh, Mukai, mukai, Horoki, hiroki, Kongoh, kongoh',
    canonical: request.original_url,
  }
  end
end
