/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      products: [],
      currentProduct: {},
      nameFilter: '',
      sortAttribute: 'name'

    };
  },
  created: function() {
  	axios.get("/api/products").then(function(response){
  		this.products = response.data;
  		console.log(this.products);
  	}.bind(this));
  },
  methods: {
    setCurrentProduct: function(product) {
      this.currentProduct = product;
      console.log(this.currentProduct);
    },

    isValidProduct: function(product) {
      var validProduct = product.name.toLowerCase().includes(this.nameFilter.toLowerCase());
        return validProduct;
    },

    setSortAttribute: function() {
      if (this.sortAttribute === attribute) {
        this.sortAscending = !this.sortAscending;
      } else {
        this.sortAttribute = attribute;
        this.sortAscending = true;
      }
  }
},
  computed: {
    sortedProducts: function() {
      return this.products.sort(function(product1, product2){
        var lowerProduct1 = product1[this.sortAttribute].toLowerCase();
        var lowerProduct2 = product2[this.sortAttribute].toLowerCase();
        return lowerProduct1.localeCompare(lowerProduct2);
      }.bind(this));
    }
  }
};

var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/api/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  template: "<h1>Logout</h1>",
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/api/login");
  }
};

var ProductsNewPage = {
  template: "#products-new-page",
  data: function() {
    return {
      name: "",
      price: "",
      description: "",
      supplier_id: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        price: this.price,
        description: this.description,
        supplier_id: this.supplier_id
      };
      axios
        .post("/api/products", params)
        .then(function(response) {
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var ProductShowPage = {
  template: "#product-show-page",
  data: function() {
    return {
      product: {}
    };
  },
  created: function() {
    axios.get("/api/products/" + this.$route.params.id).then(function(response) {
      this.product = response.data;
      console.log(this.product);
      }.bind(this))
      
  },
  methods: {},
  computed: {}
};

// var ProductsEditPage = {
//   template: "#products-edit-page",
//   data: function() {
//     return {
//       name: "",
//       description: "",
//       supplier_id: "",
//       image: "",
//       price: "",
//       errors: []
//     };
//   },
//   created: function() {
//     $('#exampleModal').modal('hide');
//     axios.get("/api/products/" + this.$route.params.id).then(function(response){
//       this.name = response.data.name;
//       this.description = response.data.description;
//       this.supplier_id = response.data.directions;
//       this.price = response.data.price;
//       this.image = response.data.images[0].url;
//     }.bind(this));
//   },
//   methods: {
//     submit: function() {
//       var params = {
//         name: this.name,
//         // images[0].url: this.image,
//         supplier_id: this.supplier_id,
//         description: this.description,
//         price: this.price,
//       };
//       axios
//         .patch("/api/products/" + this.$route.params.id, params)
//         .then(function(response) {
//           router.push("/products/" + this.$route.params.id);
//         }.bind(this))
//         .catch(
//           function(error) {
//             this.errors = error.response.data.errors;
//           }.bind(this)
//         );
//     }
//   }
// };







var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage },
    { path: "/products/new", component: ProductsNewPage},
    { path: "/products/:id", component: ProductShowPage},
    // { path: "/products/:id", component: ProductEditPage}

  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});