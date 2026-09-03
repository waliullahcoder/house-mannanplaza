@extends('admin.layouts.master')

@section('content')

<!-- Project section -->
<form action="{{ route('jamidari.prepare.add.individual') }}" method="GET">
    @csrf

    <div class="card noprint">
        <div class="card-body">

            <div class="row">


                <div class="col-md-4">
                    <select class="form-control select2" name="project" id="project">
                        <option value="">Select Project</option>

                        @foreach($projects as $project)
                        <option value="{{ $project->name }}" {{ $projectname == $project->name ? 'selected' : '' }}>
                            {{ $project->code }} ({{ $project->name }})
                        </option>
                        @endforeach
                    </select>
                </div>

                <div class="col-md-3 offset-md-4">
                    <button type="submit" class="btn btn-outline-info btn-lg buttonAddEdit float-right">
                        Search
                    </button>
                </div>
            </div>

        </div>
    </div>
</form>
<!-- Project section end-->

    <form action="{{ route($formLink) }}" method="POST">
        @csrf

        <div class="card noprint">
            <div class="custom-card-header">
                <div class="row">
                    <div class="col-md-8">
                        <h4 class="custom-card-title">{{ $title }}</h4>
                    </div>
                    <div class="col-md-4">
                        <a href="{{ route('service.charge.prepare') }}"
                            class="btn btn-outline-info btn-lg waves-effect search float-right"><i
                                class="fa fa-arrow-circle-left"></i>
                            Go Back</a>
                    </div>
                </div>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <label for="month">Month</label>
                        <select name="CMonth" class="form-control select2" id="month">
                            <option value="January">January</option>
                            <option value="February">February</option>
                            <option value="March">March</option>
                            <option value="April">April</option>
                            <option value="May">May</option>
                            <option value="June">June</option>
                            <option value="July">July</option>
                            <option value="August">August</option>
                            <option value="September">September</option>
                            <option value="October">October</option>
                            <option value="November">November</option>
                            <option value="December">December</option>
                        </select>
                    </div>

                    <div class="col-md-6">
                        <label for="year">Year</label>
                        <select name="CYear" class="form-control select2" id="year">
                            @for ($i = 2015; $i <= 2055; $i++)
                                <option value="{{ $i }}">{{ $i }}</option>
                            @endfor
                        </select>
                    </div>

                </div>
            </div>

            <div class="custom-card-footer">
                <div class="col-md-3 offset-md-9">
                    <button type="submit" class="btn-block btn-outline-info bg-none btn-lg buttonAddEdit float-right" style="background: none;
                                                                border: 1px solid;">Auto
                        Service Charge
                        Posting</button>
                </div>
            </div>
        </div>
    </form>

@endsection
