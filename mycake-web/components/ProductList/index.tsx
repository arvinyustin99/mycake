import Flickity from 'react-flickity-component';

import Link from 'next/link';
import ProductCard from 'components/ProductCard';
import { ProductPreview } from 'types';

interface Props {
    parent: String;
    itemList: ProductPreview[];
}

const tempProps: ProductPreview[] = [
    
    {
        image: {
            url: `static/assets/product_choco_expresso_layer.jpeg`
        },
        title: `Chocolate Expresso`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        image: {
            url: `static/assets/product_choco_expresso_layer.jpeg`
        },
        title: `Chocolate Expresso`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    },
    {
        image: {
            url: `static/assets/product_choco_expresso_layer.jpeg`
        },
        title: `Chocolate Expresso`,
        content: `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut consectetur adipiscing elit, sed do eiusmod.`
    }
]

const ProductList = (param: Props) => {
    const { parent } = param;
    const { itemList } = param && param.itemList && param.itemList.length > 0
        ? param
        : { itemList: tempProps };

    const renderProductDesktop = itemList.map((item: ProductPreview, idx: number) => {
        return (
            <div key={idx}>
                <ProductCard
                    index={idx}
                    parent={parent}
                    type={`desktop`}
                    content={item.content}
                    title={item.title}
                />
            </div>

        );
    });

    const renderProductMobile = itemList.map((item: ProductPreview, idx: number) => {
        return (
            <div className="carousel-cell" key={idx}>
                <ProductCard
                    index={idx}
                    parent={parent}
                    type={`mobile`}
                    content={item.content}
                    title={item.title}
                />
            </div>
        );
    })
    return (
        <div className="products">
            <div className="container">
                <div className="row">
                    <div className="col-12 title-container">
                        <h2>Produk kami</h2>
                        <Link href={`/products`}>
                            <a>
                                <p>See more</p>
                            </a>
                        </Link>
                    </div>
                </div>

                <div className="about-desktop">
                    <div className="row">
                        {renderProductDesktop}
                    </div>
                </div>
                <div className="about-mobile">
                    <Flickity
                        elementType={`div`}
                        className={`carousel`}
                        static={true}>
                        {renderProductMobile}
                    </Flickity>
                </div>
            </div>
        </div>
    );
}

export default ProductList;