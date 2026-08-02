@extends('admin.layouts.masterIndex')

@section('card_body')
    <div class="card-body">
       

        <div class="table-responsive">
            @php
                $sl = 0;
            @endphp

            <table id="dataTable" class="table table-bordered table-striped"  name="areaTable">
                <thead>
                    <tr>
                        <th>Project ID</th>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Ebill Rate</th>
                        <th>Wbill Rate</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody id="">
                	@foreach ($projects as $project)
                		<tr>
                			<td>{{ $project->id}}</td>
                			<td>{{ $project->code }}</td>
                            <td>{{ $project->name }}</td>
                			<td>{{ $ebillsetuprate->rate }} Tk.</td>
                            <td>{{ $wbillsetuprate->rate }} Tk.</td>
                            <td>{{ $project->contact }}</td>
                            <td>{{ $project->address }}</td>
                            <td><a href="{{ route('newProject.edit',$project->id) }}" data-toggle="tooltip" data-original-title="Edit"> <i class="fas fa-edit text-inverse m-r-10"></i> </a></td>
                		</tr>
                	@endforeach 
                </tbody>
            </table>
        </div>
    </div>	
@endsection
