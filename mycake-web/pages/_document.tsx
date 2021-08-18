import Document, { Head, Main, NextScript } from 'next/document';

export default class DocumentContainer extends Document {
  render() {
    return (
      <html>
        <Head>
          <link rel="stylesheet" href="/css/bootstrap.min.css" />
          <link rel="stylesheet" href="/css/bootstrap.css" />
          <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" cross-origin="anonymous" />
          <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" cross-origin="anonymous" />
          <script type="text/javascript" src="/js/bootstrap.min.js" />
          <script type="text/javascript" src="node_modules/masonry-layout/dist/masonry.pkgd.min.js" />

          <link rel="stylesheet" href="node_modules/flickity/dist/flickity.css" media="screen" />
          <script type="text/javascript" src="node_modules/flickity/dist/flickity.pkgd.min.js" />

          <link rel="stylesheet" href="/css/style.css" media="screen" />
          <script type="text/javascript" src="/js/script.js" />

          <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat' />
          <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Nunito' />
          <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Lato' />
        </Head>
        <body>
          <Main />
          <NextScript />
        </body>
      </html>
    );
  }
}
