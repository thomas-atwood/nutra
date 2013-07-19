class ProgressController < ApplicationController

  def radar
      @radarchart = LazyHighCharts::HighChart.new('graph') do |f|
        seratonin = "Sleep cycle, depression, anxiety, carbohydrate cravings, PMS. Inhibitory"
        dopamine =  "Focus, attention, memory, motivation/drive, mood, addictive disorders. Inhibitory/Excitatory"
        norepinephrine = "Energy, drive, stimulation, 'fight or flight' response, insomni, anxiety. Excitatory"
        epinephrine = "'Fight or flight' response, metabolism, energy depression, cognitive function. Excitatory"
        ratio = "Ratios less than 3 cause restlessness, over-training. Ratios greater than 7 cause stress, &#13;&#10; tiredness, lack of focus, energy and motivation 'burn out'. Excitatory"
        gaba = "Reduces excess stimulation. Inhibitory"
        histamine = "Responds to allergy and inflammation, low levels cause lethargy. Excitatory"
        glutamate = "Agitation, sleeplessness, depression when low. Excitatory"
        creatinine = "Determines whether sample is viable for testing (hydration/dehydration)" 
        
      f.title(:text => "Neurotransmitter Levels", x: -80)
      f.xAxis(  categories: ["Seratonin", "Dopamine","Norepinephrine","Epinephrine","Norepi/Epi Ratio","GABA","Histamine","Glutamate", "Creatinine"],
                tickmarkPlacement: 'off',
                lineWidth: 0,
                gridLineWidth: 0)
      f.series(
                name: 'Your Test Results',
                data: [{y: 12.559, id: seratonin},
                    {y: 73.1198, id: dopamine},
                    {y: 24.159, id: norepinephrine},
                    {y: 18.004, id: epinephrine},
                    {y: 72.665, id: ratio},
                    {y: 358.719, id: gaba},
                    {y: 66.995, id: histamine},
                    {y: 97.5996, id: glutamate},
                    {y: 26.767, id: creatinine}],
                pointPlacement: 'on',
                color: '#808080'

            )
        f.series(
                name: 'High Range',
                data: [{y: 84, id: seratonin},
                    {y: 84, id: dopamine},
                    {y: 84, id: norepinephrine},
                    {y: 84, id: epinephrine},
                    {y: 84, id: ratio},
                    {y: 84, id: gaba},
                    {y: 84, id: histamine},
                    {y: 84, id: glutamate},
                    {y: 84, id: creatinine}],
                pointPlacement: 'on',
                color: 'rgba(151, 187, 205, .25)'
            )
        f.series(
                name: 'Low Range',
                data: [{y: 16, id: seratonin},
                    {y: 16, id: dopamine},
                    {y: 16, id: norepinephrine},
                    {y: 16, id: epinephrine},
                    {y: 16, id: ratio},
                    {y: 16, id: gaba},
                    {y: 16, id: histamine},
                    {y: 16, id: glutamate},
                    {y: 16, id: creatinine}],
                pointPlacement: 'on',
                marker: {
                    enabled:false
                },
                color: 'rgba(255, 255, 255, .25)'
            )
      f.yAxis(
                lineWidth: 0,
                min: 0,
                gridLineWidth: 0,
                labels: {enabled: false}
            )

      f.legend(
                align: 'right',
                verticalAlign: 'top',
                y: 100,
                layout: 'vertical'
            )
        f.tooltip(useHTML: true,
                hideDelay: 500 ,
                    positioner: {labelWidth: 50, point:{ plotX: "{chart.plotRight}".to_i , plotY: "{chart.plotRight}".to_i }},
                    pointFormat: "{point.id}"
        )

      f.chart( polar: true, type: 'area')
      f.plotOption(area:{tooltip:{hideDelay: 500}})

    end

    @polarbar = LazyHighCharts::HighChart.new('graph') do |f|
        seratonin = "Sleep cycle, depression, anxiety, carbohydrate cravings, PMS. Inhibitory"
        dopamine =  "Focus, attention, memory, motivation/drive, mood, addictive disorders. Inhibitory/Excitatory"
        norepinephrine = "Energy, drive, stimulation, 'fight or flight' response, insomni, anxiety. Excitatory"
        epinephrine = "'Fight or flight' response, metabolism, energy depression, cognitive function. Excitatory"
        ratio = "Ratios less than 3 cause restlessness, over-training. Ratios greater than 7 cause stress, &#13;&#10; tiredness, lack of focus, energy and motivation 'burn out'. Excitatory"
        gaba = "Reduces excess stimulation. Inhibitory"
        histamine = "Responds to allergy and inflammation, low levels cause lethargy. Excitatory"
        glutamate = "Agitation, sleeplessness, depression when low. Excitatory"
        creatinine = "Determines whether sample is viable for testing (hydration/dehydration)" 
        
      f.title(:text => "Neurotransmitter Levels", x: -80)
      f.xAxis(  categories: ["Seratonin", "Dopamine","Norepinephrine","Epinephrine","Norepi/Epi Ratio","GABA","Histamine","Glutamate", "Creatinine"],
                tickmarkPlacement: 'on',
                lineWidth: 0,
                gridLineWidth: 0,
                maxPadding: 0)

            f.series(type: 'column',
                name: 'High Range',
                data: [{y: 160, id: seratonin},
                    {y: 160, id: dopamine},
                    {y: 160, id: norepinephrine},
                    {y: 160, id: epinephrine},
                    {y: 160, id: ratio},
                    {y: 160, id: gaba},
                    {y: 160, id: histamine},
                    {y: 160, id: glutamate},
                    {y: 160, id: creatinine}],
                pointPlacement: 'on',
                marker: {
                    enabled:false
                },
                stack: 0,
                # color: 'rgba(255, 0, 0, 0.5)'
                color: 'rgba(194, 0, 16, 0.5)'
            )


            f.series(type: 'column',
                name: 'Optimal Range',
                data: [{y: 84, id: seratonin},
                    {y: 84, id: dopamine},
                    {y: 84, id: norepinephrine},
                    {y: 84, id: epinephrine},
                    {y: 84, id: ratio},
                    {y: 84, id: gaba},
                    {y: 84, id: histamine},
                    {y: 84, id: glutamate},
                    {y: 84, id: creatinine}],
                pointPlacement: 'on',
                stack: 0,
                # color: 'rgba(0,235,0,1)'
                color: 'rgba(81, 194, 0, 0.75)'
            )
            f.series(type: 'column',
                name: 'Low Range',
                data: [{y: 16, id: seratonin},
                    {y: 16, id: dopamine},
                    {y: 16, id: norepinephrine},
                    {y: 16, id: epinephrine},
                    {y: 16, id: ratio},
                    {y: 16, id: gaba},
                    {y: 16, id: histamine},
                    {y: 16, id: glutamate},
                    {y: 16, id: creatinine}],
                pointPlacement: 'on',
                marker: {
                    enabled:false
                },
                stack: 0,
                # color: 'rgba(255, 0, 0, 1)'
                color: 'rgba(194, 0, 16, 1)'
            ) 

            f.series( type: 'line',
                name: 'Your Test Results',
                data: [{y: 12.559, id: seratonin},
                    {y: 73.1198, id: dopamine},
                    {y: 24.159, id: norepinephrine},
                    {y: 18.004, id: epinephrine},
                    {y: 72.665, id: ratio},
                    {y: 158.719, id: gaba},
                    {y: 66.995, id: histamine},
                    {y: 97.5996, id: glutamate},
                    {y: 26.767, id: creatinine}],
                pointPlacement: 'on',
                # color: 'rgba(128, 128, 128, 1)',
                color: 'rgba(0,129,194, 1)',
                stack: 0 

            )

      f.yAxis( lineWidth: 0,
                min: 0,
                gridLineWidth: 0,
                labels: {enabled: false},
                maxPadding: 0
            )

      f.legend(
                align: 'right',
                verticalAlign: 'top',
                y: 100,
                layout: 'vertical'
            )
        f.tooltip(useHTML: true,
                hideDelay: 0 ,
                    positioner: {labelWidth: 50, point:{ plotX: "{chart.plotRight}".to_i , plotY: "{chart.plotRight}".to_i }},
                    pointFormat: "{point.id}"
        )

      f.chart(
        polar: true,
        height: 700,
        width: 700
        )
      f.plotOptions(column: {grouping: false, groupPadding: 0.001, color: {linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1}}},
        series: {
        marker: {
            enabled: true,
            symbol: 'circle',
            radius: 8
        }})
  end

  end

  def time
    @timechart = LazyHighCharts::HighChart.new('graph') do |f|
            f.chart( type: 'area')
            
            f.title(
                text: 'Neurotransmitter Levels over Time'
            )
            f.subtitle(
                text: "Source: Karen's tests"
            )
            f.xAxis(
                categories: ["July 2012", "March 2013"],
                tickmarkPlacement: 'on',
                title: {
                    enabled: false
                }
            )
            f.yAxis(
                title: {
                    text: 'Parts Per Million'
                }
            )
            f.legend(
                align: 'right',
                verticalAlign: 'top',
                y: 100,
                layout: 'vertical'
            )
            f.tooltip(
                shared: true,
                valueSuffix: ' PPM',
                positioner: {labelWidth:50, labelHeight:50, point:{x:300,y:0}}
            )
            f.plotOptions(
                area: {
                    stacking: 'normal',
                    lineColor: '#666666',
                    lineWidth: 1,
                    marker: {
                        lineWidth: 1,
                        lineColor: '#666666'
                    }
                }
            )
            f.series(
                name: 'Creatinine',
                data: [26.767, 23.083]
            )
            f.series(
                name: 'Histamine',
                data: [66.995, 73.79]
            )
            f.series(
                name: 'Norepinephrine',
                data: [24.159, 43.20]
            )
            f.series(
                name: 'Glutamate',
                data: [97.5996, 68.86]
            )
            f.series(
                name: 'Seratonin',
                data: [73.11, 33.68]
            )
            f.series(
                name: 'Epinephrine',
                data: [18.004, 86.008]
            )
            f.series(
                name: 'Dopamine',
                data: [12.559, 145.20]
            )
            f.series(
                name: 'Dopamine',
                data: [12.559, 145.20]
            )
            f.series(
                name: 'Dopamine',
                data: [12.559, 145.20]
            )
            f.series(
                name: 'Dopamine',
                data: [12.559, 145.20]
            )
            f.series(
                name: 'GABA',
                data: [358.719, 196.88]
            )
            f.series(
                name: 'Norepi/Epi rati',
                data: [72.665, 401.31]
            )

        end

    @barchart = LazyHighCharts::HighChart.new('graph') do |f|
        f.chart()
        f.title(
            text: 'GAB levels'
            )
        f.xAxis(
            categories: ["July 2012", "March 2013"]
            )
        f.series(
                type: 'column',
                name: 'GABA Level',
                data: [1558, 1083],
                color: 'rgba(128, 128, 128, 1)',
                stack: 0 
            )
        f.series(
                type: 'columnrange',
                name: 'Range',
                data: [[550,750],
                        [550,750]],
                color: 'rgba(151, 187, 205, .5)',
                stack: 0
            )
        f.series(
                type: 'spline',
                name: 'GABA Levels Line',
                data: [1558, 1083],
                marker: {
                    lineWidth: 2,
                    fillColor: 'white'
                }
            )
        f.plotOptions(column: {grouping: false})
          
        end

  end

  def highcharts
      @chart = LazyHighCharts::HighChart.new('graph') do |f|
        seratonin = "Sleep cycle, depression, anxiety, carbohydrate cravings, PMS. Inhibitory"
        dopamine =  "Focus, attention, memory, motivation/drive, mood, addictive disorders. Inhibitory/Excitatory"
        norepinephrine = "Energy, drive, stimulation, 'fight or flight' response, insomni, anxiety. Excitatory"
        epinephrine = "'Fight or flight' response, metabolism, energy depression, cognitive function. Excitatory"
        ratio = "Ratios less than 3 cause restlessness, over-training. Ratios greater than 7 cause stress, &#13;&#10; tiredness, lack of focus, energy and motivation 'burn out'. Excitatory"
        gaba = "Reduces excess stimulation. Inhibitory"
        histamine = "Responds to allergy and inflammation, low levels cause lethargy. Excitatory"
        glutamate = "Agitation, sleeplessness, depression when low. Excitatory"
        creatinine = "Determines whether sample is viable for testing (hydration/dehydration)" 
        
      f.title(:text => "Neurotransmitter Levels", x: -80)
      f.xAxis(  categories: ["Seratonin", "Dopamine","Norepinephrine","Epinephrine","Norepi/Epi Ratio","GABA","Histamine","Glutamate", "Creatinine"],
                tickmarkPlacement: 'on',
                lineWidth: 0,
                gridLineWidth: 0,
                maxPadding: 0)

            #   f.series(type: 'columnrange',
            #     name: 'High Range',
            #     data: [[16,84],
            #         [16,84],
            #         [16,84],
            #         [16,84],
            #         [16,84],
            #         [16,84],
            #         [16,84],
            #         [16,84],
            #         [16,84]],
            #     pointPlacement: 'on',
            #     # color: 'rgba(151, 187, 205, .5)',
            #     color: 'rgba(0,128,0,0.5)',
            #     stack: 0
            # )
            f.series(type: 'column',
                name: 'High Range',
                data: [{y: 160, id: seratonin},
                    {y: 160, id: dopamine},
                    {y: 160, id: norepinephrine},
                    {y: 160, id: epinephrine},
                    {y: 160, id: ratio},
                    {y: 160, id: gaba},
                    {y: 160, id: histamine},
                    {y: 160, id: glutamate},
                    {y: 160, id: creatinine}],
                pointPlacement: 'on',
                marker: {
                    enabled:false
                },
                stack: 0,
                # color: 'rgba(255, 0, 0, 0.5)'
                color: 'rgba(194, 0, 16, 0.5)'
            )


            f.series(type: 'column',
                name: 'Optimal Range',
                data: [{y: 84, id: seratonin},
                    {y: 84, id: dopamine},
                    {y: 84, id: norepinephrine},
                    {y: 84, id: epinephrine},
                    {y: 84, id: ratio},
                    {y: 84, id: gaba},
                    {y: 84, id: histamine},
                    {y: 84, id: glutamate},
                    {y: 84, id: creatinine}],
                pointPlacement: 'on',
                stack: 0,
                # color: 'rgba(0,235,0,1)'
                color: 'rgba(81, 194, 0, 0.75)'
            )
            f.series(type: 'column',
                name: 'Low Range',
                data: [{y: 16, id: seratonin},
                    {y: 16, id: dopamine},
                    {y: 16, id: norepinephrine},
                    {y: 16, id: epinephrine},
                    {y: 16, id: ratio},
                    {y: 16, id: gaba},
                    {y: 16, id: histamine},
                    {y: 16, id: glutamate},
                    {y: 16, id: creatinine}],
                pointPlacement: 'on',
                marker: {
                    enabled:false
                },
                stack: 0,
                # color: 'rgba(255, 0, 0, 1)'
                color: 'rgba(194, 0, 16, 1)'
            ) 

            f.series( type: 'line',
                name: 'Your Test Results',
                data: [{y: 12.559, id: seratonin},
                    {y: 73.1198, id: dopamine},
                    {y: 24.159, id: norepinephrine},
                    {y: 18.004, id: epinephrine},
                    {y: 72.665, id: ratio},
                    {y: 158.719, id: gaba},
                    {y: 66.995, id: histamine},
                    {y: 97.5996, id: glutamate},
                    {y: 26.767, id: creatinine}],
                pointPlacement: 'on',
                # color: 'rgba(128, 128, 128, 1)',
                color: 'rgba(0,129,194, 1)',
                stack: 0 

            )

      f.yAxis( lineWidth: 0,
                min: 0,
                gridLineWidth: 0,
                labels: {enabled: false},
                maxPadding: 0
            )

      f.legend(
                align: 'right',
                verticalAlign: 'top',
                y: 100,
                layout: 'vertical'
            )
        f.tooltip(useHTML: true,
                hideDelay: 0 ,
                    positioner: {labelWidth: 50, point:{ plotX: "{chart.plotRight}".to_i , plotY: "{chart.plotRight}".to_i }},
                    pointFormat: "{point.id}"
        )

      f.chart(
        polar: true,
        height: 700,
        width: 700
        )
      f.plotOptions(column: {grouping: false, groupPadding: 0.001, color: {linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1}}},
        series: {
        marker: {
            enabled: true,
            symbol: 'circle',
            radius: 8
        }})
    
  end


#                    [{y: [16,84], id: seratonin},
#                     {y: [16,84], id: dopamine},
#                     {y: [16,84], id: norepinephrine},
#                     {y: [16,84], id: epinephrine},
#                     {y: [16,84], id: ratio},
#                     {y: [16,84], id: gaba},
#                     {y: [16,84], id: histamine},
#                     {y: [16,84], id: glutamate},
#                     {y: [16,84], id: creatinine}],
  end

end

