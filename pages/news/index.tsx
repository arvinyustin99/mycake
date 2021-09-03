import HalfHero from "components/HalfHero";
import NewsList from "components/NewsList";
import Pagination from "components/Pagination";
import { DEFAULT_LIMIT_NEWS } from "config";
import HeaderFooter from "layouts/HeaderFooter";

import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import { getContact } from "resources/contact";
import { getNews, getNewsCount } from "resources/news";
import { Contact, News as NewsProps } from "types";

interface Props {
    contactRes: Contact;
    newsRes: NewsProps[];
    newsCount: number;
}

const News = (param: Props) => {
    const router = useRouter();

    /* Pass Function Update Page into Pagination */
    const updateRouterPage = (page: number) => {
        router.push(`/news?page=${page}`);
    }

    const { contactRes, newsRes, newsCount } = param;

    const [pageNews, setPageNews] = useState(newsRes);
    /* Pass Function Update Page into Pagination */

    const retrieveNews = async (page: number) => {
        const res = await getNews(page, DEFAULT_LIMIT_NEWS);
        setPageNews(res);
    }

    const maxPageCount = param && param.newsCount
        ? Math.ceil(param.newsCount / DEFAULT_LIMIT_NEWS)
        : 1;
    /* Retrive page number from URL query */
    const page = router && router.query && router.query.page
        ? parseInt(router.query.page as string)
        : 1;

    useEffect(() => {
        retrieveNews(page);
    }, [page]);
    return (
        <HeaderFooter pageTitle="News & Promo" parent={`news`} contactData={contactRes}>
            <HalfHero title={`Berita & Promo`} description={`Tidak hanya sekadar oleh-oleh, berjuta rasa dan kreativitas dalam sebuah piring.`} />
            <NewsList newsList={pageNews} />
            <Pagination currentPage={page} maxPage={maxPageCount} routerFunction={updateRouterPage} />
        </HeaderFooter>
    );
}


News.getInitialProps = async () => {
    const [contactRes, newsRes, newsCount] = await Promise.all([
        getContact(),
        getNews(1),
        getNewsCount()
    ])
    return { contactRes, newsRes, newsCount };
}

export default News;