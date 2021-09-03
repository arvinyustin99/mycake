import HeaderFooter from "layouts/HeaderFooter";
import Hero from "components/Hero";
import History from 'components/History';
import ProductList from "components/ProductList";
import { useState, useEffect } from 'react'
import { NextPageContext } from "next";
import { getHomepageProps } from "resources/homepage";
import { Homepage, History as HistoryProps, Contact, ProductPreview } from "types";
import { productPreviewStub } from "config";
import { getHistoryProps } from "resources/story";
import { getContact } from "resources/contact";
import { getProducts } from "resources/product";

interface Props {
    homepageRes: Homepage;
    historyRes: HistoryProps;
    contactRes: Contact;
    productRes: ProductPreview[];
}
const Home = (param: Props) => {
    const { homepageRes, historyRes, contactRes, productRes } = param;
    return (
        <HeaderFooter pageTitle={`My Cake`} parent={`homepage`} contactData={contactRes}>
            <div id="hero"></div>
            <Hero title={homepageRes.title} description={homepageRes.heading} />

            <div id="history"><br /><br /></div>
            <History historyContent={historyRes} />

            <div id="products"><br /><br /></div>
            <ProductList parent={`main`} itemList={productRes && productRes.length > 0 ? productRes : []} />

        </HeaderFooter>
    );
}

Home.getInitialProps = async (ctx: NextPageContext) => {
    const [
        homepageRes,
        historyRes,
        contactRes,
        productRes
    ] = await Promise.all([
        getHomepageProps(),
        getHistoryProps(),
        getContact(),
        getProducts(1, 4)
    ]);
    return { homepageRes, historyRes, contactRes, productRes };
}

export default Home;