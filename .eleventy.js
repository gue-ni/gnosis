module.exports = (eleventyConfig) => {
  eleventyConfig.addPassthroughCopy("scripts");
  eleventyConfig.addPassthroughCopy("configs");
  eleventyConfig.addPassthroughCopy("books");
  eleventyConfig.addPassthroughCopy("static");
  eleventyConfig.addPassthroughCopy("{images,configs,doc}/**/*.{png,jpg,jpeg,ico,gif,css,js,mp4}");
};