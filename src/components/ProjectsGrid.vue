<script setup>
import { ref } from "vue";
import projectsData from "@/data/projects.json";
import ProjectCard from "./ProjectCard.vue";

const projects = ref(projectsData);
</script>

<template>
  <section id="projects" class="py-20 bg-[#0a0a0a]">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="text-center mb-12">
        <h2 class="text-3xl md:text-4xl font-bold text-white mb-4">
          Featured Projects
        </h2>
        <p class="text-lg text-neutral-400 max-w-2xl mx-auto">
          A collection of projects I've worked on, showcasing my skills and experience across different technologies.
        </p>
      </div>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
        <ProjectCard
          v-for="project in projects"
          :key="project.id"
          :project="project"
        />
      </div>
    </div>
  </section>
</template>
