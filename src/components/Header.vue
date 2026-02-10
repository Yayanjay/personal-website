<script setup>
import { RouterLink } from "vue-router";
</script>

<template>
  <header class="header">
    <RouterLink to="/" class="logo">zayyanabdillah</RouterLink>
      <nav class="nav">
        <RouterLink to="/" class="nav-link">Home</RouterLink>
        <RouterLink to="/#about" class="nav-link">About</RouterLink>
        <RouterLink to="/#projects" class="nav-link">Projects</RouterLink>
      </nav>
  </header>
</template>

<style scoped>
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px 32px;
  background: #0a0a0a;
  position: sticky;
  top: 0;
  z-index: 100;
  border-bottom: 1px solid #262626;
}
.nav {
  display: flex;
  gap: 32px;
}
.logo {
  font-weight: 700;
  font-size: 18px;
  color: #fff;
  text-decoration: none;
  letter-spacing: -0.5px;
}
.nav-link {
  color: #a3a3a3;
  text-decoration: none;
  font-size: 15px;
  font-weight: 500;
  transition: color 0.2s;
}
.nav-link:hover {
  color: #fff;
}
.nav-link:global(.router-link-active) {
  color: #FACC15;
  font-weight: 600;
}
</style>
