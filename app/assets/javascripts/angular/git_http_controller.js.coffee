AngulaRails.controller "GitHttpController", ($scope, $http) ->
	
	$scope.search = () ->
		$scope.repos = []
		$scope.searching = true
		$scope.errorMessage = ""
		$scope.found = false
		url = "https://api.github.com/users/#{$scope.username}/repos"
		$.ajax
		  type: "GET"
		  url: url
		  success: (data) ->
		  	$scope.searching = false
		  	$scope.repos = data
		  	$scope.found = true
		  	$scope.$apply()
		  error: (error) ->
		  	$scope.searching = false
		  	if error.status == 404
		  		$scope.errorMessage = "Not Found"
		  		$scope.$apply()
