import HeaderFooter from "layouts/HeaderFooter";
import Hero from "components/Hero";
import History from 'components/History';
import ProductList from "components/ProductList";

interface Props{
    namedVar: String[];
}
const Home = (props: Props) => {
    return (
        <HeaderFooter pageTitle={`Ayo`} parent={`homepage`}>
            <Hero />

            <div id="history"><br/><br/></div>
            <History historyContent={`Yo`}/>

            <div id="products"><br/><br/></div>
            <ProductList parent={`main`} itemList={[]}/>
            
            <div>Ini CHildren bukan?</div>
        </HeaderFooter>
    );
}

export default Home;