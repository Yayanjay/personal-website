<script>
import router from "./router";

export default {
    data() {
        return {
            count: 0,
        };
    },
    methods: {
        increment() {
            this.count++;
        },
    },
};
</script>

<template>
    <!-- <button @click="increment">Count is: {{count}}</button> -->
    <router-view />
</template>
