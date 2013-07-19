class EvaluationController < ApplicationController
  def show
      @radarchart = LazyHighCharts::HighChart.new('graph') do |f|
        
        seratonin = "
           <dl class='dl-horizontal'>
              <dt>Optimal Range:</dt>
              <dd>175-225</dd>
              <dt>Affects:</dt>
              <dd>Sleep cycle, depression, anxiety, </br>carbohydrate cravings, PMS.</dd>
              <dt>Excite/Inhibit:</dt>
              <dd>Inhibitory</dd>
            </dl>"
            
          dopamine =  "
            <dl class='dl-horizontal'>
              <dt>Optimal Range:</dt>
              <dd>125-175</dd>
              <dt>Affects:</dt>
              <dd>Focus, attention, memory, motivation/drive, </br>mood, addictive disorders.</dd>
              <dt>Excite/Inhibit:</dt>
              <dd>Both</dd>
            </dl>"
            
          norepinephrine = "
            <dl class='dl-horizontal'>
              <dt>Optimal Range:</dt>
              <dd>30-55</dd>
              <dt>Affects:</dt>
              <dd>Energy, drive, stimulation, 'fight or flight' </br>response, insomnia, anxiety.</dd>
              <dt>Excite/Inhibit:</dt>
              <dd>Excitatory</dd>
            </dl>"

          epinephrine = "
            <dl class='dl-horizontal'>
              <dt>Optimal Range:</dt>
              <dd>8-12</dd>
              <dt>Helps:</dt>
              <dd>'Fight or flight' response, metabolism, </br>energy, depression, cognitive function.</dd>
              <dt>Excite/Inhibit:</dt>
              <dd>Excitatory</dd>
            </dl>"
          

          ratio = "
            <dl class='dl-horizontal'>
                <dt>Optimal Range:</dt>
                <dd>3-6</dd>
                <dt>Affects:</dt>
                <dd>Ratios less than 3 cause restlessness, 
                </br>over-training. Ratios greater than 7 
                </br>cause stress, &#13;&#10; tiredness, 
                </br>lack of focus, energy and motivation
                </br> 'burn out'.</dd>
                <dt>Excite/Inhibit:</dt>
                <dd>Excitatory</dd>
              </dl>"
              
          gaba = "
            <dl class='dl-horizontal'>
                <dt>Optimal Range:</dt>
                <dd>550-750</dd>
                <dt>Affects:</dt>
                <dd>Reduces excess stimulation.</dd>
                <dt>Excite/Inhibit:</dt>
                <dd>Inhibitory</dd>
              </dl>"
              
          histamine = "
            <dl class='dl-horizontal'>
                <dt>Optimal Range:</dt>
                <dd>20-40</dd>
                <dt>Affects:</dt>
                <dd>Responds to allergy and inflammation. </br>Low levels cause lethargy.</dd>
                <dt>Excite/Inhibit:</dt>
                <dd>Excitatory</dd>
              </dl>"
              
          glutamate = "
            <dl class='dl-horizontal'>
                <dt>Optimal Range:</dt>
                <dd>5-15</dd>
                <dt>Affects:</dt>
                <dd>Agitation, sleeplessness, </br>depression when low.</dd>
                <dt>Excite/Inhibit:</dt>
                <dd>Excitatory</dd>
              </dl>"
              
          creatinine = "
            <dl class='dl-horizontal'>
                <dt>Optimal Range:</dt>
                <dd>5-15</dd>
                <dt>Affects:</dt>
                <dd>Determines whether sample is viable </br>for testing (hydration/dehydration)</dd>
                 <dt>Excite/Inhibit:</dt>
                <dd>N/A</dd>
            </dl>" 
  
      f.title(:text => "Neurotransmitter Levels", x: -80)
      f.xAxis( 
         categories: ["GABA","Norepi/Epi Ratio", "Glutamate", "Dopamine", "Histamine", "Seratonin", "Epinephrine", "Norepinephrine", "Creatinine"],
                tickmarkPlacement: 'on',
                lineWidth: 0,
                gridLineWidth: 0,
                maxPadding: 0,
                type: 'category',
                labels: {style: {
                color: '#525151',
                font: '16px Helvetica',
                fontWeight: 'bold'
                },
                formatter: "function () {
                    return this.value;
                     }".js_code
                }
            )
      f.yAxis([{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        },{
            gridLineWidth: 0,
             labels: {enabled: false}
        }])

            f.series(type: 'column',
                name: 'Seratonin',
                data: [{y: 225, stack: 5, x:5, id: seratonin, color: 'rgba(144, 238, 144, 1)' },
                    {y: 175, stack: 5, x:5, id: seratonin, color: 'rgba(255, 0, 0, 1)'}
                    # ,
                    # {y: 154, stack: 0, x:0, id: seratonin,  color: 'rgba(194, 0, 16, 1)', 'rgba(81, 194, 0, 1)' }
                    ],
                pointPlacement: 'on',
                yAxis: 5

            )
            f.series( type: 'column',
                name: 'Dopamine',
                data: [{y: 175, stack: 3, x: 3, id: dopamine,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 167, stack: 1, x: 1, id: dopamine,  color: 'rgba(0,129,194, 1)'},
                    {y: 125, stack: 3, x: 3, id: dopamine, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 3

            ) 
            f.series(type: 'column',
                name: 'Norepinephrine',
                data: [{y: 55, stack: 8, x: 8, id: norepinephrine,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 30, stack: 8, x: 8, id: norepinephrine, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 8

            )
            f.series(type: 'column',
                name: 'Epinephrine',
                data: [{y: 12, stack: 6, x: 6, id: epinephrine,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 8, stack: 6, x: 6, id: epinephrine, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 6

            ) 
            f.series(type: 'column',
                name: 'Norepi/Epi Ratio',
                data: [{y: 6, stack: 1, x: 1, id: ratio,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 3, stack: 1, x: 1, id: ratio, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 1

            ) 
            f.series(type: 'column',
                name: 'GABA',
                data: [{y: 750, stack: 0, x: 0, id: gaba,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 550, stack: 0, x: 0, id: gaba, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 0

            )
            f.series(type: 'column',
                name: 'Histamine',
                data: [{y: 40, stack: 4, x: 4, id: histamine,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 20, stack: 4, x: 4, id: histamine, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 4

            )
            f.series(type: 'column',
                name: 'Glutamate',
                data: [{y: 15, stack: 2, x: 2, id: glutamate,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 5, stack: 2, x: 2, id: glutamate, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 2

            )
            f.series(type: 'column',
                name: 'Creatinine',
                data: [{y: 250, stack: 7, x: 7, id: creatinine,  color: 'rgba(144, 238, 144, 1)'},
                    # {y: 33, stack: 2 ,x: 2, id: norepinephrine,  color: 'rgba(0,129,194, 1)'},
                    {y: 10, stack: 7, x: 7, id: creatinine, color: 'rgba(255, 0, 0, 1)'}],
                pointPlacement: 'on',
                yAxis: 7

            ) 
            f.series( type: 'line',
                data: [{y: 154, stack: 5, x: 5, id: seratonin}],
                yAxis: 5,
                color: 'rgba(0,129,194, 1)')

            f.series( type: 'line',
                data: [{y: 167, stack: 3, x: 3, id: dopamine}],
                yAxis: 3,
                color: 'rgba(0,129,194, 1)')

            f.series( type: 'line',
                data: [{y: 33, stack: 8 ,x: 8, id: norepinephrine}],
                yAxis: 8,
                color: 'rgba(0,129,194, 1)')

            f.series( type: 'line',
                data: [{y: 6, stack: 6 ,x: 6, id: epinephrine}],
                yAxis: 6,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: 5.5, stack: 1 ,x: 1, id: ratio}],
                yAxis: 1,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: 1558, stack: 0 ,x: 0, id: gaba}],
                yAxis: 0,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: 35, stack: 4 ,x: 4, id: histamine}],
                yAxis: 4,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: 17, stack: 2 ,x: 2, id: glutamate}],
                yAxis: 2,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: 48, stack: 7 ,x: 7, id: creatinine}],
                yAxis: 7,
                color: 'rgba(0,129,194, 1)')
      f.chart(
       polar: true,
        # height: 700,
        # width: 700,
        # borderRadius: 0
        # backgroundColor: 'rgba(194, 0, 16, 0.5)' 
        )
    f.legend(enabled: false)
    f.plotOptions(column: {grouping: false, groupPadding: 0.001}, 
        series: { marker: {enabled: true, symbol: 'circle', radius: 8}}
        # line: {

           # events: {
           #      legendItemClick: "function () {
           #         alert('I am an alert');
           #          }".js_code
           #      }}
        )
    f.tooltip(useHTML: true,
              headerFormat: "<span style='font-size: 16px; font-style: bold;'>{point.key}</span></br>",
                hideDelay: 0 ,
                    positioner: {labelWidth: 50, point:{ plotX: "{chart.plotRight}".to_i , plotY: "{chart.plotRight}".to_i }},
                    pointFormat: "{point.id}</br> Your Value: {point.y}"
        )
  end
  end

  def list
  end
end
