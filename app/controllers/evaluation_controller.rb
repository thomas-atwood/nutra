class EvaluationController < ApplicationController
  def show
      @radarchart = LazyHighCharts::HighChart.new('graph') do |f|
      @ntr = NeurotransmitterTestResult.find(3) # how get current and one back (or all back? )
        seratonin = "
              <dt>Optimal Range:</dt>
              <dd>175-225</dd>
              <dt>Affects:</dt>
              <dd>Sleep cycle, depression, anxiety, carbohydrate cravings, PMS.</dd>
              <!-- <dd>Sleep cycle, depression, anxiety, </br>carbohydrate cravings, PMS.</dd> -->
              <dt>Excite/Inhibit:</dt>
              <dd>Inhibitory</dd>
            </dl>"
            
          dopamine =  "
              <dt>Optimal Range:</dt>
              <dd>125-175</dd>
              <dt>Affects:</dt>
              <dd>Focus, attention, memory, motivation/drive, mood, addictive disorders.</dd>
              <!-- <dd>Focus, attention, memory, motivation/drive, </br>mood, addictive disorders.</dd> -->
              <dt>Excite/Inhibit:</dt>
              <dd>Both</dd>
            </dl>"
            
          norepinephrine = "
              <dt>Optimal Range:</dt>
              <dd>30-55</dd>
              <dt>Affects:</dt>
              <dd>Energy, drive, stimulation, 'fight or flight' response, insomnia, anxiety.</dd>
              <!-- <dd>Energy, drive, stimulation, 'fight or flight' </br>response, insomnia, anxiety.</dd> -->
              <dt>Excite/Inhibit:</dt>
              <dd>Excitatory</dd>
            </dl>"

          epinephrine = "
              <dt>Optimal Range:</dt>
              <dd>8-12</dd>
              <dt>Helps:</dt>
              <dd>'Fight or flight' response, metabolism, energy, depression, cognitive function.</dd>
              <!-- <dd>'Fight or flight' response, metabolism, </br>energy, depression, cognitive function.</dd> -->
              <dt>Excite/Inhibit:</dt>
              <dd>Excitatory</dd>
            </dl>"
          

          ratio = "
                <dt>Optimal Range:</dt>
                <dd>3-6</dd>
                <dt>Affects:</dt>
                <dd>Ratios less than 3 cause restlessness, over-training. 
                </br>Ratios greater than 7 cause stress, tiredness, lack of focus, motivation 'burn out'.</dd>
                <!--  
                <dd>Ratios less than 3 cause restlessness, 
                  </br>over-training. Ratios greater than 7 
                  </br>cause stress, &#13;&#10; tiredness, 
                  </br>lack of focus, energy and motivation
                  </br> 'burn out'.</dd>
                  -->
                <dt>Excite/Inhibit:</dt>
                <dd>Excitatory</dd>
              </dl>"
              
          gaba = "
                <dt>Optimal Range:</dt>
                <dd>550-750</dd>
                <dt>Affects:</dt>
                <dd>Reduces excess stimulation.</dd>
                <dt>Excite/Inhibit:</dt>
                <dd>Inhibitory</dd>
              </dl>"
              
          histamine = "
                <dt>Optimal Range:</dt>
                <dd>20-40</dd>
                <dt>Affects:</dt>
                <dd>Responds to allergy and inflammation. Low levels cause lethargy.</dd>
                <!-- <dd>Responds to allergy and inflammation. </br>Low levels cause lethargy.</dd> -->
                <dt>Excite/Inhibit:</dt>
                <dd>Excitatory</dd>
              </dl>"
              
          glutamate = "
                <dt>Optimal Range:</dt>
                <dd>5-15</dd>
                <dt>Affects:</dt>
                <dd>Agitation, sleeplessness, depression when low.</dd>
                <!-- <dd>Agitation, sleeplessness, </br>depression when low.</dd> -->
                <dt>Excite/Inhibit:</dt>
                <dd>Excitatory</dd>
              </dl>"
              
          creatinine = "
                <dt>Optimal Range:</dt>
                <dd>10-250</dd>
                <dt>Affects:</dt>
                <dd>Determines whether sample is viable for testing (hydration/dehydration)</dd>
                <!-- <dd>Determines whether sample is viable </br>for testing (hydration/dehydration)</dd> -->
                <dt>Excite/Inhibit:</dt>
                <dd>N/A</dd>
            </dl>" 
      # f.title(:text => "", x: -80)
      f.labels(
        style: { padding: '20px' }
      )
      f.xAxis( 
         categories: ["GABA","Norepi/Epi Ratio", "Glutamate", "Dopamine", "Histamine", "Seratonin", "Epinephrine", "Creatinine", "Norepinephrine"],
                tickmarkPlacement: 'on',
                lineWidth: 0,
                gridLineWidth: 0,
                maxPadding: 0,
                type: 'category',
                labels: {style: {
                  indent: '20px',
                  align: 'right',
                  color: '#0088CC',
                  font: '16px Helvetica',
                  fontWeight: 'bold'
                  }
                  # ,
                  # formatter: "function () {
                  #              return this.value;
                  #               }".js_code
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
                data: [{y: @ntr.seratonin, stack: 5, x: 5, id: seratonin}],
                yAxis: 5,
                color: 'rgba(0,129,194, 1)')

            f.series( type: 'line',
                data: [{y: @ntr.dopamine, stack: 3, x: 3, id: dopamine}],
                yAxis: 3,
                color: 'rgba(0,129,194, 1)')

            f.series( type: 'line',
                data: [{y: @ntr.norepinephrine, stack: 8 ,x: 8, id: norepinephrine}],
                yAxis: 8,
                color: 'rgba(0,129,194, 1)')

            f.series( type: 'line',
                data: [{y: @ntr.epinephrine, stack: 6 ,x: 6, id: epinephrine}],
                yAxis: 6,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: @ntr.ratio, stack: 1 ,x: 1, id: ratio}],
                yAxis: 1,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: @ntr.gaba, stack: 0 ,x: 0, id: gaba}],
                yAxis: 0,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: @ntr.histamine, stack: 4 ,x: 4, id: histamine}],
                yAxis: 4,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: @ntr.glutamate, stack: 2 ,x: 2, id: glutamate}],
                yAxis: 2,
                color: 'rgba(0,129,194, 1)')
            f.series( type: 'line',
                data: [{y: @ntr.creatinine, stack: 7 ,x: 7, id: creatinine}],
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
              style: {padding: 20 },
              headerFormat: "<span style='font-size: 16px; font-style: bold; '>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{point.key}</span></br>",
                hideDelay: 0 ,
                followPointer: true,
                # positioner: {labelWidth: 300, point:{ plotX: "{chart.plotRight}".to_i , plotY: "{chart.plotRight}".to_i }},
                pointFormat: "<dl class='dl-horizontal'><dt>Your Value:</dt><dd> {point.y}</dd>{point.id}",
                # formatter: "function(){
                # return this.point.id;}".js_code
        )
  end
  end

  def list
  end
end
