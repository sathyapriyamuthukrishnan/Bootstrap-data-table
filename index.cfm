<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">

<cfoutput>
	<div class="container mt-5 pt-5">
		<h4 class="text-success text-center">Data table using jQuery</h4>
		<table id="example" class="table table-striped table-bordered">
			<thead>
				<tr>
					<cfloop from="1" to="3" index="item">
						<th>Col#item#</th>
					</cfloop>
				</tr>
			</thead>
			<tbody>
				<cfloop from="1" to="20" index="item">
					<tr>
						<td>#item#</td>
						<td>#item#</td>
						<td>#item#</td>
					</tr>
				</cfloop>
			</tbody>
		</table>

		<script>
			$(document).ready(function () {
				var $showEntry = 5;
				$('##example').DataTable({
					pageLength : $showEntry,
					order: [0, 'desc']
				});

				$('div.dataTables_wrapper div.dataTables_length select').prepend( `<option value="${$showEntry}" selected> ${$showEntry} </option>` );
			});
		</script>
	</div>
</cfoutput>