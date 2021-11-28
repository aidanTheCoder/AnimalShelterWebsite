function selectAll(source, type) {
	selectAllThatApplyBoxes = document.getElementsByName(type);
	for(var i = 0, n = selectAllThatApplyBoxes.length; i < n; ++i)
		selectAllThatApplyBoxes[i].checked = source.checked;
}