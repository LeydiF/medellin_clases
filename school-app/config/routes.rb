Rails.application.routes.draw do
  
  root "students#index"

  resources :students

  get '/estudiantes/:student_id/materias', to: "subjects#by_student", as: :mostrar_materias

end
