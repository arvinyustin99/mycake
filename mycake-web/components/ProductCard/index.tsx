
interface Props {
    index: number;
    type: String;
    parent: String;
    title: String;
    content: String;
}

const ProductCard = (param: Props) => {
    const { key, parent, type, title, content } = param;
    if (type === 'desktop') {
        if (parent === 'main') {
            return (
                <div className="col-12 col-xl-3 col-sm-6" key={`desktop-${key}`}>
                    <div className="card drop-shadow">
                        <img className="card-image" src="static/assets/product_choco_expresso_layer.jpeg" />
                        <div className="card-body">
                            <div className="about-item-title">{title} INI DESKTOP</div>
                            <p className="about-item-paragraph">
                                {content}
                            </p>
                        </div>
                    </div>
                </div>
            );
        } else if (parent === 'products') {
            return (
                <div className="col-12 col-sm-6 col-lg-3" key={`products-${key}`}>
                    <div className="card drop-shadow">
                        <img className="card-image menu-card-image" src="static/assets/product_choco_expresso_layer.jpeg" />
                        <div className="card-body">
                            <div className="menu-item-title">{title} INI PRODUCTS</div>
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
            <div className="about-item-container drop-shadow" key={`mobile-${key}`}>
                <img className="card-image" src="static/assets/product_choco_expresso_layer.jpeg" />
                <div className="about-item-title">{title} INI MOBILE</div>
                <p className="about-item-paragraph">
                    {content}
                </p>
            </div>
        );
    }
}

export default ProductCard;