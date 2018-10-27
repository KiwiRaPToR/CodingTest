@extends('layouts.app')
<!-- the blade templating engine we’re extending the layout at resources/views/layouts/app.blade.php -->

@section('content')
<!-- define the content of our template which will be rendered in the content section of our app layout. -->

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif

            <div class="card">
                <div class="card-header">Burndown</div>

                <div class="card-body">
			

				
				<div id="container-burndown" style="max-width: 510px; height: 400px;"></div>
				<script>
				$(document).ready(function(){
					
				var doc = $(document);

				var dataset = {!! json_encode(array_flatten($data)) !!};
				var maxY = Math.max(...dataset);

				var chart = new Highcharts.Chart({
								chart: {
									renderTo: 'container-burndown'
								},
					title: {
					  text: 'Burndown Chart',
					  x: -10 //center
					},
					scrollbar: {
								barBackgroundColor: 'gray',
								barBorderRadius: 7,
								barBorderWidth: 0,
								buttonBackgroundColor: 'gray',
								buttonBorderWidth: 0,
								buttonBorderRadius: 7,
								trackBackgroundColor: 'none',
								trackBorderWidth: 1,
								trackBorderRadius: 8,
								trackBorderColor: '#CCC'
							},
					colors: ['blue', 'red'],
					plotOptions: {
					  line: {
						lineWidth: 3
					  },
					  tooltip: {
						hideDelay: 200
					  }
					},
				   
					xAxis: {title: {
						text: 'number of minutes ago'
						
					  },
					  categories: [60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]
					},
					yAxis: {
					  title: {
						text: 'Remaining work (tasks)'
						
					  },
							 type: 'linear',
							 max:maxY,
							 min:0,
							 tickInterval :1
					 
					},
					
					tooltip: {
					  valueSuffix: ' tasks remaining',
					  crosshairs: true,
					  shared: true
					},
					legend: {
					 layout: 'horizontal',
					  align: 'center',
					  verticalAlign: 'bottom',
					  borderWidth: 0
					},
					series: [{
					  name: 'Burn',
					  color: 'rgba(0,120,200,0.75)',
					  marker: {
						radius: 6
					  },
					  data: dataset
					}]
				  });
				  
				  setInterval(function() {
					//auto refresh logic
					// rnd param for cache busting
					 $.getJSON('/burndown/getBurndown?rnd'+Math.random(), function (data) {
						console.log(data);
						chart.series[0].setData(data,true); // redload and redraw
					});
				}, 1000 * 60 * 1); 
				});
</script>
				

                </div>
            </div>
        </div>
    </div>
</div>
@endsection