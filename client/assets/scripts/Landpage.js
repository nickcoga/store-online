import STORE from "./store.js";

export default function Landpage(parentSelector) {
  if (!Landpage.instance) {
    this.parentSelector = parentSelector;
    this.parentElement = document.querySelector(parentSelector);
    this.toString = function () {
      return `
      <table class=" js-TablaCategory-Products table mt-2 table-bordered table-striped">
        <thead>
          <tr class="text-center">
            <td>ID</td>
            <td>NAME</td>
            <td>PRECIO UNITARIO</td>
            <td>BRAND</td>
            <td>WEIGHT</td>
            <td>MODEL</td>
            <td>CATEGORIA</td>
          </tr>
        </thead>
        <tbody class="tbody">
        </tbody>
      </table>
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
    return `
    <table id=${key} class="js-TablaCategory-Products table mt-2 table-bordered table-striped">
    <thead>
      <tr class="text-center">
        <th COLSPAN=7>${categorie.name}</th>
      </tr>
      <tr class="text-center">
        <th>ID</th>
        <th>NAME</th>
        <th>PRECIO UNITARIO</th>
        <th>BRAND</th>
        <th>WEIGHT</th>
        <th>MODEL</th>
        <th>CATEGORIA</th>
      </tr>
    </thead>
      <tbody class="tbody">
      ${categorie.products
        .map((product) => {
          return `
          <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.unit_price}</td>
            <td>${product.brand}</td>
            <td>${product.weight}</td>
            <td>${product.model}</td>
            <td>${product.category_id}</td>
          </tr>
        `;
        })
        .join("")}
    </tbody>
  </table> 
    `;
  });
  container.innerHTML = categories.join("");
  console.log("products", categories);
};

Landpage.prototype.render = function () {
  this.parentElement.innerHTML = this;
  this.generateCategories(".js-TablaCategory-Products");
  console.log(this);
};
