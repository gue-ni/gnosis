const markdownItAnchor = require("markdown-it-anchor");

module.exports = (eleventyConfig) => {
  eleventyConfig.addPassthroughCopy("scripts");
  eleventyConfig.addPassthroughCopy("configs");
  eleventyConfig.addPassthroughCopy("books");
  eleventyConfig.addPassthroughCopy("static");
  eleventyConfig.addPassthroughCopy("{images,configs,doc}/**/*.{png,jpg,jpeg,ico,gif,css,js,mp4}");

  const markdown = markdownIt({
		html: true,
	});

	markdown.use(markdownItAnchor);
	eleventyConfig.setLibrary("md", markdown)
};
