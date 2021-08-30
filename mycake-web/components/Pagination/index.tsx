/*  */
interface Props {
    currentPage: number;
    maxPage: number;
    itemPerPage?: number;
    routerFunction: Function;
}

const Pagination = (param: Props) => {
    const { currentPage, maxPage, routerFunction } = param;

    const pageHandler = (page: number) => {
        if (currentPage !== page && page >= 1 && page <= maxPage) {
            routerFunction(page);
        }
    }

    const neighbour = 5;
    const sideItemNeighbour = Math.floor(neighbour / 2);
    const startPage = currentPage > sideItemNeighbour
        ? currentPage + sideItemNeighbour > maxPage
            ? maxPage < neighbour
                ? 1
                : maxPage - neighbour + 1
            : currentPage - sideItemNeighbour
        : 1;

    const endPage = startPage + neighbour <= maxPage
        ? startPage + neighbour - 1
        : maxPage;

    const renderPagination: JSX.Element[] = [];

    for (let i = startPage; i <= endPage; i++) {
        renderPagination.push(
            <li
                key={`page-${i}`}
                className={`page-item ${i === currentPage ? `active-page` : ``}`}
                onClick={() => { pageHandler(i) }}>
                {i}
            </li>
        );
    }
    return (
        <div className="container">
            <div className="row">
                <div className="col-12 d-flex justify-content-center">
                    <ul className="pagination">
                        <li className="page-item-cmd">
                            <button
                                type="button"
                                className={`btn btn-outline-primary`}
                                disabled={currentPage <= 1}
                                onClick={() => { pageHandler(currentPage - 1) }}
                            >
                                Previous</button>
                        </li>
                        {renderPagination}
                        <li className="page-item-cmd">
                            <button
                                className={`btn btn-outline-primary`}
                                disabled={currentPage >= maxPage}
                                onClick={() => { pageHandler(currentPage + 1) }}
                            >
                                Next
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div >
    );
}

export default Pagination;