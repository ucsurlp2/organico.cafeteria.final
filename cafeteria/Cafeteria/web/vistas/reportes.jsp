<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.Conexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reportes - Orgánico Cafeteria</title>
        <link rel="stylesheet" href="../css/reportes.css">
        <link rel="stylesheet" href="../css/barra_lateral.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    </head>

    <body>
        <!--Barra Lateral-->
        <div class="barra-lateral">
            <div class="top">
                <div class="logo">
                    <i class="bx bxs-coffee-alt"></i>
                    <span style="font-weight: 600;">Orgánico Cafetería</span>
                </div>
                <i class="bx bx-menu" id="btn"></i>
            </div>
            <ul>
                <li>
                    <a href="principal.jsp">
                        <i class="bx bx-grid-alt"></i>
                        <span class="nav-item">Inicio</span>
                    </a>
                    <span class="tooltip">Inicio</span>
                </li>
                <li>
                    <a href="ventas.jsp">
                        <i class="bx bxs-store-alt"></i>
                        <span class="nav-item">Ventas</span>
                    </a>
                    <span class="tooltip">Ventas</span>
                </li>
                <li>
                    <a href="inventario.jsp">
                        <i class="bx bx-basket"></i>
                        <span class="nav-item">Inventario</span>
                    </a>
                    <span class="tooltip">Inventario</span>
                </li>
                <li>
                    <a href="reportes.jsp">
                        <i class="bx bxs-report"></i>
                        <span class="nav-item">Reportes</span>
                    </a>
                    <span class="tooltip">Reportes</span>
                </li>
                <li>
                    <a href="config.jsp">
                        <i class="bx bx-cog"></i>
                        <span class="nav-item">Configuración</span>
                    </a>
                    <span class="tooltip">Configuración</span>
                </li>
            </ul>
            <!-- Botones de acciones ubicados al final -->
            <div class="acciones">
                <form action="apertura-caja.jsp" method="get">
                    <button class="boton apertura-caja">
                        <i class="bx bx-wallet"></i>
                        <span class="boton-texto">Apertura y cierre de caja</span>
                    </button>
                </form>
                <button class="boton salir">
                    <i class="bx bx-log-out"></i>
                    <span class="boton-texto">Salir</span>
                </button>
            </div>
        </div>
        <div class="main-content">
            <div class="header">
                <h1>Reportes</h1>
            </div>
            <div class="stats">
                <div class="small-box" style="background-color: burlywood;">
                    <div class="inner">
                        <h3>150</h3>

                        <p>New Orders</p>
                    </div>
                    <div class="icon">
                        <i class="bx bxs-cart"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                        More info <i class="bx bxs-right-arrow-circle"></i>
                    </a>
                </div>

                <div class="small-box" style="background-color: rgb(222, 135, 193);">
                    <div class="inner">
                        <h3>53<sup style="font-size: 20px">%</sup></h3>

                        <p>Bounce Rate</p>
                    </div>
                    <div class="icon">
                        <i class="bx bx-stats"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                        More info <i class="bx bxs-right-arrow-circle"></i>
                    </a>
                </div>

                <div class="small-box" style="background-color:darksalmon;">
                    <div class="inner">
                        <h3>65</h3>

                        <p>Unique Visitors</p>
                    </div>
                    <div class="icon">
                        <i class="bx bxs-pie-chart-alt-2"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                        More info <i class="bx bxs-right-arrow-circle"></i>
                    </a>
                </div>

            </div>

            <div class="graf">
                <div class="titulo">
                    <h2>Ingresos</h2>
                    <div class="menu">
                        <i class="bx bx-minus icon"></i>
                        <i class="bx bx-x icon"></i>
                    </div>
                </div>
                <div class="grafico">
                    <div id="chart"></div>
                </div>
                <div class="ctrls">
                    <h3>Frecuencia</h3>
                    <div class="frecuencia">
                        <div class="frec">
                            <label for="" class="sidebar-label-container">
                                <input type="radio" name="test">
                                <span class="checkmark"></span> Semanal
                            </label>
                            <label for="" class="sidebar-label-container">
                                <input type="radio" name="test">
                                <span class="checkmark"></span> Mensual
                            </label>
                            <label for="" class="sidebar-label-container">
                                <input type="radio" name="test">
                                <span class="checkmark"></span> Semestre
                            </label>
                        </div>
                    </div>
                    <h3>Rango</h3>
                    <div class="range" id="range">
                        <i class="bx bx-calendar"></i>&nbsp;
                        <span></span> <b class="bx bxs-down-arrow"></b>
                    </div>

                    <h3>Año</h3>
                    <div class="año">
                        <div class="select-año">
                            <span class="selected-año">2024</span>
                            <div class="caret"></div>
                        </div>
                        <ul class="año-dd">
                            <li>2020</li>
                            <li>2021</li>
                            <li>2022</li>
                            <li>2023</li>
                            <li class="active">2024</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="graf2">
                <div class="cant-ped">
                    <div class="titulo">
                        <h3>Proporción de Ventas por Categorí­a </h3>
                    </div>
                    <div class="grafico">
                        <div id="chart2"></div>
                    </div>
                </div>
                <div class="prod-ven">
                    <div class="titulo">
                        <h3>Productos Más Vendidos en la Semana</h3>
                    </div>
                    <div class="grafico">
                        <div id="chart3"></div>
                    </div>
                </div>
            </div>

            <div class="graf3">
                <div class="cat-ven">
                    <div class="titulo">
                        <h3>Comparación de Cantidad de Pedidos</h3>
                    </div>
                    <div class="grafico">
                        <div id="chart4"></div>
                    </div>
                </div>
                <div class="pro-cat" id="ped_ta">
                    <section class="tabla-titulo">
                        <h3>Lista de Pedidos</h3>
                        <div class="export__file">
                            <label for="export-file" class="export__file-btn" title="Export File"></label>
                            <input type="checkbox" id="export-file">
                            <div class="export__file-options">
                                <label>Export As &nbsp; &#10140;</label>
                                <label for="export-file" id="toPDF">PDF <i class="bx bxs-file-pdf"></i></label>
                                <label for="export-file" id="toJSON">JSON <i class="bx bxs-file-json"></i></label>
                                <label for="export-file" id="toCSV">CSV <i class="bx bx-file"></i></label>
                                <label for="export-file" id="toEXCEL">EXCEL <i class="bx bx-table"></i></label>
                            </div>
                        </div>
                    </section>
                    <section class="tabla-body">
                        <table class="t-pedidos" id="t-pedidos">
                            <thead>
                                <tr class="table-info">
                                    <th scope="col">ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Precio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>MARIA YA VUELTA</td>
                                    <td>FREDY</td>
                                    <td>ALVARO</td>
                                    <td>PAOLO</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                </div>
            </div>
        </div>
    </body>
    <script>
        let btn = document.querySelector('#btn');
        let sidebar = document.querySelector('.barra-lateral');

        btn.onclick = function () {
            sidebar.classList.toggle('active');
        };
    </script>
