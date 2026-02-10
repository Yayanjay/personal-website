<script setup>
defineProps({
  project: {
    type: Object,
    required: true,
  },
});
</script>

<template>
  <article class="project-card group bg-[#171717] rounded-xl overflow-hidden border border-[#262626] hover:border-yellow-400/50 transition-all duration-300">
    <div class="relative overflow-hidden">
      <img
        :src="project.image"
        :alt="project.title"
        class="w-full h-48 object-cover transform group-hover:scale-105 transition-transform duration-300"
      />
      <div class="absolute inset-0 bg-black/0 group-hover:bg-black/40 transition-colors duration-300"></div>
    </div>
    <div class="p-6">
      <h3 class="text-xl font-bold text-white mb-2 group-hover:text-yellow-400 transition-colors">
        {{ project.title }}
      </h3>
      <p class="text-neutral-400 text-sm leading-relaxed mb-4">
        {{ project.description }}
      </p>
      <div class="flex flex-wrap gap-2 mb-4">
        <span
          v-for="tag in project.tags"
          :key="tag"
          class="px-3 py-1 text-xs font-medium bg-[#0a0a0a] text-yellow-400 rounded-full border border-[#262626]"
        >
          {{ tag }}
        </span>
      </div>
      <div class="flex gap-3">
        <a
          v-if="project.demoUrl"
          :href="project.demoUrl"
          target="_blank"
          class="flex-1 px-4 py-2 text-sm font-medium text-black bg-yellow-400 rounded-lg hover:bg-yellow-500 transition-colors text-center"
        >
          Live Demo
        </a>
        <a
          v-if="project.repoUrl"
          :href="project.repoUrl"
          target="_blank"
          class="flex-1 px-4 py-2 text-sm font-medium text-white bg-transparent border border-[#262626] rounded-lg hover:bg-[#262626] transition-colors text-center"
        >
          GitHub
        </a>
      </div>
    </div>
  </article>
</template>
