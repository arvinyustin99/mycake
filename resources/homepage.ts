import axios from 'axios';
import {backendURL} from 'config';
import {Homepage} from 'types';

export const getHomepageProps = async() => {
    try{
        const {data: propsRes} = await axios.get(`${backendURL}/homepage`);
        return <Homepage>propsRes;
    } catch(err){
        return <Homepage>{};
    }
}