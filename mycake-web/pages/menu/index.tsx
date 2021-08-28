import HalfHero from "components/HalfHero";
import HeaderFooter from "layouts/HeaderFooter";

const Menu = () => {
    return (
        /**
         * fixing Link di Navbar
         * fixing gambar menu yg overflow di mainpage
         * fixing ProductCard warning key
         * create half-hero utk Menu dan News
        */

        <HeaderFooter pageTitle={`Menu`} parent={`menu`}>
            <HalfHero title={`Menu kami`} />
            {/* Menu List */}
            {/* Pagination */}
        </HeaderFooter>
    );
}

export default Menu;