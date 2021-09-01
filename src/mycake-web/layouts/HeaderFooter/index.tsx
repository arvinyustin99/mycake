import Head from 'next/head';
import Navbar from 'components/Navbar';
import { ReactNode } from 'react';
import Footer from 'components/Footer';

/**
 * This is the layout for not calling the same props on each pages
 * Must provide the data for Navbar and Footer
 */
interface Props {
    children: ReactNode;
    pageTitle: string;
    parent: string;
}

const HeaderFooter = (param: Props) => {
    const { pageTitle, parent, children } = param;
    return (
        <div>
            <Head>
                <title>{pageTitle || `Kost Kartini`}</title>
                <link rel="icon" href={`static/assets/logo_no_label_low.png`} />
            </Head>
            <Navbar active={parent} />
            {children}
            <Footer
                address={`Jln. Asoi Kec. Asoi Diu Loi`}
                telephone={`+62 61 556009`}
                timeOpened={`Setiap Hari, 08.00-10.00 WIB`}
                addressLink={``}
            />
        </div>
    );
}

export default HeaderFooter;