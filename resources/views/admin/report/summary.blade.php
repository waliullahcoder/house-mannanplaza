@extends('admin.layouts.masterIndex')

@section('card_body')
    <div class="card-body">
        {{-- <div align='center'>
            <font size='7' text-align='center' color='green' face='Comic sans MS'>This Page Is Now Under Construction</font>
        </div> --}}
    <div class="row align-items-end mb-3">

    <!-- Filter Buttons -->
    <div class="col-lg-3 col-md-12 mb-2">
        <label class="d-block">&nbsp;</label>

        <a href="{{ route('report.summary') }}"
            class="btn {{ request('type') == '' ? 'btn-primary' : 'btn-outline-primary' }}">
            All
        </a>

        <a href="{{ route('report.summary', ['type' => 'Sale']) }}"
            class="btn {{ request('type') == 'Sale' ? 'btn-success' : 'btn-outline-success' }}">
            Sale
        </a>

        <a href="{{ route('report.summary', ['type' => 'Rent']) }}"
            class="btn {{ request('type') == 'Rent' ? 'btn-info' : 'btn-outline-info' }}">
            Rent
        </a>
    </div>

    <form action="{{ route('report.summary') }}" method="GET" class="row col-lg-9 col-md-12 g-2">

        @if(request('type'))
            <input type="hidden" name="type" value="{{ request('type') }}">
        @endif

        <!-- Project -->
        <div class="col-lg-4 col-md-6">
            <label for="project">Project</label>
            <select class="form-control" name="project" id="project">
                <option value="">All Project</option>
                @foreach ($projects as $project)
                    <option value="{{ $project->name }}"
                        {{ request('project') == $project->name ? 'selected' : '' }}>
                        {{ $project->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <!-- Month -->
        <div class="col-lg-3 col-md-6">
            <label for="CMonth">Month</label>
            <select class="form-control" name="month" id="CMonth">
                <option value="">All Month</option>
                @foreach([
                    'January','February','March','April','May','June',
                    'July','August','September','October','November','December'
                ] as $month)
                    <option value="{{ $month }}"
                        {{ request('month') == $month ? 'selected' : '' }}>
                        {{ $month }}
                    </option>
                @endforeach
            </select>
        </div>

        <!-- Year -->
        <div class="col-lg-2 col-md-6">
            <label for="CYear">Year</label>
            <select class="form-control" name="year" id="CYear">
                <option value="" {{ request('year') == '' ? 'selected' : '' }}>
                    All Year
                </option>

                @for($i = 2000; $i <= 2055; $i++)
                    <option value="{{ $i }}"
                        {{ request('year') == $i ? 'selected' : '' }}>
                        {{ $i }}
                    </option>
                @endfor
            </select>
        </div>

        <!-- Search Button -->
        <div class="col-lg-3 col-md-6">
            <label class="d-block">&nbsp;</label>
            <button type="submit" class="btn btn-primary w-100">
                <i class="fas fa-search"></i> Search
            </button>
        </div>

    </form>

</div>
<div class="alert alert-info mb-3">
    <h5 class="mb-2">
        <i class="fas fa-filter"></i> Report Filters Data Showing
    </h5>

    <strong>Project:</strong>
    {{ $sproject ?: 'All Project' }}

    &nbsp; | &nbsp;

    <strong>Month:</strong>
    {{ $cmonth ?: 'All Month' }}

    &nbsp; | &nbsp;

    <strong>Year:</strong>
    {{ $cyear ?: 'All Year' }}

    @if(request('type'))
        &nbsp; | &nbsp;
        <strong>Type:</strong>
        {{ request('type') }}
    @endif
</div>
        <div class="table-responsive">
            @php
            $sl = 0;
            @endphp

            <table id="order1" class="table table-bordered table-striped" name="areaTable">
                <thead>
                    <tr>
                        <th>SL</th>
                        <th>Client Code</th>
                        <th>Client Name</th>
                        <th>Jomidari</th>
                        <th>Jomidari Due</th>
                        <th>Electricity</th>
                        <th>Electricity Due</th>
                        <th>Water</th>
                        <th>Water Due</th>
                        <th>Service Bill</th>
                        <th>Service Due</th>
                    </tr>
                </thead>
                <tbody id="">
                    @php
                    $i = 1;
                    @endphp
                    @foreach ($positions as $position)
                        <tr>
                            <td>{{ $i++ }}</td>
                            <td>
                                {{ $position->Code }}
                            </td>
                            <td>
                                {{ $position->Name }}
                            </td>
                            <td>
                                {{ $position->jomidari }}
                            </td>
                            <td>
                                {{ $position->jomidari }}
                            </td>
                            <td>
                                {{ $position->ebill }}
                            </td>
                            <td>
                                {{ $position->ebill }}
                            </td>
                            <td>
                                {{ $position->wbill }}
                            </td>
                            <td>
                                {{ $position->wbill }}
                            </td>

                           <?php

                            $total_sbill = App\ServiceChargeCollection::query();

                            if($cmonth){
                                $total_sbill->where('CMonth', $cmonth);
                            }

                            if($cyear){
                                $total_sbill->where('CYear', $cyear);
                            }

                            $total_sbill = $total_sbill->sum('Amount');


                            $total_sbill_due = App\ServiceChargeCollection::whereNull('ReceiveDate');

                            if($cmonth){
                                $total_sbill_due->where('CMonth', $cmonth);
                            }

                            if($cyear){
                                $total_sbill_due->where('CYear', $cyear);
                            }

                            $total_sbill_due = $total_sbill_due->sum('Amount');


                            $sbill = App\ServiceChargeCollection::where('Client_Code', $position->Code);

                            if($cmonth){
                                $sbill->where('CMonth', $cmonth);
                            }

                            if($cyear){
                                $sbill->where('CYear', $cyear);
                            }

                            $sbill = $sbill->sum('Amount');


                            $sbill_due = App\ServiceChargeCollection::where('Client_Code', $position->Code)
                                ->whereNull('ReceiveDate');

                            if($cmonth){
                                $sbill_due->where('CMonth', $cmonth);
                            }

                            if($cyear){
                                $sbill_due->where('CYear', $cyear);
                            }

                            $sbill_due = $sbill_due->sum('Amount');

                            ?>
                            <td>
                                {{ $sbill }}
                            </td>
                            <td>
                                {{ $sbill_due }}
                            </td>
                        </tr>
                    @endforeach
                   
                </tbody>
                 <tfoot>
                    <tr>
                        <th colspan="3" class="text-end"><b>Total</b></th>

                        <th><b>{{ $positions->sum('jomidari') }}</b></th>
                        <th><b>{{ $positions->sum('jomidari_due') }}</b></th>

                        <th><b>{{ $positions->sum('ebill') }}</b></th>
                        <th><b>{{ $positions->sum('ebill_due') }}</b></th>

                        <th><b>{{ $positions->sum('wbill') }}</b></th>
                        <th><b>{{ $positions->sum('wbill_due') }}</b></th>

                        <th><b>{{ $total_sbill??0 }}</b></th>
                        <th><b>{{ $total_sbill_due??0 }}</b></th>
                    </tr>
                    </tfoot>
            </table>

        </div>
    </div>
@endsection

@section('custom-js')
    <script>
        $(document).ready(function() {

            var dtb = $('#order1').DataTable({
                pageLength: 20,
                // "order": [
                //     [6, "asc"]
                // ]
            });

            var updateThis;

            //ajax delete code

            $('#order1 tbody').on('click', 'i.fa-trash', function() {

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });


                position = $(this).parent().data('id');
                var tableRow = this;
                swal({
                        title: "Are you sure?",
                        text: "You will not be able to recover this information!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel plx!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                    },
                    function(isConfirm) {
                        if (isConfirm) {
                            $.ajax({
                                type: "POST",
                                url: "{{ route('positionInformation.delete') }}",
                                data: {
                                    position: position
                                },

                                success: function(response) {
                                    if(response.status){
                                        swal({
                                            title: "<small class='text-success'>Success!</small>",
                                            type: "success",
                                            text: "Deleted Successfully!",
                                            timer: 1000,
                                            html: true,
                                        });
                                        $('.row_' + position).remove();
                                    }else{
                                        error = "Failed.";
                                        swal({
                                            title: "<small class='text-danger'>Error!</small>",
                                            type: "error",
                                            text: error,
                                            timer: 1000,
                                            html: true,
                                        });
                                    }

                                },
                                error: function(response) {
                                    error = "Failed.";
                                    swal({
                                        title: "<small class='text-danger'>Error!</small>",
                                        type: "error",
                                        text: error,
                                        timer: 1000,
                                        html: true,
                                    });
                                }
                            });
                        } else {
                            swal({
                                title: "Cancelled",
                                type: "error",
                                text: "This Data Is Safe :)",
                                timer: 1000,
                                html: true,
                            });
                        }
                    });
            });
        });

        //ajax status change code
        function statusChange(position) {
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                type: "post",
                url: "{{ route('positionInformation.status') }}",
                data: {
                    position: position
                },
                success: function(response) {
                    swal({
                        title: "<small class='text-success'>Success!</small>",
                        type: "success",
                        text: "Status Successfully Updated!",
                        timer: 1000,
                        html: true,
                    });
                },
                error: function(response) {
                    error = "Failed.";
                    swal({
                        title: "<small class='text-danger'>Error!</small>",
                        type: "error",
                        text: error,
                        timer: 2000,
                        html: true,
                    });
                }
            });
        }

    </script>
@endsection
