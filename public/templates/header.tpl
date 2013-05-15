<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="/vendor/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="/vendor/fontawesome/css/font-awesome.min.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	<script type="text/javascript" src="/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/socket.io/socket.io.js"></script>
	<script type="text/javascript" src="/src/app.js"></script>
	<script type="text/javascript" src="/src/templates.js"></script>
	<script type="text/javascript" src="/src/ajaxify.js"></script>
	<script type="text/javascript" src="/src/jquery.form.js"></script>

	<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="/">NodeBB</a>
				<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li>
	                      <a href="/latest">Recent <span class="badge badge-inverse">3</span></a>
	                    </li>
	                    <li>
	                      <a href="/popular">Popular</a>
	                    </li>
	                    <li>
	                      <a href="/active">Active</a>
	                    </li>
	                    <li>
	                      <a href="/users">Users</a>
	                    </li>
					</ul>
					<ul class="nav pull-right" id="right-menu">
						<!--<li><i class="icon-plus icon-2x" style="color:#999;"></i></li> fail. add this back later -->
						<!--<li><a href="/users" id="user_label"></a></li>-->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="post_window">
		<div class="post-title-container">
			<div class="container">
				<input id="post_title" placeholder="Enter your topic title here." tabIndex="1" />
				<span id="reply_title"></span>
			</div>
		</div>
		<div class="post-content-container">
			<div class="container">

				<div class="btn-toolbar">
					<div class="btn-group" id="formatting-bar">
						<span class="btn btn-link" tabindex="-1"><i class="icon-bold"></i></span>
						<span class="btn btn-link" tabindex="-1"><i class="icon-italic"></i></span>
						<!-- <span class="btn btn-link" tabindex="-1"><i class="icon-font"></i></span> -->
						<span class="btn btn-link" tabindex="-1"><i class="icon-list"></i></span>
					</div>
					<div class="btn-group" style="float: right; margin-right: -12px">
						<button id="submit_post_btn" class="btn" tabIndex="3"><i class="icon-ok"></i> Submit</button>
						<button class="btn" id="discard-post" tabIndex="4"><i class="icon-remove"></i> Discard</button>
					</div>
				</div>

				<textarea id="post_content" placeholder="Type your message here." tabIndex="2"></textarea>

			</div>
		</div>
	</div>

	<div id="disconnect-modal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <h3 id="myModalLabel">Socket Disconnect</h3>
	  </div>
	  <div class="modal-body">
		<span>Looks like you disconnected, try reloading the page.</span>
	  </div>
	  <div class="modal-footer">
	    <a id="reload-button" href="/" class="btn btn-primary">Reload</a>
	  </div>
	</div>

	<div id="notification_window"></div>

	<div class="container" id="content">