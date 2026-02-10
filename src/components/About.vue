<script setup>
import profileData from "@/data/profile.json";

const about = profileData.about;
const experience = profileData.experience;
const education = profileData.education;
</script>

<template>
    <section id="about" class="py-20 bg-[#0a0a0a]">
        <div class="max-w-6xl mx-auto px-6">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-white mb-4">
                    About Me
                </h2>
                <div class="w-16 h-1 bg-yellow-400 mx-auto rounded-full"></div>
            </div>

            <div class="grid lg:grid-cols-2 gap-12 mb-16">
                <div>
                    <p class="text-neutral-300 leading-relaxed mb-6">
                        {{ about.journey }}
                    </p>
                    <p class="text-neutral-300 leading-relaxed mb-6">
                        {{ about.focus }}
                    </p>
                    <p class="text-neutral-300 leading-relaxed">
                        {{ about.approach }}
                    </p>
                </div>

                <div class="flex flex-col justify-center">
                    <div class="flex items-center gap-4 mb-8">
                        <div class="text-6xl font-bold text-yellow-400">4+</div>
                        <div class="text-xl text-neutral-400">
                            Years of<br /><span class="text-white"
                                >Experience</span
                            >
                        </div>
                    </div>

                    <div class="flex items-center gap-2 overflow-x-auto pb-2">
                        <template
                            v-for="(milestone, index) in about.milestones"
                            :key="milestone.label"
                        >
                            <div class="flex items-center gap-2">
                                <div class="flex flex-col items-center">
                                    <div
                                        class="w-12 h-12 rounded-full bg-[#171717] border border-[#262626] flex items-center justify-center"
                                    >
                                        <svg
                                            class="w-5 h-5 text-yellow-400"
                                            fill="none"
                                            stroke="currentColor"
                                            viewBox="0 0 24 24"
                                        >
                                            <path
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                                stroke-width="2"
                                                d="M5 13l4 4L19 7"
                                            />
                                        </svg>
                                    </div>
                                    <div
                                        class="text-xs text-neutral-500 mt-2 whitespace-nowrap"
                                    >
                                        {{ milestone.year }}
                                    </div>
                                </div>
                                <div
                                    v-if="index < about.milestones.length - 1"
                                    class="w-8 h-0.5 bg-[#262626]"
                                ></div>
                            </div>
                        </template>
                    </div>
                </div>
            </div>

            <div class="grid md:grid-cols-3 gap-6 mb-16">
                <div
                    v-for="area in about.focusAreas"
                    :key="area.title"
                    class="bg-[#171717] rounded-xl p-6 border border-[#262626] hover:border-yellow-400/30 transition-all duration-300"
                >
                    <div class="flex items-center gap-3 mb-4">
                        <div
                            class="w-10 h-10 rounded-lg bg-yellow-400/10 flex items-center justify-center"
                        >
                            <svg
                                class="w-5 h-5 text-yellow-400"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"
                                />
                            </svg>
                        </div>
                        <h3 class="text-lg font-semibold text-white">
                            {{ area.title }}
                        </h3>
                    </div>
                    <div class="flex flex-wrap gap-2">
                        <span
                            v-for="item in area.items"
                            :key="item"
                            class="px-3 py-1 text-sm bg-[#0a0a0a] text-neutral-300 rounded-full border border-[#262626]"
                        >
                            {{ item }}
                        </span>
                    </div>
                </div>
            </div>

            <div class="mb-16">
                <h3 class="text-2xl font-bold text-white mb-8 text-center">
                    Experience
                </h3>
                <div class="space-y-6">
                    <div
                        v-for="job in experience"
                        :key="job.company"
                        class="bg-[#171717] rounded-xl p-6 border border-[#262626]"
                    >
                        <div
                            class="flex flex-col md:flex-row md:items-center md:justify-between mb-4"
                        >
                            <div>
                                <h4 class="text-xl font-semibold text-white">
                                    {{ job.role }}
                                </h4>
                                <p class="text-yellow-400">{{ job.company }}</p>
                            </div>
                            <span
                                class="text-neutral-500 text-sm mt-2 md:mt-0"
                                >{{ job.duration }}</span
                            >
                        </div>
                        <p class="text-neutral-400 mb-4">
                            {{ job.description }}
                        </p>
                        <div class="flex flex-wrap gap-2">
                            <span
                                v-for="highlight in job.highlights"
                                :key="highlight"
                                class="px-3 py-1 text-xs bg-[#0a0a0a] text-neutral-400 rounded-full border border-[#262626]"
                            >
                                {{ highlight }}
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <h3 class="text-2xl font-bold text-white mb-8 text-center">
                    Education
                </h3>
                <div class="grid md:grid-cols-2 gap-6">
                    <div
                        v-for="edu in education"
                        :key="edu.institution"
                        class="bg-[#171717] rounded-xl p-6 border border-[#262626]"
                    >
                        <div class="flex items-start gap-4">
                            <div
                                class="w-12 h-12 rounded-lg bg-yellow-400/10 flex items-center justify-center shrink-0"
                            >
                                <svg
                                    class="w-6 h-6 text-yellow-400"
                                    fill="none"
                                    stroke="currentColor"
                                    viewBox="0 0 24 24"
                                >
                                    <path
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        stroke-width="2"
                                        d="M12 14l9-5-9-5-9 5 9 5z"
                                    />
                                    <path
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        stroke-width="2"
                                        d="M12 14l6.16-3.422a12.083 12.083 0 01.665 6.479A11.952 11.952 0 0012 20.055a11.952 11.952 0 00-6.824-2.998 12.078 12.078 0 01.665-6.479L12 14z"
                                    />
                                </svg>
                            </div>
                            <div>
                                <h4 class="text-lg font-semibold text-white">
                                    {{ edu.institution }}
                                </h4>
                                <p class="text-neutral-400">{{ edu.degree }}</p>
                                <p class="text-neutral-500 text-sm mt-1">
                                    {{ edu.duration }}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
