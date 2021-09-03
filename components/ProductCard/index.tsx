interface Props {
    index: number;
    type: String;
    parent: String;
    title: String;
    content: String;
    image?: string;
}

const ProductCard = (param: Props) => {
    const { index, parent, type, title, content, image } = param;
    if (type === 'desktop') {
        if (parent === 'main') {
            return (
                <div className="col-12 col-lg-3 col-sm-6" key={`desktop-${index}`}>
                    <div className="card drop-shadow">
                        <img className="card-image" src={`${image}`} />
                        
                        <div className="card-body">
                            <div className="about-item-title">{title}</div>
                            <p className="about-item-paragraph">
                                {content}
                            </p>
                        </div>
                    </div>
                </div>
            );
        } else if (parent === 'menu') {
            return (
                <div className="col-12 col-sm-6 col-lg-3" key={`products-${index}`}>
                    <div className="card drop-shadow">
                        <img className="card-image menu-card-image" src={`${image}`} />
                        <div className="card-body">
                            <div className="menu-item-title">{title}</div>
                            <p className="menu-item-paragraph">
                                {content}
                            </p>
                        </div>
                    </div>
                </div>
            );
        }
    } else if (type === 'mobile') {
        return (
            <div className="about-item-container drop-shadow" key={`mobile-${index}`}>
                <img className="card-image" src="static/assets/product_choco_expresso_layer.jpeg" />
                <div className="about-item-title">{title}</div>
                <p className="about-item-paragraph" style={{height: "122px", overflow: "scroll"}}>
                    {content}
                </p>
            </div>
        );
    }
}

export default ProductCard;