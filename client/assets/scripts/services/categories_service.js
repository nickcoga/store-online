import { apiFetch, BASE_URL } from "./api_fetch.js";

function CategoriesService() {
  if (!CategoriesService.instance) {
    CategoriesService.instance = this;
  }
  return CategoriesService.instance;
}

CategoriesService.prototype.list = () =>
  apiFetch(`${BASE_URL}/categories`, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
  });

CategoriesService.prototype.search = (name) =>
  apiFetch(`${BASE_URL}/categories?name=${name}`, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
  });

export default CategoriesService;
