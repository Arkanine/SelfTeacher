module ApplicationHelper
  def allow_test
    if current_user
      link_to 'Пройти тест', Test.find_by_name('Тест на знання ангійської  мови'), class:'list-group-item'
    else
      link_to 'Пройти тест', login_path, class:'list-group-item'
    end
  end
end
