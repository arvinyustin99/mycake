export interface ProductPreview {
    id: number;
    image: Image;
    title: string;
    content: string;
}

export interface News {
    id: number;
    image: Image;
    title: string;
    content: string;
}

export interface Image {
    url: string;
}

export interface authLoginBackend {
    jwt: string;
    user: {
        id: number;
        username: string;
        email: string;
    }
}

export const productPreviewStub: ProductPreview[] = [

    {
        id: 1,
        image: {
            url: `static/assets/product_choco_sour_cream_bundt_cake.jpg`
        },
        title: `Choco Sour Cream Bundt`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 2,
        image: {
            url: `static/assets/product_choco_expresso_layer.jpeg`
        },
        title: `Chocolate Expresso`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 3,
        image: {
            url: `static/assets/product_tiramisu.jpg`
        },
        title: `Tiramisu`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 4,
        image: {
            url: `static/assets/product_victoria_sponge.jpg`
        },
        title: `Victoria Sponge`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    }
];

export const newsStub: News[] = [
    {
        id: 1,
        image: {
            url: `static/assets/about_new_shop.jpg`
        },
        title: `Renovasi, Pesanan dilakukan Online`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 2,
        image: {
            url: `static/assets/product_tiramisu.jpg`
        },
        title: `New Product Cake untuk Pecinta Spongy Cake!`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 3,
        image: {
            url: `static/assets/about_new_shop.jpg`
        },
        title: `Payment Baru! Tanpa perlu membawa tunai yang berat`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    }
];

export const singleNewsStub: News = {
    id: 5,
    image: {
        url: `static/assets/product_tiramisu.jpg`
    },
    title: `Renovasi, Pesanan dilakukan Online`,
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Eu consequat ac felis donec et odio pellentesque. Consectetur a erat nam at lectus urna duis convallis convallis. Tempus quam pellentesque nec nam aliquam sem et. Morbi tristique senectus et netus et malesuada fames ac turpis. Nulla facilisi etiam dignissim diam quis enim lobortis. Integer feugiat scelerisque varius morbi enim nunc faucibus. Scelerisque varius morbi enim nunc faucibus a pellentesque sit. Ipsum nunc aliquet bibendum enim. Eget mauris pharetra et ultrices neque ornare.\nVel eros donec ac odio tempor orci dapibus ultrices in. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Nunc sed blandit libero volutpat sed cras ornare arcu. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Orci porta non pulvinar neque laoreet suspendisse. Ullamcorper eget nulla facilisi etiam dignissim diam. Proin fermentum leo vel orci porta non. Ac turpis egestas maecenas pharetra convallis posuere morbi leo. Purus sit amet luctus venenatis lectus magna. Sagittis purus sit amet volutpat consequat mauris. Duis at tellus at urna condimentum mattis pellentesque. Rutrum quisque non tellus orci ac auctor augue mauris augue. Vitae semper quis lectus nulla at. Elementum eu facilisis sed odio.\nArcu non odio euismod lacinia at. Bibendum est ultricies integer quis auctor elit. Sit amet nisl suscipit adipiscing bibendum est ultricies integer. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Duis at tellus at urna condimentum mattis pellentesque. Curabitur vitae nunc sed velit dignissim sodales ut eu. Diam volutpat commodo sed egestas egestas. Sodales ut eu sem integer vitae. Morbi leo urna molestie at elementum eu facilisis sed. Augue interdum velit euismod in. Id aliquet lectus proin nibh nisl condimentum id. Bibendum arcu vitae elementum curabitur vitae nunc sed. Neque ornare aenean euismod elementum. Erat velit scelerisque in dictum non consectetur a. Quis risus sed vulputate odio ut enim blandit. Blandit aliquam etiam erat velit scelerisque. Dapibus ultrices in iaculis nunc.'
}