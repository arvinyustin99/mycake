import Link from 'next/link';

interface Props {
    address: String;
    telephone: String;
    timeOpened: String;
    addressLink: String;
}

const Footer = (param: Props) => {
    const { address, telephone, timeOpened, addressLink } = param;
    const temp = {
        address: `Jln. Sisingamangaraja XI No.12/243, Medan, Sumatera Utara`,
        telephone: `+62 61 459091`,
        timeOpened: `Senin s/d Jumat:    08.00 - 18.00<br />
        Sabtu, Minggu:      09.00 - 16.00`,
        addressLink: 'https://goo.gl/maps/yoU81fTvx7ba4Qb4A'
    }
    return (
        <>
            <div id="contacts" />
            <footer className="page-footer">
                <div className="container">
                    <div className="row">
                        <div className="col-12 title-container">
                            <h2>Kunjungi kami</h2>
                        </div>
                    </div>
                    <div className="row">
                        <div className="footer-detail-item col-lg-4 col-md-4 col-sm-4 col-12">
                            <h3>Alamat</h3>
                            {address && address !== '' ? address : temp.address}
                        </div>
                        <div className="footer-detail-item col-lg-4 col-md-4 col-sm-4 col-12">
                            <h3>Telepon</h3>
                            {telephone && telephone !== '' ? telephone : temp.telephone}

                        </div>
                        <div className="footer-detail-item col-lg-4 col-md-4 col-sm-4 col-12">
                            <h3>Jam buka</h3>
                            <p>
                                {timeOpened !== '' ? timeOpened : temp.timeOpened}
                            </p>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-12">
                            <Link href={addressLink && addressLink !== '' ? addressLink as string : temp.addressLink}>
                                <a>
                                    <button className="btn btn-outline-info" type="button">
                                        <img className="footer-img-icon" src={`static/assets/icon_google_map.png`} />
                                        Kunjungi kami di Google Maps
                                    </button>
                                </a>
                            </Link>
                        </div>
                    </div>
                    <div className="row">
                        <div className="credits">
                            <div>
                                © Copyright 2021. All Rights Reserved.
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </>
    );
}

export default Footer;