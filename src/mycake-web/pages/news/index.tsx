import HalfHero from "components/HalfHero";
import NewsList from "components/NewsList";
import Pagination from "components/Pagination";
import HeaderFooter from "layouts/HeaderFooter";

import { useRouter } from "next/router";

const News = () => {
    const router = useRouter();

    /* Pass Function Update Page into Pagination */
    const updateRouterPage = (page: number) => {
        router.push(`/news?page=${page}`);
    }

    /* Retrive page number from URL query */
    const page = router && router.query && router.query.page
        ? parseInt(router.query.page as string)
        : 1;
    return (
        <HeaderFooter pageTitle="News & Promo" parent={`news`}>
            <HalfHero title={`Berita & Promo`} description={`Tidak hanya sekadar oleh-oleh, berjuta rasa dan kreativitas dalam sebuah piring.`} />
            <NewsList newsList={[]} />
            <Pagination currentPage={page} maxPage={4} routerFunction={updateRouterPage} />
        </HeaderFooter>
    );
}

export default News;