<script src="../js/moment.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/apexcharts" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js" type="text/javascript"></script>
<script src="../js/daterangepicker.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script>
    var options = {
        series: [{
        name: "Desktops",
                data: [10, 41, 35, 51, 49, 62, 69, 91, 148]
        }],
                chart: {
                height: 350,
                        type: 'line',
                        zoom: {
                        enabled: false
                        }
                },
                dataLabels: {
                enabled: false
                },
                stroke: {
                curve: 'straight'
                },
                title: {
                text: '',
                        align: 'left'
                },
                grid: {
                row: {
                colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                        opacity: 0.5
                }
                },
                xaxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep']
                }
        };
        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
</script>
<script>
            var options = {
            series: [{
                name: 'Series 1',
                data: [20, 100, 40, 30, 50, 80, 33]
            }],
            chart: {
                height: 350,
                type: 'radar'
            },
            dataLabels: {
                enabled: true
            },
            plotOptions: {
                radar: {
                    size: 140,
                    polygons: {
                        strokeColors: '#e9e9e9',
                        fill: {
                            colors: ['#f8f8f8', '#fff']
                        }
                    }
                }
            },
            title: {
                text: '' /*CHE ES PARA AGREGAR TEXTO AQUI Y ASI*/
            },
            colors: ['#FF4560'],
            markers: {
                size: 4,
                colors: ['#fff'],
                strokeColor: '#FF4560',
                strokeWidth: 2
            },
            tooltip: {
                y: {
                    formatter: function (val) {
                        return val;
                    }
                }
            },
            xaxis: {
                categories: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
            },
            yaxis: {
                labels: {
                    formatter: function (val, i) {
                        if (i % 2 === 0) {
                            return val;
                        } else {
                            return '';
                        }
                    }
                }
            }
        };

        var chart = new ApexCharts(document.querySelector("#chart2"), options);
        chart.render();
