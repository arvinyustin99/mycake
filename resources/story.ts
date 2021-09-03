import axios from 'axios';
import { backendURL } from 'config';

export const getHistoryProps = async() => {
    try {
        const {data: response} = await axios.get(`${backendURL}/story`);
        return <History>response;
    } catch (error) {
        console.error(error)
        return <History>{};
        
    }
}