const pluginRss = require("@11ty/eleventy-plugin-rss");
const { DateTime } = require("luxon");
const inclusiveLangPlugin = require("@11ty/eleventy-plugin-inclusive-language");


module.exports = function (eleventyConfig) {
	// plugins
	eleventyConfig.addPlugin(pluginRss);
	eleventyConfig.addPlugin(inclusiveLangPlugin);

	// styling
	eleventyConfig.addPassthroughCopy("./src/cdn/style");
	eleventyConfig.addWatchTarget("./src/cdn/style");

	eleventyConfig.addPassthroughCopy("./src/cdn/image");
	eleventyConfig.addPassthroughCopy("./.well-known/");
	
	// random filter
	eleventyConfig.addFilter("randomItem", (arr) => {
		arr.sort(() => {
			return 0.5 - Math.random();
		});
		return arr.slice(0, 1);
	});

	// pretty dates!
	eleventyConfig.addFilter("postDate", (dateObj) => {
		return DateTime.fromJSDate(dateObj).toLocaleString(DateTime.DATE_MED);
	});

	return {
		dir: {
			input: "src",
			output: "public",
		},
	};

	eleventyConfig.setServerOptions({
		port: 3000
	});
};