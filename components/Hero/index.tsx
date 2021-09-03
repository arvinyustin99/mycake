interface Props {
    title: string;
    description: string;
}

const Hero = (param: Props) => {
    const { title, description } = param;
    return (
        <div className="hero_init">
            <div className="img-gradient-black"></div>
            <div className="title-container">
                <div className="row">
                    <div className="col-xl-10 col-lg-8 col-md-10 col-12 centered">
                        <h1>{title ? title : 'My Cake, hometown signature desserts'}</h1>
                        <p>
                            {
                                description
                                    ? description
                                    : `a Tidak hanya sekadar oleh-oleh, berjuta rasa dan kreativitas dalam sebuah piring.`
                            }
                        </p>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Hero;