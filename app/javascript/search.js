if (location.pathname.match("/")){
  document.addEventListener("DOMContentLoaded", () => {
    const inputElement = document.getElementById("keyword");
    inputElement.addEventListener("keyup", () => {
      const keyword = document.getElementById("keyword").value;
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `posts/search_candidate/?keyword=${keyword}`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = () => {
        const searchResult = document.getElementById("search-result");
        searchResult.innerHTML = ""
        if (XHR.response) {
          const titleName = XHR.response.keyword;
          titleName.forEach((t) => {
            const childElement = document.createElement("div");
            childElement.setAttribute("class", "child");
            childElement.setAttribute("id", t.id);
            childElement.innerHTML = t.title;
            searchResult.appendChild(childElement);
            const clickElement = document.getElementById(t.id);
            clickElement.addEventListener("click", () => {
              document.getElementById("keyword").value = clickElement.textContent;
              searchResult.innerHTML = ""
            });
          });
        };

      };
    });
  });
};