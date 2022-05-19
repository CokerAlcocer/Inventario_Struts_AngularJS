const app = angular.module("inventory", []);
const bUrl = 'http://localhost:8080/inventory/product'
const api = 'http://localhost:8080/inventory/api'
let products = []
let brands = []

app.controller('productInfoController', ($scope, $http) => {
    $http({
        method: 'GET',
        url: api + '/findAllProducts'
    }).then(function successCallback(res) {
        products = res.data.products;
    }, function errorCallback(res) {
        console.log(res);
    });

    $http({
        method: 'GET',
        url: api + '/findAllBrands'
    }).then(function successCallback(res) {
        brands = res.data.brands;
    }, function errorCallback(res) {
        console.log(res)
    });

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
            url: api + '/findAllProducts'
        }).then(function successCallback(res) {
            for (let i = 0; i < res.data.products.length; i++) {
                if (res.data.products[i].id === id) {
                    $scope.u = res.data.products[i];
                    break;
                }
            }
        }, function errorCallback(res) {
            console.log(res);
        });
    }

    $scope.clearInput = () => {
        $scope.u.imageUrl = "";
    }

    $scope.updateProduct = () => {
        let product = JSON.stringify($scope.u);
        $http({
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: bUrl + '/update',
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

    $scope.getInfo = (id) => {
        let brandId = 0;
        let desc = "";

        for (let i = 0; i < products.length; i++){
            if(id === products[i].id){
                brandId = products[i].brandId;
                desc = products[i].description;
                break;
            }
        }

        for (let i = 0; i < brands.length; i++){
            if(brandId === brands[i].id){
                $scope.name = brands[i].name;
                $scope.desc = desc;
                $scope.image = brands[i].imageUrl;
                break;
            }
        }
    }
});