AngulaRails.controller "TacoOrderController", ($scope) ->
  $scope.tacos = []
  $scope.taco = {}
  $scope.fillings = ["Beef","Chicken","Fish","Carnitas"]

  $scope.addTaco = () ->
    $scope.tacos.push($scope.taco)
    $scope.taco = {}
