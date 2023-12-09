const pluginRss = require("@11ty/eleventy-plugin-rss");
const { DateTime } = require("luxon");

module.exports = function (eleventyConfig) {
	// plugins
	eleventyConfig.addPlugin(pluginRss);

	// so styling works!
	eleventyConfig.addPassthroughCopy("./src/cdn/style");
	eleventyConfig.addWatchTarget("./src/cdn/style");
	
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
};