module.exports = (eleventyConfig) => {
  eleventyConfig.addPassthroughCopy("scripts");
  eleventyConfig.addPassthroughCopy("books");
  eleventyConfig.addPassthroughCopy("{images,configs,doc}/**/*.{png,jpg,jpeg,ico,gif,css,js,mp4}");

};