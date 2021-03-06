AngulaRails.controller "GitHttpController", ($scope, $http) ->
	
	$scope.search = () ->
		$scope.repos = []
		$scope.searching = true
		$scope.errorMessage = ""
		$scope.found = false
		url = "https://api.github.com/users/#{$scope.username}/repos"
		$http({ method: "GET", url: url })
		  .success (data) ->
		  	$scope.searching = false
		  	$scope.repos = data
		  	$scope.found = true
		  .error (data, status) ->
		  	if status == 404
		  		$scope.searching = false
		  		$scope.errorMessage = "Not Found"
