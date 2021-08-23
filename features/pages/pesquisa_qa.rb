class PesquisaQAPages < SitePrism::Page

  element :campo_nome, '#nf-field-5'
  element :campo_sobrenome, '#nf-field-6'
  element :campo_email, '#nf-field-7'
  element :campo_confirm_email, '#nf-field-8'
  element :campo_telefone, '#nf-field-17'
  element :campo_idade_18_30, '#nf-label-class-field-10-0'
  element :campo_temp_qa?, '#nf-field-11'
  element :campo_desafio?, '#nf-field-12'
  element :opcao_tecnico, '#nf-label-class-field-13-0'
  element :campo_ling_progr?, '#nf-field-14'
  element :plano_carreira, '#nf-field-15'
  element :btn_enviar, '#nf-field-16-wrap'

  def preenche_dados
    campo_nome.send_keys('Vinicius')
    campo_sobrenome.send_keys('Renovato')
    campo_email.send_keys('vinirenovato@gmail.com')
    campo_confirm_email.send_keys('vinirenovato@gmail.com')
    campo_telefone.send_keys('11968291660')
    campo_idade_18_30.click
    select 'Menos de 5 anos', from: 'nf-field-11'
    select 'Desafio', from: 'nf-field-12'
    opcao_tecnico.click
    campo_ling_progr?.send_keys('Ruby, Cypress, Phyton e JavaScript')
    plano_carreira.send_keys('Ultimamente tenho focado em me tornar um especialista na área de qualidade, tenho estudado mais a parte de integrações com esteira e ferramentas como o Cypress')
  end

  def envia_dados
    btn_enviar.click_on
  end

  def formulario_enviado?
    find('.nf-response-msg')
  end

end
