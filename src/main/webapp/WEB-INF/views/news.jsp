<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 01.02.19
  Time: 07:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>news</title>
    <style>
        .spaner {
            background-color: rgba(175, 223, 151, 0.51);
            border-radius: 5px;
        }

        body {
            background-image: url("https://www.gannett-cdn.com/-mm-/71c3358530835ce4d9fa490ed3a589f1a9d123e6/c=0-86-1697-1045/local/-/media/2016/07/28/Naples/Naples/636053268414765556-iStock-83659159-MEDIUM.jpg?width=3200&height=1680");
            background-repeat:no-repeat;
            background-size:cover;
        }
    </style>
</head>
<body>
<jsp:include page="fragments/menu.jsp"/>
<h1>Najaktualniejsze aktualności ze wielobilionowego Świata Finansów</h1>
<table>
    <tr>

        <td><!-- TradingView Widget BEGIN -->
            <div class="tradingview-widget-container">
                <div class="tradingview-widget-container__widget"></div>
                <div class="tradingview-widget-copyright"><a
                        href="https://pl.tradingview.com/markets/currencies/forex-heat-map/" rel="noopener"
                        target="_blank"><span class="blue-text">Mapa Cieplna Rynku Forex</span></a> od TradingView
                </div>
                <script type="text/javascript"
                        src="https://s3.tradingview.com/external-embedding/embed-widget-forex-heat-map.js" async>
                    {
                        "width"
                    :
                        770,
                            "height"
                    :
                        400,
                            "currencies"
                    :
                        [
                            "EUR",
                            "USD",
                            "JPY",
                            "GBP",
                            "CHF",
                            "AUD",
                            "CAD",
                            "NZD",
                            "CNY"
                        ],
                            "locale"
                    :
                        "pl"
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


<div align="center">


</div>
<footer class="page-footer font-small">
    <jsp:include page="fragments/footer.jsp"/>
</footer>

</body>
</html>
