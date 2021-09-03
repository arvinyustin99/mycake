import axios from "axios";
import { backendURL, DEFAULT_LIMIT_PRODUCTS } from "config";
import { ProductPreview } from "types";

export const getProducts = async (page: number, limit: number = DEFAULT_LIMIT_PRODUCTS) => {
    try {
        const start = (page - 1) * limit;
        const {data: productRes} = await axios.get(`${backendURL}/products?_sort=created_at:DESC&_start=${start}&_limit=${limit}`);
        return <ProductPreview[]>productRes;
    } catch(error){
        console.error(error);
        return <ProductPreview[]>[];
    }
}

export const getProductCount = async () => {
    try {
        const {data: resCount} = await axios.get(`${backendURL}/products/count`);
        return <number>resCount;
    } catch (error) {
        console.error(error);
        return <number>0;
    }
}