import { News, ProductPreview } from 'types';

export const backendURL = 'https://mycake-cms.herokuapp.com';
export const appURL = 'http://localhost:3000';
export const DEFAULT_LIMIT_PRODUCTS = 4;
export const DEFAULT_LIMIT_NEWS = 6;

export const productPreviewStub: ProductPreview[] = [

    {
        id: 1,
        image_link: `https://beyondfrosting.com/wp-content/uploads/2019/11/Chocolate-Sour-cream-Bundt-Cake-052.jpg`,
        title: `Choco Sour Cream Bundt`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 2,
        image_link: `https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYFlmilNh-JcWoycsyVW_bmqIZKER35hipPw&usqp=CAU`,
        title: `Chocolate Expresso`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 3,
        image_link: `https://www.marcellinaincucina.com/wp-content/uploads/2019/11/Tiramisu-blog-portrait-2.jpg`,
        title: `Tiramisu`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 4,
        image_link: `https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxtsnyODrroqoZCmSOBQ7L_ubos63rON88kg&usqp=CAU`,
        title: `Victoria Sponge`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    }
];

export const newsStub: News[] = [
    {
        id: 1,
        image_link: `static/assets/about_new_shop.jpg`,
        title: `Renovasi, Pesanan dilakukan Online`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 2,
        image_link: `static/assets/product_tiramisu.jpg`,
        title: `New Product Cake untuk Pecinta Spongy Cake!`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        id: 3,
        image_link: `static/assets/about_new_shop.jpg`,
        title: `Payment Baru! Tanpa perlu membawa tunai yang berat`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    }
];

export const singleNewsStub: News = {
    id: 5,
    image_link: `static/assets/product_tiramisu.jpg`,
    title: `Renovasi, Pesanan dilakukan Online`,
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi enim nunc faucibus a pellentesque sit amet porttitor. Eu consequat ac felis donec et odio pellentesque. Consectetur a erat nam at lectus urna duis convallis convallis. Tempus quam pellentesque nec nam aliquam sem et. Morbi tristique senectus et netus et malesuada fames ac turpis. Nulla facilisi etiam dignissim diam quis enim lobortis. Integer feugiat scelerisque varius morbi enim nunc faucibus. Scelerisque varius morbi enim nunc faucibus a pellentesque sit. Ipsum nunc aliquet bibendum enim. Eget mauris pharetra et ultrices neque ornare.\nVel eros donec ac odio tempor orci dapibus ultrices in. Amet massa vitae tortor condimentum lacinia quis vel eros donec. Nunc sed blandit libero volutpat sed cras ornare arcu. Enim nulla aliquet porttitor lacus luctus accumsan tortor. Orci porta non pulvinar neque laoreet suspendisse. Ullamcorper eget nulla facilisi etiam dignissim diam. Proin fermentum leo vel orci porta non. Ac turpis egestas maecenas pharetra convallis posuere morbi leo. Purus sit amet luctus venenatis lectus magna. Sagittis purus sit amet volutpat consequat mauris. Duis at tellus at urna condimentum mattis pellentesque. Rutrum quisque non tellus orci ac auctor augue mauris augue. Vitae semper quis lectus nulla at. Elementum eu facilisis sed odio.\nArcu non odio euismod lacinia at. Bibendum est ultricies integer quis auctor elit. Sit amet nisl suscipit adipiscing bibendum est ultricies integer. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Duis at tellus at urna condimentum mattis pellentesque. Curabitur vitae nunc sed velit dignissim sodales ut eu. Diam volutpat commodo sed egestas egestas. Sodales ut eu sem integer vitae. Morbi leo urna molestie at elementum eu facilisis sed. Augue interdum velit euismod in. Id aliquet lectus proin nibh nisl condimentum id. Bibendum arcu vitae elementum curabitur vitae nunc sed. Neque ornare aenean euismod elementum. Erat velit scelerisque in dictum non consectetur a. Quis risus sed vulputate odio ut enim blandit. Blandit aliquam etiam erat velit scelerisque. Dapibus ultrices in iaculis nunc.'
}