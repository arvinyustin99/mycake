interface Props {
    title: String;
    description?: String;
}

const HalfHero = (param: Props) => {
    const { title } = param;
    const { description } = param;

    const RenderIfDescriptionExist = (): JSX.Element => {
        if (description) {
            return (
                <div className="container">
                    <div className="row">
                        <div className="col-xl-10 col-lg-8 col-md-8 col-12 centered">
                            <h1>{title}</h1>
                            <p>{description}</p>
                        </div>
                    </div>
                </div>
            );
        }
        else {
            return (
                <div className="half-hero-title">
                    <h1>{title && title !== '' ? title : ""}</h1>
                </div>
            );
        }
    }
    return (
        <div className="half-hero">
            <div className="half-hero-background">
                <RenderIfDescriptionExist />
            </div>
        </div>
    );
}

export default HalfHero;