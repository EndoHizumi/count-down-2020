<template>
  <div id="app">
    <div id="header">
      <h1>Sun rise</h1>
      <h2 style="font-weight:bold">{{message}}</h2>
    </div>
    <div id="controller">
      <p>
        <img class="quake" v-bind:src="imagePath" v-on:click="append" />
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
    <img class="tsukkomi" v-bind:src="tsukkomiPath" v-if="this.foods.length >= this.limit" v-on:click="onTap"/>
  </div>
</template>

<script>
import token from "./components/token";
export default {
  name: "app",
  mounted: function() {
    this.limit = Math.round(window.outerWidth / 100) * Math.round(window.outerHeight / 160)
  },
  data() {
    return {
      state: "quake",
      message: "A happy new year",
      foods: [],
      imagePath: require("./asset/mekemeke.png"),
      tsukkomiPath: require("./asset/tsukkomi.png"),
      limit: 0,
      tap: 0
    };
  },
  components: {
    token
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
    },
    onTap() {
      this.tap+=1
      if(this.tap >= 10){
        this.imagePath=require("./asset/surpise.png")
        this.tsukkomiPath=require("./asset/tsukkomi2.png")
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
  -webkit-text-stroke: 1px lightgray;
}
.tokens {
  position: absolute;
  top: 0;
  z-index: -1;
  width: 99%;
}

.tsukkomi {
  display: block;
  position: absolute;
  bottom: 0;
}
</style>
