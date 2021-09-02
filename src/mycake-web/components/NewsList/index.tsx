import Link from "next/link";
import { News } from "types";
import { newsStub } from 'config';
import moment, {locale} from 'moment';

interface Props {
    newsList: News[];
}

const NewsList = (param: Props) => {
    const { newsList } = param && param.newsList && param.newsList.length > 0
        ? param
        : { newsList: newsStub };

    const renderNewsCard = newsList.map((item: News, idx: number) => {
        return (
            <div key={`news-card-${idx}`} className="col-lg-6 col-sm-6 col-12">
                <div className="blog-item drop-shadow">
                    <Link href="#">
                        <a>
                            <div className="row">
                                <div className="col-5">
                                    <img className="blog-item-image" src={`${item.image_link}`} alt={`${item.title}`} />
                                </div>
                                <div className="col-7">
                                    <div className="blog-item-content">
                                        <div className="blog-title">{item.title}</div>
                                        <div className="blog-date">
                                            {moment(item.published_at).format('DD MMMM YYYY')}
                                        </div>
                                        <div className="blog-paragraph">
                                            {item.content}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </Link>
                </div>
            </div>
        );
    });
    return (
        <div className="container">
            <div className="row">
                {renderNewsCard}
            </div>
        </div>
    );
}

export default NewsList;