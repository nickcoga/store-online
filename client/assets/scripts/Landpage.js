import STORE from "./store.js";

export default function Landpage(parentSelector) {
  if (!Landpage.instance) {
    this.parentSelector = parentSelector;
    this.parentElement = document.querySelector(parentSelector);
    this.toString = function () {
      return `
      <div class="js-content-card row g-2">
      </div>
      `;
    };
    Landpage.instance = this;
  }
  return Landpage.instance;
}

Landpage.prototype.generateCategories = function (parentSelector) {
  const container = this.parentElement.querySelector(parentSelector);
  console.log(this.parentElement);
  console.log(STORE.categories);
  const categories = STORE.categories.map((categorie, key = index) => {
    console.log("products:", categorie.products);
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
                <p class="card-text mb-0">${product.unit_price}</p>
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
  console.log("products", categories);
};

Landpage.prototype.render = function () {
  this.parentElement.innerHTML = this;
  this.generateCategories(".js-content-card");
  console.log(this);
};
