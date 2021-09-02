import Flickity from 'react-flickity-component';

import Link from 'next/link';
import ProductCard from 'components/ProductCard';
import { ProductPreview } from 'types';
import React from 'react';
import { productPreviewStub } from 'config';

interface Props {
    parent: String;
    itemList: ProductPreview[];
}

const tempProps: ProductPreview[] = productPreviewStub;

const ProductList = (param: Props) => {
    const { parent } = param;
    const { itemList } = param && param.itemList && param.itemList.length > 0
        ? param
        : { itemList: tempProps };

    const renderProductDesktop = itemList.map((item: ProductPreview, idx: number) => {
        return (
            <React.Fragment key={idx}>
                <ProductCard
                    index={idx}
                    parent={parent}
                    type={`desktop`}
                    content={item.content}
                    title={item.title}
                    image={item.image_link}
                />
            </React.Fragment>
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
        <>
            {
                parent === `main`
                    ?
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
                    :
                    <div className="product-list">
                        <div className="container">
                            <div className="row">
                                {renderProductDesktop}
                            </div>
                        </div>
                    </div>
            }
        </>
    );
}

export default ProductList;