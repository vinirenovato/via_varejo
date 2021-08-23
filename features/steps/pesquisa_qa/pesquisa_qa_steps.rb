Dado'que eu acesse a pagina da VV Test' do
  @home_page = HomePages.new
  @home_page.load
end

Dado'acesse o menu "Pesquisa - QA"' do
  @home_page.acessar_pesquisa_qa
end

Quando'eu preencher todos os campos obrigatorios' do
  @pesquisa_qa = PesquisaQAPages.new

  @pesquisa_qa.preenche_dados
  @pesquisa_qa.envia_dados
end

Entao'devo ser direcionado para uma pagina de sucesso' do
  expect(@pesquisa_qa.formulario_enviado?.text).to eql 'Your form has been successfully submitted.'
end
