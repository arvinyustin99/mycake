export interface ProductPreview {
    id: number;
    image_link: string;
    title: string;
    content: string;
}

export interface News {
    id: number;
    image_link: string;
    title: string;
    content: string;
    published_at: Date;
}

export interface History {
    description: string;
    image_link_1: string;
    image_link_2: string;
}

export interface Homepage {
    title: string;
    heading: string;
}

export interface Contact {
    address: string;
    telephone: string;
    open_hour: string;
    map_point: string;
}

export interface authLoginBackend {
    jwt: string;
    user: {
        id: number;
        username: string;
        email: string;
    }
}