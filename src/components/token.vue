<template>
  <div v-bind:class="[state,name]">{{token}}</div>
</template>

<script>
export default {
  props: {
    name: String,
    state: String,
    token: String
  }
};
</script>

<style>
.token {
  font-family: "Segoe UI Emoji", "Segoe UI Symbol", "Apple Color Emoji",
    "Noto Color Emoji", "Noto Emoji", sans-serif;
  font-size: 500%;
  margin-left: auto;
  margin-right: auto;
  display: inline-block;
  -webkit-writing-mode: vertical-rl;
  -ms-writing-mode: tb-rl;
  writing-mode: vertical-rl;
}

.quake {
  display: inline-block;
  animation: quake 0.1s infinite;
}

@keyframes quake {
  0% {
    transform: translate(0px, 0px) rotateZ(0deg);
  }
  25% {
    transform: translate(2px, 2px) rotateZ(1deg);
  }
  50% {
    transform: translate(0px, 2px) rotateZ(0deg);
  }
  75% {
    transform: translate(2px, 0px) rotateZ(-1deg);
  }
  100% {
    transform: translate(0px, 0px) rotateZ(0deg);
  }
}
</style>

