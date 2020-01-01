<template>
  <div id="app">
    <div id="header">
      <h1>Sun rise</h1>
      <h2 style="font-weight:bold">{{message}}</h2>
    </div>
    <div id="controller">
      <p>
        <img class="quake" src="./asset/mekemeke.png" v-on:click="append" />
      </p>
    </div>
    <div class="tokens">
      <token
        v-for="food in foods"
        v-bind:key="food.id"
        v-bind:state="food.state"
        v-bind:name="food.name"
        v-bind:token="food.token"
      />
    </div>
  </div>
</template>

<script>
import token from "./components/token";
export default {
  name: "app",
  data() {
    return {
      state: "quake",
      message: "A happy new year",
      foods: []
    };
  },
  components: {
    token
  },
  computed: {
    index: function() {
      return this.foods.length * 100;
    }
  },
  methods: {
    append() {
      var foodNum = this.foods.length;
      this.foods.push({
        id: foodNum,
        state: this.state,
        name: "token",
        token: "メケ"
      });
    },
    reduce() {
      if (this.foods.length > 1) {
        this.foods.pop();
      }
    }
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
#header {
  z-index: 1;
  -webkit-text-stroke:1px lightgray
}
.tokens {
  position: absolute;
  top:0;
  z-index: -1;
}
</style>
