import Home from "@/components/Home.vue";
import Dashboard from "@/layout/Dashboard.vue";
import { createRouter, createWebHistory } from "vue-router";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  scrollBehavior(to, from, savedPosition) {
    if (to.hash) {
      return {
        el: to.hash,
        behavior: "smooth",
      };
    }
    return { top: 0, behavior: "smooth" };
  },
  routes: [
    // {
    //   path: "/",
    //   name: "home",
    //   component: Home,
    // },
    {
      path: "/",
      name: "dashboard",
      component: Dashboard,
    },
  ],
});

export default router;
