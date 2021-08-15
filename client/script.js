import Landpage from "./assets/scripts/Landpage.js";
import CategoriesService from "./assets/scripts/services/categories_service.js";
import STORE from "./assets/scripts/store.js";

// This async function waits data of file categories_services.js to render landpage
async function init() {
  const landpage = new Landpage(".js-container");

  const categoriesService = new CategoriesService();
  STORE.categories = await categoriesService.list();
  landpage.render();
}

init();
