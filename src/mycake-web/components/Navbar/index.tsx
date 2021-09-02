
import Link from 'next/link';
import NavLink from 'next/link';
import { useState } from 'react';

interface Props {
    active: string;
}

const openNav = () => {
    document.getElementById("navbar-menu").style.display = "block";
    //document.getElementById("menu-overlay-black").style.display = "block";
}

const closeNav = () => {
    document.getElementById("navbar-menu").style.display = "none";
    //document.getElementById("menu-overlay-black").style.display = "none";
}

const Navbar = (param: Props) => {
    const { active } = param;
    const navbarList = [
        'homepage',
        'menu',
        'news'
    ]
    return (
        <>
            <div id="navbar-menu" className="overlay">
                <div className="overlay-close-container">
                    <button type="button" className="closebtn" onClick={closeNav}>&times;</button>
                </div>
                <hr />
                <div className="overlay-content">
                    <div className="overlay-item" id={active === `homepage` ? `active-menu` : ``}>
                        <Link href={active === `homepage` ? `#hero` : `/`}>
                            <a href="#hero" onClick={closeNav}>BERANDA</a>
                        </Link>
                    </div>
                    <div className="overlay-item">
                        <Link href={active === `homepage` ? `#history` : `/#history`}>
                            <a href="#history" onClick={closeNav}>TENTANG KAMI</a>
                        </Link>
                    </div>
                    <div className="overlay-item" id={active === `menu` ? `active-menu` : ``}>
                        <Link href={active === `menu` ? `#` : `/menu`}>
                            <a onClick={closeNav}>MENU</a>
                        </Link>
                    </div>
                    <div className="overlay-item" id={active === `news` ? `active-menu` : ``}>
                        <Link href={active === `news` ? `#` : `/news`}>
                            <a onClick={closeNav}>BERITA</a>
                        </Link>
                    </div>
                    <div className="overlay-item">
                        <a href="#contac                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ts" onClick={closeNav}><button className="btn btn-outline-primary">HUBUNGI
                            KAMI</button></a>
                    </div>
                </div>
            </div>
            <nav className="navbar navbar-expand-lg navbar-light sticky-top drop-shadow">
                <div className="container">
                    <div className="row justify-content-between">
                        <div className="col-3 navbar-header">
                            <Link href={active === `homepage` ? `#hero` : `/`}>
                                <a className="navbar-brand" href="#">
                                    <img className={`navbar-img`} src="/static/assets/logo_no_label.png" />
                                    MyCake
                                </a>
                            </Link>
                        </div>

                        <button className="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span className="navbar-toggler-icon" onClick={openNav} />
                        </button>

                        <div className="col-lg-8 col-12 collapse navbar-collapse">
                            <ul className="navbar-nav">
                                <li className={active === `homepage` ? `active` : ``}>
                                    <Link href={active === `homepage` ? `#` : `/`}>
                                        <a className="nav-link" href="#">BERANDA</a>
                                    </Link>
                                </li>
                                <li><a className="nav-link" href="#history">TENTANG KAMI</a></li>
                                <li className={active === `menu` ? `active` : ``}>
                                    <Link href={active === `menu` ? `#` : `/menu`}>
                                        <a className="nav-link" href="">MENU</a>
                                    </Link>
                                </li>
                                <li className={active === `news` ? `active` : ``}>
                                    <Link href={active === `news` ? `#` : `/news`}>
                                        <a className="nav-link">BERITA</a>
                                    </Link>
                                </li>
                                <li>
                                    <a href="#contacts"><button className="btn btn-outline-primary">HUBUNGI KAMI</button></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav >
        </>
    );
}

export default Navbar;