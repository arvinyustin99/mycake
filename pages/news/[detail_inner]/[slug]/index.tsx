import HalfHero from "components/HalfHero";
import HeaderFooter from "layouts/HeaderFooter";
import { Contact, News } from "types";
import { singleNewsStub } from 'config';
import { getContact } from "resources/contact";
import { getNewsById } from 'resources/news';
import { NextPageContext } from "next";
import ParagraphCard from "components/ParagraphCard";
import moment from "moment";

import Error from "next/error";

interface Props {
    contactRes: Contact;
    newsRes: any;
    pathName: string;
}

const InnerNews = (param: Props) => {
    const tempStub = singleNewsStub;
    const { contactRes } = param;
    const { newsRes } = param && param.newsRes
        ? param
        : { newsRes: {} as News };

    if (Object.keys(newsRes).length === 0) {
        return (
            <Error statusCode={404} />
        );
    } else {
        return (
            <HeaderFooter pageTitle={newsRes.title} parent={`news_inner`} contactData={contactRes}>
                <HalfHero title={newsRes.title} />
                <div className="blog-content-container">
                    <div className="container">
                        <div className="row d-flex justify-content-center">
                            <div className="col-lg-10 col-12">
                                <div className="blog-content">
                                    <div className="blog-date">{moment(newsRes.published_at).format('DD MMMM YYYY')}</div>
                                    <img className="blog-item-image" src={`${newsRes.image_link}`} />
                                    <ParagraphCard paragraph={newsRes.content} />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </HeaderFooter>
        );
    }
}

InnerNews.getInitialProps = async (ctx: NextPageContext) => {
    const newsId = parseInt(ctx.query.detail_inner as string, 10) || -1;
    const pathName: string = ctx.asPath;

    const [contactRes, newsRes] = await Promise.all([getContact(), getNewsById(newsId)]);

    return { contactRes, newsRes, pathName };
}

export default InnerNews;