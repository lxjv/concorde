module.exports = function (eleventyConfig) {
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
	return {
		dir: {
			input: "src",
			output: "public",
		},
	};
};