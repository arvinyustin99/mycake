import HalfHero from "components/HalfHero";
import HeaderFooter from "layouts/HeaderFooter";
import { News, singleNewsStub } from "types";

interface Props {
    newsItem: News;
    pathName: string;
}

const InnerNews = (param: Props) => {
    const tempStub = singleNewsStub;

    const RenderContent = (): JSX.Element => {
        return (
            <div className="blog-content-container">
                <div className="container">
                    <div className="row d-flex justify-content-center">
                        <div className="col-lg-10 col-12">
                            <div className="blog-content">
                                <div className="blog-date">14 Juni 2021</div>
                                {tempStub.content}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
    return (
        <HeaderFooter pageTitle={tempStub.title} parent={`news`}>
            <HalfHero title={tempStub.title} />
            here
            <RenderContent/>
        </HeaderFooter>
    );
}

export default InnerNews;