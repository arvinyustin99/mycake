import axios from "axios";
import { backendURL } from "config";
import { Contact } from "types";

export const getContact = async() => {
    try {
        const {data: contactRes } = await axios.get(`${backendURL}/contact`);
        return <Contact>contactRes;
    } catch (error) {
        console.error(error);
        return <Contact>{};
    }
}