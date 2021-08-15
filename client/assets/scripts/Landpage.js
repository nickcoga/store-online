import CategoriesService from "./services/categories_service.js";
import STORE from "./store.js";

export default function Landpage(parentSelector) {
  if (!Landpage.instance) {
    this.parentSelector = parentSelector;
    this.parentElement = document.querySelector(parentSelector);
    this.toString = function () {
      return `
      <header class="d-flex align-items-center">
        <div class="container-fluid">
          <div class="row ">
            <div class="col-2 col-lg-2"></div>
            <div class="col-5 col-lg-2 fs-4">BSales Test</div>
            <div class="col-5 col-lg-2 fs-4">Tienda</div>

            <div class="col-12 col-lg-6 d-flex align-items-center gap-2 gap-lg-3">
                <form class="js-form-search d-flex align-items-center gap-3">
                  <div class="border border-primary rounded-pill px-4 bg-white">
                  <input class="js-search border-0" type="text" placeholder="Busca productos..."value=""/>
                  <i class="js-fa-search fas fa-search"></i>
                  </div>
                </form>
                <div>
                <i class="fas fa-shopping-cart"></i>
                </div>
            </div>
          </div>
        </div>
      </header>
      <div class="container mt-4">
        <div class="js-content-card row g-2"></div>
      </div>
      `;
    };
    Landpage.instance = this;
  }
  return Landpage.instance;
}

Landpage.prototype.generateCategories = function (parentSelector) {
  const container = this.parentElement.querySelector(parentSelector);

  const emptyProducts = STORE.categories.length === 0;

  let categories;
  // This condition handle case if products dont exist in stock
  if (emptyProducts) {
    categories = [
      `<div class="mt-5 fs-1 fw-bold">No existen productos relacionados a la busqueda</div>`,
    ];
  } else {
    categories = STORE.categories.map((category) => {
      return `
      <div class="col-12 fs-1 fw-bold ">${category.name.toUpperCase()}</div>
      ${category.products
        .map((product) => {
          return `
          <div class="col-6 col-lg-2">
            <div class="card">
              <img
                src="${product.url_image}"
                onerror='this.onerror = null; this.src="https://www.ecpgr.cgiar.org/fileadmin/templates/ecpgr.org/Assets/images/No_Image_Available.jpg"'
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title text-truncate">${product.name}</h5>
                <div class="d-flex justify-content-center align-items-center gap-3">
                  <p class="card-text mb-0">$ ${product.price}</p>
                  <i class="fas fa-cart-plus"></i>
                </div>
              </div>
            </div>
          </div>
        `;
        })
        .join("")}
        
      `;
    });
  }

  container.innerHTML = categories.join("");
};

Landpage.prototype.searchProducts = function (parentSelector) {
  const formsearch = this.parentElement.querySelector(parentSelector);
  const input = document.querySelector(".js-search");

  const search = async (e) => {
    e.preventDefault();
    const value = input.value;
    const categoriesService = new CategoriesService();
    STORE.categories = await categoriesService.search(value);
    this.generateCategories(".js-content-card");
  };

  formsearch.addEventListener("submit", search);

  const fasearch = this.parentElement.querySelector(".js-fa-search");
  fasearch.addEventListener("click", search);
};

Landpage.prototype.render = function () {
  this.parentElement.innerHTML = this;
  this.generateCategories(".js-content-card");
  this.searchProducts(".js-form-search");
};
