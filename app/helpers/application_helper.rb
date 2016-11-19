module ApplicationHelper

  def addToErrors(where, what)
    ErrorsSetup(where)

    session[:errors][where.to_s].push(what)
  end

  def getErrors(where)
    ErrorsSetup(where)

    toReturn = session[:errors][where.to_s]
    session[:errors][where.to_s] = []
    return toReturn
  end

  def ErrorsSetup(where)
    #Error prevention
    session[:errors] = {} if not session[:errors]
    session[:errors][where.to_s] = [] if session[:errors][where.to_s].nil?
  end

end
