export default function() {
  const count = this.getAttribute("count") || 0
  const faviconLink = document.querySelector("link[rel*='icon']")
  const iconPath = count > 0 ? "./icon-unread.svg" : "./icon.svg"

  faviconLink.href = iconPath
}
