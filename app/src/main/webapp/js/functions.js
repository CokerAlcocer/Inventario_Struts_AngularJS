
const setIdOnModal = (id) => {
    console.log(id)
    document.getElementById('cId').value = id;
}

const app = angular.module("inventory", ['ngRoute']);
app.controller("categoryController", ($scope, $http) => {
    $scope.getInfo = (id) => {
        $http({
            method: 'GET',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: 'http://localhost:8080/inventory/api/findCategoryById'
        }).then(function successCallback(res){
            for(let i = 0; i < res.data.categories.length; i++){
                if(res.data.categories[i].id === id){
                    $scope.uId = res.data.categories[i].id;
                    $scope.uName = res.data.categories[i].name;
                    $scope.uIconName = res.data.categories[i].iconName;
                    $scope.uDescription = res.data.categories[i].description;
                    break;
                }
            }
        }, function errorCallback(res) {
            console.log(res)
        });
    }
});