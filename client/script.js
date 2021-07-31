import Landpage from "./assets/scripts/Landpage.js";
import ProductsService from "./assets/scripts/services/products_service.js";
import STORE from "./assets/scripts/store.js";

async function init() {
  const landpage = new Landpage(".js-container");

  const productsService = new ProductsService();
  STORE.products = await productsService.list();
  console.log(STORE.products);
  // console.log(landpage.parentSelector);
  // console.log(landpage.render());
  landpage.render();
}

init();
