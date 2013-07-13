class EvaluationController < ApplicationController
  def show
      @radarchart = LazyHighCharts::HighChart.new('graph') do |f|

       f.title(:text => "Neurotransmitter Levels", x: -80)
       f.xAxis(categories: ["Seratonin","Dopamine","Norepinephrine","Epinephrine","Norepi/Epi Ratio","GABA","Histamine","Glutamate", "Creatinine"],
                 tickmarkPlacement: 'on',
                 lineWidth: 0)
       f.series(
                 name: 'Your Test Results',
                 data: [12.559,73.1198,24.159,18.004,72.665,158.719,66.995,97.5996,26.767],
                 pointPlacement: 'on',
                 color: '#808080'

             )
         f.series(
                 name: 'High Range',
                 data: [84,84,84,84,84,84,84,84,84],
                 pointPlacement: 'on',
                 color: '#97BBCD'
             )
         f.series(
                 name: 'Low Range',
                 data: [16,16,16,16,16,16,16,16,16],
                 pointPlacement: 'on',
                 marker: {
                     enabled:false
                 },
                 color: '#FFFFFF'
             )
       f.yAxis(
                 gridLineInterpolation: 'polygon',
                 lineWidth: 0,
                 min: 0
             )

       f.legend(
                 align: 'right',
                 verticalAlign: 'top',
                 y: 100,
                 layout: 'vertical'
             )
      f.tooltip(
        useHTML: true,
        headerFormat:'<b>{point.key}</b><table>',
        pointFormat: '<tr><td><b>Normal Range:</b></td><td>175-225</td></tr>,
                      <tr><td><b>Your Value:</b></td><td>184</td></tr>,
                      <tr><td><b>Plays Role In:</b></td><td>Sleep cycle, depression, anxiety,</br>carbohydrate cravings, PMS	</td></tr>',
        footerFormat: '</table>'
      
      )
       f.chart( polar: true, type: 'line')


    end
  end

  def list
  end
end
