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
          <div class="row">
            <div class="col-2 col-lg-2"></div>
            <div class="col-5 col-lg-2">BSales Test</div>
            <div class="col-5 col-lg-2">Tienda</div>

            <div class="col-12 col-lg-6 d-flex gap-4">
                <form class="js-form-search d-flex gap-4">
                  <div>
                  <input class="js-search border-0 rounded-pill" type="text" value=""/>
                  </div>
                  <div>
                    <i class="fas fa-search"></i>
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
  const categories = STORE.categories.map((categorie) => {
    return `

    <div class="col-12 ">${categorie.name}</div>
    ${categorie.products
      .map((product) => {
        return `
        <div class="col-6 col-lg-2">
          <div class="card">
            <img
              src="${product.links}"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h5 class="card-title text-truncate">${product.name}</h5>
              <div class="d-flex justify-content-center align-items-center gap-3">
                <p class="card-text mb-0">$ ${product.unit_price}</p>
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
  container.innerHTML = categories.join("");
};

Landpage.prototype.searchProducts = function (parentSelector) {
  const formsearch = this.parentElement.querySelector(parentSelector);
  formsearch.addEventListener("submit", async (e) => {
    e.preventDefault();
    const value = e.target[0].value;

    const categoriesService = new CategoriesService();
    STORE.categories = await categoriesService.search(value);
    this.generateCategories(".js-content-card");
  });
};

Landpage.prototype.render = function () {
  this.parentElement.innerHTML = this;
  this.generateCategories(".js-content-card");
  this.searchProducts(".js-form-search");
};
