{"filter":false,"title":"auth0_controller.rb","tooltip":"/app/controllers/auth0_controller.rb","undoManager":{"mark":20,"position":20,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":7,"column":0},"action":"remove","lines":["class Auth0Controller < ApplicationController","  def callback","  end","","  def failure","  end","end",""]},{"start":{"row":0,"column":0},"end":{"row":14,"column":3},"action":"insert","lines":["class Auth0Controller < ApplicationController","  def callback","    # This stores all the user information that came from Auth0","    # and the IdP","    session[:userinfo] = request.env['omniauth.auth']","","    # Redirect to the URL you want after successfull auth","    redirect_to '/dashboard'","  end","","  def failure","    # show a failure page or redirect to an error page","    @error_msg = request.params['message']","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":18},"end":{"row":7,"column":27},"action":"remove","lines":["dashboard"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["x"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":30},"end":{"row":7,"column":31},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":14,"column":3},"action":"remove","lines":["class Auth0Controller < ApplicationController","  def callback","    # This stores all the user information that came from Auth0","    # and the IdP","    session[:userinfo] = request.env['omniauth.auth']","","    # Redirect to the URL you want after successfull auth","    redirect_to 'order_summaries/index'","  end","","  def failure","    # show a failure page or redirect to an error page","    @error_msg = request.params['message']","  end","end"]},{"start":{"row":0,"column":0},"end":{"row":14,"column":0},"action":"insert","lines":["class Auth0Controller < ApplicationController","  def callback","     # example request.env['omniauth.auth'] in https://github.com/auth0/omniauth-auth0#auth-hash","    # id_token = session[:userinfo]['credentials']['id_token']","    # store the user profile in session and redirect to root","    session[:userinfo] = request.env['omniauth.auth']","","    redirect_to '/dashboard'","  end","","  def failure","    @error_msg = request.params['message']","  end","end",""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":18},"end":{"row":7,"column":27},"action":"remove","lines":["dashboard"]},{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":30},"end":{"row":7,"column":31},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":32},"end":{"row":7,"column":33},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":33},"end":{"row":7,"column":34},"action":"insert","lines":["/"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":34},"end":{"row":7,"column":35},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":35},"end":{"row":7,"column":36},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":36},"end":{"row":7,"column":37},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":37},"end":{"row":7,"column":38},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":38},"end":{"row":7,"column":39},"action":"insert","lines":["x"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":9,"column":0},"end":{"row":9,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1424464548461,"hash":"b970803691ea14280f93f8efdc63baa86b26fac8"}