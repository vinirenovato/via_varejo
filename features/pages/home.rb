class HomePages < SitePrism::Page
  set_url 'https://bit.ly/3jOMrR9'

  element :pesquisa_qa_link, '#menu-item-226'

  def acessar_pesquisa_qa
    pesquisa_qa_link.click
  end
end
