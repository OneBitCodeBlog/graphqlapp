class Mutations::DeleteUser < GraphQL::Function
  argument :id, types.ID

  type types.Boolean # espeficacao do tipo de retorn
  def call(obj, args, context)
    return false unless user = User.where(id: args[:id]).first # busca o User a ser excluido
    user.destroy # retorna true ou false
  end
end
