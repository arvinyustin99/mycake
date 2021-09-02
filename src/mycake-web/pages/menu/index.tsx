import HalfHero from "components/HalfHero";
import Pagination from "components/Pagination";
import ProductList from "components/ProductList";
import { DEFAULT_LIMIT_PRODUCTS, productPreviewStub } from "config";
import HeaderFooter from "layouts/HeaderFooter";
import { useRouter } from "next/router";
import { getContact } from "resources/contact";
import { getProductCount, getProducts } from "resources/product";
import { Contact, ProductPreview } from "types";
import { useState, useEffect } from 'react';

interface Props {
    contactRes: Contact;
    productsRes: ProductPreview[];
    productCount: number;
}

const Menu = (param: Props) => {
    const { contactRes, productsRes, productCount } = param;
    const router = useRouter();

    const [pageProduct, setPageProduct] = useState(productsRes);
    /* Pass Function Update Page into Pagination */
    const updateRouterPage = (page: number) => {
        router.push(`/menu?page=${page}`);
    }

    const retrieveProducts = async (page: number) => {
        const res = await getProducts(page);
        setPageProduct(res);
    }

    const maxPageCount = param && param.productCount
        ? Math.ceil(param.productCount / DEFAULT_LIMIT_PRODUCTS)
        :1;
    /* Retrive page number from URL query */
    const page = router && router.query && router.query.page
        ? parseInt(router.query.page as string)
        : 1;

    useEffect(() => {
        retrieveProducts(page);
    }, [page]);
    return (
        /**
         * ProductList sudah diadjust utk page Menu dan Main
         * Paginasi sudah bisa diupdate dan kirim balik nilainya ke parent
        */

        <HeaderFooter pageTitle={`Menu`} parent={`menu`} contactData={contactRes}>
            <HalfHero title={`Menu kami`} />
            {/* Menu List */}
            <ProductList parent={`menu`} itemList={pageProduct} />
            {/* Pagination */}
            <Pagination currentPage={page} maxPage={maxPageCount} itemPerPage={DEFAULT_LIMIT_PRODUCTS} routerFunction={updateRouterPage} />
        </HeaderFooter>
    );
}

Menu.getInitialProps = async () => {
    const [contactRes, productsRes, productCount] = await Promise.all([
        getContact(),
        getProducts(1),
        getProductCount()
    ])
    return { contactRes, productsRes, productCount };
}

export default Menu;