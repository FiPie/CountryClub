<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 01.02.19
  Time: 07:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>O Nas</title>
    <style>
        body{background-image: url("https://upload.wikimedia.org/wikipedia/commons/f/f4/Trump_Golf_Course_%283297216129%29.jpg");
            background-repeat:no-repeat;
            background-size:cover;}
.opis{color: floralwhite; font-family: "Bitstream Vera Sans";
}
    </style>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>

<table>
    <tr>
        <td>
            <!-- TradingView Widget BEGIN -->
            <div class="tradingview-widget-container" align="center">
                <div class="tradingview-widget-container__widget"></div>
                <div class="tradingview-widget-copyright"><a href="https://pl.tradingview.com" rel="noopener" target="_blank"><span class="blue-text">Dane Rynkowe</span></a> od TradingView</div>
                <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-market-overview.js" async>
                    {
                        "showChart": true,
                        "locale": "pl",
                        "largeChartUrl": "",
                        "width": "400",
                        "height": "600",
                        "plotLineColorGrowing": "rgba(60, 188, 152, 0.5)",
                        "plotLineColorFalling": "rgba(255, 74, 104, 0.5)",
                        "gridLineColor": "rgba(233, 233, 234, 0.6)",
                        "scaleFontColor": "rgba(214, 216, 224, 0.6)",
                        "belowLineFillColorGrowing": "rgba(60, 188, 152, 0.05)",
                        "belowLineFillColorFalling": "rgba(255, 74, 104, 0.05)",
                        "symbolActiveColor": "rgba(242, 250, 254, 0.7)",
                        "tabs": [
                        {
                            "title": "Indeksy",
                            "symbols": [
                                {
                                    "s": "INDEX:SPX",
                                    "d": "S&P 500"
                                },
                                {
                                    "s": "INDEX:XLY0",
                                    "d": "Shanghai Composite"
                                },
                                {
                                    "s": "INDEX:DOWI",
                                    "d": "Dow 30"
                                },
                                {
                                    "s": "INDEX:NKY",
                                    "d": "Nikkei 225"
                                },
                                {
                                    "s": "INDEX:DAX",
                                    "d": "DAX Index"
                                },
                                {
                                    "s": "OANDA:UK100GBP",
                                    "d": "FTSE 100"
                                }
                            ],
                            "originalTitle": "Indices"
                        },
                        {
                            "title": "Towary",
                            "symbols": [
                                {
                                    "s": "CME_MINI:ES1!",
                                    "d": "E-Mini S&P"
                                },
                                {
                                    "s": "CME:E61!",
                                    "d": "Euro"
                                },
                                {
                                    "s": "COMEX:GC1!",
                                    "d": "Gold"
                                },
                                {
                                    "s": "NYMEX:CL1!",
                                    "d": "Crude Oil"
                                },
                                {
                                    "s": "NYMEX:NG1!",
                                    "d": "Natural Gas"
                                },
                                {
                                    "s": "CBOT:ZC1!",
                                    "d": "Corn"
                                }
                            ],
                            "originalTitle": "Commodities"
                        },
                        {
                            "title": "Obligacje",
                            "symbols": [
                                {
                                    "s": "CME:GE1!",
                                    "d": "Eurodollar"
                                },
                                {
                                    "s": "CBOT:ZB1!",
                                    "d": "T-Bond"
                                },
                                {
                                    "s": "CBOT:UD1!",
                                    "d": "Ultra T-Bond"
                                },
                                {
                                    "s": "EUREX:GG1!",
                                    "d": "Euro Bund"
                                },
                                {
                                    "s": "EUREX:II1!",
                                    "d": "Euro BTP"
                                },
                                {
                                    "s": "EUREX:HR1!",
                                    "d": "Euro BOBL"
                                }
                            ],
                            "originalTitle": "Bonds"
                        },
                        {
                            "title": "Forex",
                            "symbols": [
                                {
                                    "s": "FX:EURUSD"
                                },
                                {
                                    "s": "FX:GBPUSD"
                                },
                                {
                                    "s": "FX:USDJPY"
                                },
                                {
                                    "s": "FX:USDCHF"
                                },
                                {
                                    "s": "FX:AUDUSD"
                                },
                                {
                                    "s": "FX:USDCAD"
                                }
                            ],
                            "originalTitle": "Forex"
                        }
                    ]
                    }
                </script>
            </div>
            <!-- TradingView Widget END -->
        </td>
        <td>
            <!-- TradingView Widget BEGIN -->
            <div class="tradingview-widget-container">
                <div class="tradingview-widget-container__widget"></div>
                <div class="tradingview-widget-copyright"><a href="https://pl.tradingview.com/markets/cryptocurrencies/prices-all/" rel="noopener" target="_blank"><span class="blue-text">Rynki Kryptowalut</span></a> od TradingView</div>
                <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-screener.js" async>
                    {
                        "width": 1000,
                        "height": 490,
                        "defaultColumn": "overview",
                        "screener_type": "crypto_mkt",
                        "displayCurrency": "USD",
                        "locale": "pl"
                    }
                </script>
            </div>
            <!-- TradingView Widget END -->
        </td>
    </tr>
</table>

<div class="opis" align="center">
    <p>Biscuit oat cake candy jelly beans pudding biscuit sugar plum. Toffee macaroon tart lemon drops brownie gummi bears biscuit</p>
    <p> Bonbon pastry icing. Donut lemon drops cake. Pastry liquorice sugar plum brownie. Marzipan gummies icing danish cupcake.</p>
    <p>Jelly-o tootsie roll marzipan chocolate bar. Cake chocolate bar dessert bonbon macaroon chocolate pudding bonbon. </p>
    <p>Biscuit oat cake candy jelly beans pudding biscuit sugar plum. Toffee macaroon tart lemon drops brownie gummi bears biscuit</p>
    <p> Pudding gingerbread fruitcake cake. Sesame snaps tiramisu jelly donut dessert jelly-o cotton candy. Tiramisu gummies marshmallow.</p>
    <p>Jelly-o tootsie roll marzipan chocolate bar. Cake chocolate bar dessert bonbon macaroon chocolate pudding bonbon. </p>
    <p>Biscuit oat cake candy jelly beans pudding biscuit sugar plum. Toffee macaroon tart lemon drops brownie gummi bears biscuit</p>
    <p> Bonbon pastry icing. Donut lemon drops cake. Pastry liquorice sugar plum brownie. Marzipan gummies icing danish cupcake.</p>
    <p>Pudding gingerbread fruitcake cake. Sesame snaps tiramisu jelly donut dessert jelly-o cotton candy. Tiramisu gummies marshmallow.</p>
    <p>Biscuit oat cake candy jelly beans pudding biscuit sugar plum. Toffee macaroon tart lemon drops brownie gummi bears biscuit</p>
    <p> Bonbon pastry icing. Donut lemon drops cake. Pastry liquorice sugar plum brownie. Marzipan gummies icing danish cupcake.</p>
    <p>Jelly-o tootsie roll marzipan chocolate bar. Cake chocolate bar dessert bonbon macaroon chocolate pudding bonbon. </p>
</div>
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>
</body>
</html>
