import axios from 'axios';
import { backendURL, DEFAULT_LIMIT_NEWS } from "config";
import { News } from 'types';

export const getNews = async (page: number, limit: number = DEFAULT_LIMIT_NEWS) => {
    try {
        const start = (page - 1) * limit;
        const {data: newsRes} = await axios.get(`${backendURL}/articles?_sort=created_at:DESC&_start=${start}&_limit=${limit}`);
        return <News[]>newsRes;
    } catch(error){
        console.error(error);
        return <News[]>[];
    }
}

export const getNewsCount = async () => {
    try {
        const {data: resCount} = await axios.get(`${backendURL}/articles/count`);
        return <number>resCount;
    } catch (error) {
        console.error(error);
        return <number>0;
    }
}