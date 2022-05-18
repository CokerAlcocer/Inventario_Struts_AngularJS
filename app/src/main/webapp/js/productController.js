const app = angular.module("inventory", []);
const bUrl = 'http://localhost:8080/inventory/product'
const api = 'http://localhost:8080/inventory/api'

app.controller('productInfoController', ($scope, $http) => {
    $scope.addProduct = () => {
        let product = JSON.stringify($scope.p);
        $http({
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: bUrl + '/add',
            data: "params=" + product
        }).then(function successCallback(res) {
            console.log(res);
        }, function errorCallback(res) {
            console.log(res);
        });
    }

    $scope.getInfoUpdate = (id) => {
        $http({
            method: 'GET',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: api + '/findAllProducts'
        }).then(function successCallback(res) {
            for (let i = 0; i < res.data.products.length; i++) {
                if (res.data.products[i].id === id) {
                    $scope.u = {};
                    $scope.u = res.data.products[i];
                    break;
                }
            }
        }, function errorCallback(res) {
            console.log(res);
        });
    }

    $scope.updateProduct = () => {
        let product = JSON.stringify($scope.p);
        $http({
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: bUrl + '/add',
            data: "params=" + product
        }).then(function successCallback(res) {
            console.log(res);
        }, function errorCallback(res) {
            console.log(res)
        })
    }

    $scope.getQuantity = (id) => {
        $http({
            method: 'GET',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: api + '/findAllProducts'
        }).then(function successCallback(res) {
            for (let i = 0; i < res.data.products.length; i++) {
                if (res.data.products[i].id === id) {
                    $scope.a = {};
                    $scope.a = res.data.products[i];
                    break;
                }
            }
        }, function errorCallback(res) {
            console.log(res);
        });
    }
});