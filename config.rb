activate :contentful do |f|
  f.space = {breadnet: 'c9ljuftfcdiz'}
  f.access_token = '91905d8dc6f132ffc77a79fc87cd337aad5c7c25a7612ffc25718295b949d696'
  f.cda_query = {include: 2, order: 'sys.createdAt'}
  f.content_types = {
    producto: 'DUu5zMAw5aUsMqqgmoWSg',
    secciones: '4gIoFdMkMw424KCAGcGi4m',
    portada: '4Srq5QLgi4cqmiaYYouKgA',
    pagina: '2LxzoMkVLOMweC4GQEQAIk',
    logo: '2E4YRBXCJieKWCgkSa2MAS'
  }
end

data.breadnet.producto.each do |id, producto|
  proxy "#{producto.slug}", "/producto/producto.html", locals: { producto: producto }, ignore: true
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
end
