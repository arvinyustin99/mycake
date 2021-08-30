import React, { Component } from 'react';
import App from 'next/app';
import { NextPageContext } from 'next';
import { AppContextType } from 'next/dist/next-server/lib/utils';

class CoreApp extends App {
  static async getInitialProps ({ Component, ctx }: AppContextType) {
    const pageProps = Component.getInitialProps
      ? await Component.getInitialProps(ctx)
      : {};

      return { pageProps };
  }
  render() {
    const { Component, pageProps } = this.props;
    return <Component {...pageProps} />
  }
}

export default CoreApp;