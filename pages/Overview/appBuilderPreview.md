---
title: Application Builder
layout: default
parent: App Overview
grand_parent: Overview
nav_order: 2
has_children: false
---
# Application Builder
The [Cube Explorer](/pages/Overview/cubeExplorerAppPreview.html) app is an all purpose app for displaying and setting data in the control system. However, sometimes, the user would like to build a consist custom dashboard application. Building event driven controls applications can be quite complicated so Blinky-Lite has an application builder that makes it easy for the user to build his own custom dashboard application without having to do any programming. 

![]({{ site.urlimg }}appBuilder/widgets.png)

The user just configures a JSON file. An example file is shown [below]({{site.baseurl}}/pages/Overview/appBuilderPreview.html#sample-application-builder-json-file). The application builder has a basic library of widgets based on [Boostrap 4 cards](https://getbootstrap.com/docs/4.0/components/card/). This widget library is easily extensible to more widgets. 

## Application Builder Cards
Cards can be arranged in an order and the can be more than one CubeRowCard. There are currently nine different types of cards. 

- [CubeRowCard]({{ site.urlimg }}appBuilder/cubeRows.png) 
- [BarPlotCard]({{ site.urlimg }}appBuilder/barPlot.png)
- [TimePlotCard]({{ site.urlimg }}appBuilder/timePlot.png)
- [ArchivePlotCard]({{ site.urlimg }}appBuilder/archivePlot.png)
- [VectorPlotCard]({{ site.urlimg }}appBuilder/vectorPlot.png)
- [IframeCard]({{ site.urlimg }}appBuilder/iframePlot.png)
- [UserCard]({{ site.urlimg }}appBuilder/userCard.png)
- [CustomCard]

## Application Builder CubeRowCard Widgets
For the CubeRowCard there are 13  widgets defined.

- [GaugeCube]({{ site.urlimg }}appBuilder/gaugePlots.png)
- [HbarCube]({{ site.urlimg }}appBuilder/gaugePlots.png)
- [UrlLaunchCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [TextReadCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [TextSetCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [NumberReadCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [TimeStampReadCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [OnOffSetCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [ImageReadCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [LabelReadCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [SettingIncrCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [StateChoiceCube]({{ site.urlimg }}appBuilder/cubeRows.png)
- [DropChoiceCube]({{ site.urlimg }}appBuilder/cubeRows.png)

## Sample Application Builder JSON file
<pre>
<code>
{
    allowedRoles: [
        'app02',
        'appView'
    ],
    app: 'app02',
    cards: [
        {
            type: 'CubeRowCard',
            config: {
                title: 'Status <span style=\\"color:var(--color6);font-size:20px;\\">(CubeRowCard))</span>',
                displayOnOpen: true,
                cubeRows: [
                    {
                        type: 'UrlLaunchCube',
                        config: {
                            trayIndex: 0,
                            cubeLabel: 'Home     <i style=\\"color:var(--color6);font-size:15px;\\">(UrlLaunchCube)</i>',
                            buttonLabel: 'Launch',
                            url: '/'
                        }
                    },
                    {
                        type: 'TextReadCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'alias',
                            cubeLabel: 'Device   <i style=\\"color:var(--color6);font-size:15px;\\">(TextReadCube)</i>'
                        }
                    },
                    {
                        type: 'TextSetCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'alias',
                            cubeLabel: 'Device   <i style=\\"color:var(--color6);font-size:15px;\\">(TextSetCube)</i>'
                        }
                    },
                    {
                        type: 'NumberReadCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'watchdog',
                            cubeLabel: 'Watchdog  <i style=\\"color:var(--color6);font-size:15px;\\">(NumberReadCube)</i>'
                        }
                    },
                    {
                        type: 'TimeStampReadCube',
                        config: {
                            trayIndex: 0,
                            cubeLabel: 'Update <i style=\\"color:var(--color6);font-size:15px;\\">(TimeStampReadCube)</i>'
                        }
                    },
                    {
                        type: 'NumberReadCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'chipTemp',
                            cubeLabel: 'Chip Temp <i style=\\"color:var(--color6);font-size:15px;\\">(NumberReadCube)</i>'
                        }
                    },
                    {
                        type: 'OnOffSetCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(OnOffSetCube)</i>',
                            ocubeRownColor: '#0000ff',
                            offColor: '#e6e6ff',
                            middleColor: '#c825ff',
                            limits: [
                                10,
                                240
                            ]
                        }
                    },
                    {
                        type: 'ImageReadCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(ImageReadCube)</i>',
                            values: [
                                10,
                                125,
                                240
                            ],
                            images: [
                                '/img/blackLight.png',
                                '/img/purpleLight.png',
                                '/img/blueLight.png'
                            ]
                        }
                    },
                    {
                        type:cubeRow 'LabelReadCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(LabelReadCube)</i>',
                            values: [
                                10,
                                125,
                                240
                            ],
                            labels: [
                                'Off',
                                'Mood',
                                'On'
                            ],
                            colors: [
                                'black',
                                '#c825ff',
                                'blue'
                            ]
                        }
                    },
                    {
                        type: 'SettingIncrCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(SettingIncrCube)</i>',
                            increment: 5
                        }
                    },cubeRow
                    {
                        type: 'StateChoiceCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(StateChoiceCube)</i>',
                            borderColor: 'black',
                            borderWidth: 5,
                            states: [
                                {
                                    value: 10,
                                    color: '#e6e6ff',
                                    text: 'Off'
                                },
                                {
                                    value: 125,
                                    color: '#c825ff',
                                    text: 'Mood'
                                },
                                {
                                    value: 240,
                                    color: '#0000ff',
                                    text: 'On'
                                }
                            ]
                        }
                    },
                    {
                        type: 'DropChoiceCube',
                        conficubeRowg: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(DropChoiceCube)</i>',
                            choices: [
                                {
                                    value: 10,
                                    color: '#e6e6ff',
                                    text: 'Off'
                                },
                             cubeRow   {
                                    value: 125,
                                    color: '#c825ff',
                                    text: 'Mood'
                                },
                                {
                                    value: 240,
                                    color: '#0000ff',
                                    text: 'On'
                                }
                            ]
                        }
                    },
                    {
                        type: 'NumberSetCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: 'Blue LED  <i style=\\"color:var(--color6);font-size:15px;\\">(NumberSetCube)</i>'
                        }
                    },
                    {
                        type: 'NumberSetCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led2',
                            cubeLabel: 'Red LED   <i style=\\"color:var(--color6);font-size:15px;\\">(NumberSetCube)</i>'
                        }
                    }
                ]
            }
        },
        {
            type: 'CubeRowCard',
            config: {
                title: 'Gauge Demo  <span style=\\"color:var(--color6);font-size:20px;\\">(CubeRowCard))</span>',
                displayOnOpen: true,
                cubeRows: [
                    {
                        type: 'SettingIncrCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led1',
                            cubeLabel: '',
                            increment: 20
                        }
                    },
                    {
                        type: 'GaugeCube',
                        config: {
                            cubeLabel: 'Blue LED <i style=\\"color:var(--color6);font-size:15px;\\">(GaugeCube)</i>',
                            trayIndex: 0,
                            cubeName: 'led1',
                            textsize: 20,
                            lowColor: '#e6e6ff',
                            mediumColor: '#c825ff',
                            highColor: '#0000ff',
                            backgroundColor: '#c6c2bb',
                            labelColor: '#000000',
                            round: 0,
                            limits: [
                                0,
                                80,
                                160,
                                250
                            ]
                        }
                    }
                ]
            }
        },
        {
            type: 'CubeRowCard',
            config: {
                title: 'H Bar Demo  <span style=\\"color:var(--color6);font-size:20px;\\">(CubeRowCard))</span>',
                displayOnOpen: true,
                cubeRows: [
                    {
                        type: 'SettingIncrCube',
                        config: {
                            trayIndex: 0,
                            cubeName: 'led2',
                            cubeLabel: '',
                            increment: 20
                        }
                    },
                    {
                        type: 'HbarCube',
                        config: {
                            cubeLabel: 'Red LED <i style=\\"color:var(--color6);font-size:15px;\\">(HbarCube)</i>',
                            trayIndex: 0,
                            cubeName: 'led2',
                            textsize: 20,
                            lowColor: '#ffe6e6',
                            mediumColor: '#ff9900',
                            highColor: '#ff0000',
                            backgroundColor: '#c6c2bb',
                            labelColor: '#000000',
                            gridColor: '#ffffff',
                            height: 150,
                            round: 0,
                            limits: [
                                0,
                                80,
                                160,
                                250
                            ]
                        }
                    }
                ]
            }
        },
        {
            type: 'BarPlotCard',
            config: {
                title: 'LED Strength  <span style=\\"color:var(--color6);font-size:20px;\\">(BarPlotCard))</span>',
                displayOnOpen: true,
                orientation: 'h',
                cubeList: [
                    {
                        trayIndex: 0,
                        cubeName: 'led1',
                        cubeLabel: 'Blue LED',
                        color: 'blue'
                    },
                    {
                        trayIndex: 0,
                        cubeName: 'led2',
                        cubeLabel: 'RED LED',
                        color: 'red'
                    }
                ],
                plotlyDisplay: {
                    displayModeBar: true,
                    staticPlot: false
                },
                plotlyLayout: {
                    showlegend: false,
                    height: '400',
                    width: '',
                    yaxis: {
                        tickfont: {
                            size: 20
                        }
                    },
                    xaxis: {
                        title: 'LED Strength',
                        titlefont: {
                            color: '#557a95',
                            size: 20
                        },
                        tickfont: {
                            color: '#557a95',
                            size: 20
                        },
                        gridcolor: '#beceda',
                        zerolinecolor: '#beceda',
                        linecolor: '#beceda',
                        range: [
                            0,
                            300
                        ]
                    },
                    margin: {
                        t: 30,
                        l: 150,
                        r: 200,
                        b: 130
                    }
                }
            }
        },
        {
            type: 'TimePlotCard',
            config: {
                title: 'Time Plot  <span style=\\"color:var(--color6);font-size:20px;\\">(TimePlotCard))</span>',
                displayOnOpen: false,
                cubeList: [
                    [
                        {
                            label: 'Chip Temp',
                            name: 'chipTemp',
                            color: 'green',
                            yaxis: 'y1'
                        },
                        {
                            label: 'Watchdog',
                            name: 'watchdog',
                            color: 'blue',
                            yaxis: 'y2'
                        }
                    ]
                ],
                plotlyDisplay: {
                    displayModeBar: true,
                    staticPlot: false
                },
                plotlyLayout: {
                    showlegend: true,
                    legend: {
                        x: 0,
                        y: 1.15,
                        font: {
                            size: 20
                        }
                    },
                    height: '600',
                    width: '',
                    xaxis: {
                        type: 'date',
                        tickangle: '90',
                        tickfont: {
                            size: 20
                        },
                        tickformat: '%H:%M\\n%b-%d'
                    },
                    yaxis: {
                        title: 'Temperature C',
                        titlefont: {
                            color: '#557a95',
                            size: 20
                        },
                        tickfont: {
                            color: '#557a95',
                            size: 20
                        },
                        gridcolor: '#beceda',
                        zerolinecolor: '#beceda',
                        linecolor: '#beceda'
                    },
                    yaxis2: {
                        title: 'Watchdog',
                        titlefont: {
                            color: '#557a95',
                            size: 20
                        },
                        tickfont: {
                            color: '#557a95',
                            size: 20
                        },
                        gridcolor: '#beceda',
                        zerolinecolor: '#beceda',
                        linecolor: '#beceda',
                        overlaying: 'y',
                        side: 'right'
                    },
                    margin: {
                        t: 30,
                        l: 150,
                        r: 200,
                        b: 130
                    }
                }
            }
        },
        {
            type: 'ArchivePlotCard',
            config: {
                title: 'Archive  <span style=\\"color:var(--color6);font-size:20px;\\">(ArchivePlotCard))</span>',
                displayOnOpen: true,
                cubeList: [
                    [
                        {
                            label: 'Chip Temp',
                            name: 'chipTemp',
                            color: 'green',
                            yaxis: 'y1'
                        },
                        {
                            label: 'Watchdog',
                            name: 'watchdog',
                            color: 'blue',
                            yaxis: 'y2'
                        }
                    ]
                ],
                plotlyDisplay: {
                    displayModeBar: true,
                    staticPlot: false
                },
                plotlyLayout: {
                    showlegend: true,
                    legend: {
                        x: 0,
                        y: 1.15,
                        font: {
                            size: 20
                        }
                    },
                    height: '600',
                    width: '',
                    xaxis: {
                        type: 'date',
                        tickangle: '90',
                        tickfont: {
                            size: 20
                        },
                        tickformat: '%H:%M\\n%b-%d'
                    },
                    yaxis: {
                        title: 'Temperature C',
                        titlefont: {
                            color: '#557a95',
                            size: 20
                        },
                        tickfont: {
                            color: '#557a95',
                            size: 20
                        },
                        gridcolor: '#beceda',
                        zerolinecolor: '#beceda',
                        linecolor: '#beceda'
                    },
                    yaxis2: {
                        title: 'Watchdog',
                        titlefont: {
                            color: '#557a95',
                            size: 20
                        },
                        tickfont: {
                            color: '#557a95',
                            size: 20
                        },
                        gridcolor: '#beceda',
                        zerolinecolor: '#beceda',
                        linecolor: '#beceda',
                        overlaying: 'y',
                        side: 'right'
                    },
                    margin: {
                        t: 30,
                        l: 150,
                        r: 200,
                        b: 130
                    }
                }
            }
        },
        {
            type: 'VectorPlotCard',
            config: {
                title: 'Resistance Curve <span style=\\"color:var(--color6);font-size:20px;\\">(VectorPlotCard))</span>',
                displayOnOpen: false,
                cubeList: [
                    [
                        {
                            name: 'crv',
                            color: 'blue',
                            mode: 'lines+markers',
                            size: 12,
                            yaxis: 'y1'
                        }
                    ]
                ],
                plotlyDisplay: {
                    displayModeBar: true,
                    staticPlot: false
                },
                plotlyLayout: {
                    showlegend: true,
                    legend: {
                        x: 0,
                        y: 1.15,
                        font: {
                            size: 20
                        }
                    },
                    height: '600',
                    width: '',
                    xaxis: {
                        title: 'Resistance (kOhms)',
                        titlefont: {
                            color: '#000000',
                            size: 20
                        },
                        tickfont: {
                            size: 20
                        },
                        fixedrange: false
                    },
                    yaxis: {
                        title: 'Temperature (K)',
                        titlefont: {
                            color: '#557a95',
                            size: 20
                        },
                        tickfont: {
                            color: '#557a95',
                            size: 20
                        },
                        gridcolor: '#557a95',
                        zerolinecolor: '#557a95',
                        linecolor: '#557a95',
                        type: 'log',
                        range: [
                            0,
                            3
                        ]
                    },
                    margin: {
                        t: 30,
                        l: 150,
                        r: 100,
                        b: 150
                    }
                }
            }
        },
        {
            type: 'IframeCard',
            config: {
                title: 'Info  <span style=\\"color:var(--color6);font-size:20px;\\">(IframeCard))</span>',
                displayOnOpen: false,
                url: 'https://blinky-lite.org/docs/pages/Overview/features.html',
                extraAttr: {
                    frameborder: '0',
                    width: '100%',
                    height: '100%',
                    allowfullscreen: 'true',
                    mozallowfullscreen: 'true',
                    webkitallowfullscreen: 'true'
                },
                height: '75vw'
            }
        },
        {
            type: 'UserCard',
            config: {
                title: 'User  <span style=\\"color:var(--color6);font-size:20px;\\">(UserCard))</span>',
                displayOnOpen: false
            }
        }
    ],
    navbar: {
        config: {
            imageHeight: '75px',
            centerImage: '/img/basic.png'
        }
    },
    title: 'Blinky PicoW',
    trayTypes: [
        'blinky-mqtt'
    ],
    trayUpdateFilter: [
        {
            type: 'blinky-mqtt'
        }
    ],
    multiColumns: true
}</code>
</pre>


