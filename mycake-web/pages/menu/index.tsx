import HalfHero from "components/HalfHero";
import Pagination from "components/Pagination";
import ProductList from "components/ProductList";
import HeaderFooter from "layouts/HeaderFooter";
import { useRouter } from "next/router";

const Menu = () => {
    const router = useRouter();

    /* Pass Function Update Page into Pagination */
    const updateRouterPage = (page: number) => {
        router.push(`/menu?page=${page}`);
    }

    /* Retrive page number from URL query */
    const page = router && router.query && router.query.page
        ? parseInt(router.query.page as string)
        : 1;

    return (
        /**
         * ProductList sudah diadjust utk page Menu dan Main
         * Paginasi sudah bisa diupdate dan kirim balik nilainya ke parent
        */

        <HeaderFooter pageTitle={`Menu`} parent={`menu`}>
            <HalfHero title={`Menu kami`} />
            {/* Menu List */}
            <ProductList parent={`menu`} itemList={[]} />
            {/* Pagination */}
            <Pagination currentPage={page} maxPage={6} itemPerPage={4} routerFunction={updateRouterPage} />
        </HeaderFooter>
    );
}

export default Menu;