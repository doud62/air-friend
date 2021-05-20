const notice = document.querySelector(".notice");

const addClassToNotice = () => {
  notice.classList.add("hidden");
};

const hideNotice = () => {
  setTimeout(addClassToNotice, 3000);
  console.log("execute");
};

export { hideNotice };
