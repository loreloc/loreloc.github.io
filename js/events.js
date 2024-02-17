async function copyFileToClipboard(filepath) {
    let response = await fetch(filepath)
    if (!response.ok) {
        window.location.href = filepath // rely on showing 404
        return
    }
    let responseContent = await response.text()

    navigator.clipboard.writeText(responseContent).catch(
        () => {
            window.location.href = filepath // rely on downloading the file instead
            return
        })
    document.getElementById('ibibcopy').className = "fa-solid fa-copy"
}
