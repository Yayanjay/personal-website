<script setup>
import profileData from "@/data/profile.json";
import portraitImage from "@/assets/potrait.jpeg";
import cvPdf from "@/assets/cv.pdf";

const profile = profileData;
</script>

<template>
    <section class="hero min-h-screen flex items-center py-20 bg-[#0a0a0a]">
        <div class="max-w-6xl w-full mx-auto px-6">
            <div
                class="flex flex-col lg:flex-row items-center gap-12 lg:gap-20"
            >
                <div
                    class="shrink-0 order-2 lg:order-1 lg:self-stretch lg:flex lg:items-center"
                >
                    <div class="relative">
                        <div
                            class="absolute inset-0 bg-yellow-400/20 rounded-full blur-3xl transform translate-y-4"
                        ></div>
                        <img
                            :src="portraitImage"
                            :alt="profile.name"
                            class="relative w-48 h-48 md:w-80 md:h-80 lg:w-96 lg:h-full rounded-2xl object-cover shadow-2xl border-2 border-[#262626]"
                        />
                    </div>
                </div>
                <div class="flex-1 order-1 lg:order-2 text-center lg:text-left">
                    <p
                        class="text-yellow-400 font-medium mb-2 tracking-wide uppercase text-sm"
                    >
                        Hello, I'm
                    </p>
                    <h1
                        class="text-4xl md:text-5xl lg:text-6xl font-bold text-white mb-4 leading-tight"
                    >
                        {{ profile.name }}
                    </h1>
                    <p
                        class="text-xl md:text-2xl text-yellow-400 font-semibold mb-6"
                    >
                        {{ profile.role }}
                    </p>
                    <p
                        class="text-neutral-400 text-lg leading-relaxed max-w-xl mb-8"
                    >
                        {{ profile.bio }}
                    </p>
                    <div
                        class="flex flex-wrap gap-3 justify-center lg:justify-start mb-8"
                    >
                        <span
                            v-for="skill in profile.skills"
                            :key="skill"
                            class="px-4 py-2 text-sm font-medium bg-[#171717] text-white rounded-full border border-[#262626]"
                        >
                            {{ skill }}
                        </span>
                    </div>
                    <div
                        class="flex items-center gap-4 justify-center lg:justify-start"
                    >
                        <a
                            href="https://github.com/Yayanjay"
                            target="_blank"
                            class="p-3 bg-[#171717] rounded-full border border-[#262626] text-neutral-400 hover:text-yellow-400 hover:border-yellow-400 transition-all duration-300"
                            aria-label="GitHub"
                        >
                            <svg
                                class="w-5 h-5"
                                fill="currentColor"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"
                                />
                            </svg>
                        </a>
                        <a
                            href="https://www.linkedin.com/in/zayyanabdillah/"
                            target="_blank"
                            class="p-3 bg-[#171717] rounded-full border border-[#262626] text-neutral-400 hover:text-yellow-400 hover:border-yellow-400 transition-all duration-300"
                            aria-label="LinkedIn"
                        >
                            <svg
                                class="w-5 h-5"
                                fill="currentColor"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"
                                />
                            </svg>
                        </a>
                        <a
                            href="mailto:yayanabdillah01@gmail.com"
                            class="p-3 bg-[#171717] rounded-full border border-[#262626] text-neutral-400 hover:text-yellow-400 hover:border-yellow-400 transition-all duration-300"
                            aria-label="Email"
                        >
                            <svg
                                class="w-5 h-5"
                                fill="currentColor"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    d="M24 5.457v13.909c0 .904-.732 1.636-1.636 1.636h-3.819V11.73L12 16.64l-6.545-4.91v9.273H1.636A1.636 1.636 0 010 19.366V5.457c0-2.023 2.309-3.178 3.927-1.964L5.455 4.64 12 9.548l6.545-4.91 1.528-1.145C21.69 2.28 24 3.434 24 5.457z"
                                />
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
