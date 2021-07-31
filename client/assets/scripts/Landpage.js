import STORE from "./store.js";

export default function Landpage(parentSelector) {
  if (!Landpage.instance) {
    this.parentSelector = parentSelector;
    this.parentElement = document.querySelector(parentSelector);
    this.toString = function () {
      return `
      <table id="tablaProductos" class="table mt-2 table-bordered table-striped">
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

Landpage.prototype.generateProducts = function (parentSelector) {
  const container = this.parentElement.querySelector(parentSelector);
  console.log(this.parentElement);
  console.log(container);
  const products = STORE.products.map((product) => {
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
  });
  container.innerHTML = products.join("");
  console.log("products", products);
};

Landpage.prototype.render = function () {
  this.parentElement.innerHTML = this;
  this.generateProducts(".tbody");
  console.log(this);
};
