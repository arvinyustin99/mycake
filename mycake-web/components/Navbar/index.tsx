
import Link from 'next/link';
import NavLink from 'next/link';
import { useState } from 'react';

interface Props {
    active: string;
}

const openNav = () => {
    document.getElementById("navbar-menu").style.display = "block";
    document.getElementById("menu-overlay-black").style.display = "block";
}

const closeNav = () => {
    document.getElementById("navbar-menu").style.display = "none";
    document.getElementById("menu-overlay-black").style.display = "none";
}

const Navbar = (param: Props) => {

    return (
        <>
            <div id="navbar-menu" className="overlay">
                <div className="overlay-close-container">
                    <a href="javascript:void(0)" className="closebtn" onClick={ closeNav }>&times;</a>
                </div>
                <hr />
                <div className="overlay-content">
                    <div className="overlay-item" id="active-menu">
                        <a href="#hero" onClick={ closeNav }>BERANDA</a>
                    </div>
                    <div className="overlay-item">
                        <a href="#history" onClick={ closeNav }>TENTANG KAMI</a>
                    </div>
                    <div className="overlay-item">
                        <a href="menu.html" onClick={ closeNav }>MENU</a>
                    </div>
                    <div className="overlay-item">
                        <a href="blog.html" onClick={ closeNav }>BERITA</a>
                    </div>
                    <div className="overlay-item">
                        <a href="#contacts" onClick={ closeNav }><button className="btn btn-outline-primary">HUBUNGI
                            KAMI</button></a>
                    </div>
                </div>
            </div>
            <nav className="navbar navbar-expand-lg navbar-light sticky-top drop-shadow">
                <div className="container">
                    <div className="row justify-content-between">
                        <div className="col-3 navbar-header">
                            <a className="navbar-brand" href="#">
                                <img src="static/assets/logo_no_label.png" style={{height: "65px;"}} />
                                MyCake
                            </a>
                        </div>

                        <button className="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span className="navbar-toggler-icon" onClick={ openNav } />
                        </button>

                        <div className="col-lg-8 col-12 collapse navbar-collapse">
                            <ul className="navbar-nav">
                                <li className="active"><a className="nav-link" href="#">BERANDA</a></li>
                                <li><a className="nav-link" href="#history">TENTANG KAMI</a></li>
                                <li><a className="nav-link" href="menu.html">MENU</a></li>
                                <li><a className="nav-link" href="blog.html">BERITA</a></li>
                                <li><a href="#contacts"><button className="btn btn-outline-primary">HUBUNGI KAMI</button></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </>
    );
}

export default Navbar;