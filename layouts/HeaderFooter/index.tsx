import Head from 'next/head';
import Navbar from 'components/Navbar';
import { ReactNode } from 'react';
import Footer from 'components/Footer';
import { Contact } from 'types';

/**
 * This is the layout for not calling the same props on each pages
 * Must provide the data for Navbar and Footer
 */
interface Props {
    children: ReactNode;
    pageTitle: string;
    parent: string;
    contactData: Contact;
}

const HeaderFooter = (param: Props) => {
    const { pageTitle, parent, children, contactData} = param;

    return (
        <div>
            <Head>
                <title>{pageTitle || `MyCake`}</title>
                <link rel="icon" href={`static/assets/logo_no_label_low.png`} />
            </Head>
            <Navbar active={parent} />
            {children}
            <Footer
                address={contactData.address}
                telephone={contactData.telephone}
                timeOpened={contactData.open_hour}
                addressLink={contactData.map_point}
            />
        </div>
    );
}

export default HeaderFooter;