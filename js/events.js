async function copyFileToClipboard(event) {
    event.preventDefault()
    let href = event.target.getAttribute('href')

    let response = await fetch(href)
    if (!response.ok) {
        window.location.href = href // rely on showing 404
        return
    }
    let responseContent = await response.text()

    navigator.clipboard.writeText(responseContent).catch(
        () => {
            window.location.href = href // rely on downloading the file instead
            return
        })
    document.getElementById('ibibcopy').className = "fa-solid fa-square-check"
}
