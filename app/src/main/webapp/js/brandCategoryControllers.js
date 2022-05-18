const setIdOnModalCategory = (id) => {
    console.log(id)
    document.getElementById('cId').value = id;
}

const setIdOnModalBrand = (id) => {
    console.log(id)
    document.getElementById('bId').value = id;
}

const app = angular.module("inventory", []);
app.controller("categoryController", ($scope, $http, $sce) => {
    $scope.getInfoCategory = (id) => {
        $http({
            method: 'GET',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: 'http://localhost:8080/inventory/api/findAllCategories'
        }).then(function successCallback(res) {
            for (let i = 0; i < res.data.categories.length; i++) {
                if (res.data.categories[i].id === id) {
                    $scope.uId = res.data.categories[i].id;
                    $scope.uName = res.data.categories[i].name;
                    $scope.uIconName = res.data.categories[i].iconName;
                    $scope.uDescription = res.data.categories[i].description;
                    break;
                }
            }
        }, function errorCallback(res) {
            console.log(res)
        })
    }

    $scope.getInfoBrand = (id) => {
        $http({
            method: 'GET',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            url: 'http://localhost:8080/inventory/api/findAllBrands'
        }).then(function successCallback(res) {
            for (let i = 0; i < res.data.brands.length; i++) {
                if (res.data.brands[i].id === id) {
                    $scope.uBrId = res.data.brands[i].id;
                    $scope.uBrName = res.data.brands[i].name;
                    $scope.uBrImageUrl = res.data.brands[i].imageUrl;
                    break;
                }
            }
        }, function errorCallback(res) {
            console.log(res)
        })
    }

    $scope.clearUrl = () => {
        $scope.uBrImageUrl = "";
    }
})