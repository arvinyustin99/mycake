interface Props {
    historyContent: String;
}

const History = ( param: Props ) => {
    const { historyContent } = param;
    const tempContent = `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
    consectetur adipiscing elit, sed do eiusmod`;
    return (
        <>
        <div className="history container">
            <div className="row">
                <div className="col-12">
                    <div className="row">
                        <h2>Tentang Kami</h2>
                    </div>
                </div>
                <div className="col-12 col-lg-4 col-md-4">
                    <div className="row">
                        <p>
                            { historyContent && historyContent !== '' ? historyContent : tempContent }
                        </p>
                    </div>
                </div>
                <div className="col-12 col-lg-8 col-md-8">
                    <div className="row">
                        <div className="grid-item drop-shadow col-lg-5 col-md-5 col-sm-6"
                            style={{backgroundImage: `url('static/assets/about_old_shop.jpg')`}}/>
                        <div className="grid-item drop-shadow col-lg-5 col-md-5 col-sm-6"
                            style={{backgroundImage: `url('static/assets/about_new_shop.jpg')`}}/>
                    </div>
                </div>
            </div>

        </div>
        </>
    );
}

export default History;