</script>

<script>
                var options = {
                series: [76, 67, 61, 90],
                chart: {
                    height: 390,
                    type: 'radialBar'
                },
                plotOptions: {
                    radialBar: {
                        offsetY: 0,
                        startAngle: 0,
                        endAngle: 270,
                        hollow: {
                            margin: 5,
                            size: '30%',
                            background: 'transparent',
                            image: undefined
                        },
                        dataLabels: {
                            name: {
                                show: false
                            },
                            value: {
                                show: false
                            }
                        },
                        barLabels: {
                            enabled: true,
                            useSeriesColors: true,
                            offsetX: -8,
                            fontSize: '16px',
                            formatter: function (seriesName, opts) {
                                return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex];
                            }
                        }
                    }
                },
                colors: ['#1ab7ea', '#0084ff', '#39539E', '#0077B5'],
                labels: ['Vimeo', 'Messenger', 'Facebook', 'LinkedIn'],
                responsive: [{
                    breakpoint: 480,
                    options: {
                        legend: {
                            show: false
                        }
                    }
                }]
            };

            var chart = new ApexCharts(document.querySelector("#chart3"), options);
            chart.render();
</script> 

<script> 
    var options = {
            series: [{
                data: [44, 55, 41, 64, 22, 43, 21]
            }, {
                data: [53, 32, 33, 52, 13, 44, 32]
            }],
            chart: {
                type: 'bar',
                height: 430
            },
            plotOptions: {
                bar: {
                    horizontal: true,
                    dataLabels: {
                        position: 'top'
                    }
                }
            },
            dataLabels: {
                enabled: true,
                offsetX: -6,
                style: {
                    fontSize: '12px',
                    colors: ['#fff']
                }
            },
            stroke: {
                show: true,
                width: 1,
                colors: ['#fff']
            },
            tooltip: {
                shared: true,
                intersect: false
            },
            xaxis: {
                categories: [2001, 2002, 2003, 2004, 2005, 2006, 2007]
            }
        };

        var chart = new ApexCharts(document.querySelector("#chart4"), options);
        chart.render();
</script>

<script>
    const allMenu = document.querySelectorAll('.menu');
    allMenu.forEach(item => {
        const icon = item.querySelector('.icon');
        const menuLink = item.querySelector('.menu-link');

        icon.addEventListener('click', function () {
            menuLink.classList.toggle('show');
        });
    });
</script>
<script>
        $(function () {
            var start = moment().subtract(29, 'days');
            var end = moment();

            function cb(start, end) {
                $('#range span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
            $('#range').daterangepicker({
                startDate: start,
                endDate: end,
                ranges: {
                    'Última Semana': [moment().subtract(6, 'days'), moment()],
                    'Últimos 30 dí­as': [moment().subtract(29, 'days'), moment()],
                    'Este Mes': [moment().startOf('month'), moment().endOf('month')],
                    'Mes Pasado': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                }
            }, cb);

            cb(start, end);

        });
</script>

<script>
        const dropdowns = document.querySelectorAll('.año');
        dropdowns.forEach(dropdown => {
            const select = dropdown.querySelector('.select-año');
            const caret = dropdown.querySelector('.caret');
            const menu = dropdown.querySelector('.año-dd');
            const options = dropdown.querySelectorAll('.año-dd li');
            const selected = dropdown.querySelector('.selected-año');

            select.addEventListener('click', () => {
                select.classList.toggle('select-clicked');
                caret.classList.toggle('caret-rotate');
                menu.classList.toggle('año-dd-open');
            });

            options.forEach(option => {
                option.addEventListener('click', () => {
                    selected.innerText = option.innerText;
                    select.classList.remove('select-clicked');
                    caret.classList.remove('caret-rotate');
                    menu.classList.remove('año-dd-open');

                    options.forEach(option => {
                        option.classList.remove('active');
                    });
                    option.classList.add('active');
                });
            });
        });
</script>

</html>
