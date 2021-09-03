import { appURL } from "config";
import ReactMarkdown from "react-markdown";
import toc from 'remark-toc';

interface Props {
    paragraph: string;
}

const ParagraphCard = (param: Props) => {
    const { paragraph } = param && param.paragraph
        ? param
        : {paragraph: '' as string};
    
    const List = (props: any) => {
        return <li style={{ textAlign: 'left', color: '#8E8E8E' }} {...props}></li>
    }

    const renderParagraph = (props: any) => {
        const { children } = props;

        if (children && children[0]
            && children.length === 1
            && children[0].props
            && children[0].props.src) { // rendering media without p wrapper

            return <>{children}</>;
        }
        return <p>{children}</p>
    }
    return (
        <>
            {/* renderParagraph */}
            <ReactMarkdown
                source={paragraph}
                transformImageUri={(uri) => {
                    return `${appURL}${uri}`
                }}
                renderers={{
                    paragraph: renderParagraph,
                    listItem: List,
                }}
                plugins={[toc]}
            />

        </>
    );
};

export default ParagraphCard;