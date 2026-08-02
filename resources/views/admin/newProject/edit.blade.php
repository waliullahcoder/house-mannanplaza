@extends('admin.layouts.masterAddEdit')

@section('card_body')
<div class="card-body">

    <div class="row">

        <div class="col-md-6">
            <label>Project Code <span class="text-danger">*</span></label>
            <div class="form-group">
                <input type="text"
                       class="form-control @error('code') is-invalid @enderror"
                       name="code"
                       placeholder="Project Code"
                       value="{{ old('code', $project->code ?? '') }}">

                @error('code')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>
<input type="hidden" name="id" value="{{ $project->id }}">
        <div class="col-md-6">
            <label>Project Name <span class="text-danger">*</span></label>
            <div class="form-group">
                <input type="text"
                       class="form-control @error('name') is-invalid @enderror"
                       name="name"
                       placeholder="Project Name"
                       value="{{ old('name', $project->name ?? '') }}">

                @error('name')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>

    </div>


    <div class="row">

        <div class="col-md-6">
            <label>Ebill Rate (Tk.)</label>
            <div class="form-group">
                <input type="number"
                       step="0.01"
                       class="form-control @error('ebill_rate') is-invalid @enderror"
                       name="ebill_rate"
                       placeholder="Enter Ebill Rate"
                       value="{{ old('ebill_rate', $ebillsetuprate->rate ?? '') }}">

                @error('ebill_rate')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <label>Wbill Rate (Tk.)</label>
            <div class="form-group">
                <input type="number"
                       step="0.01"
                       class="form-control @error('wbill_rate') is-invalid @enderror"
                       name="wbill_rate"
                       placeholder="Enter Wbill Rate"
                       value="{{ old('wbill_rate', $wbillsetuprate->rate ?? '') }}">

                @error('wbill_rate')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>

    </div>


    <div class="row">

        <div class="col-md-6">
            <label>Contact</label>
            <div class="form-group">
                <input type="text"
                       class="form-control @error('contact') is-invalid @enderror"
                       name="contact"
                       placeholder="Contact Number"
                       value="{{ old('contact', $project->contact ?? '') }}">

                @error('contact')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="col-md-6">
            <label>Address</label>
            <div class="form-group">
                <textarea
                    class="form-control @error('address') is-invalid @enderror"
                    name="address"
                    rows="3"
                    placeholder="Project Address">{{ old('address', $project->address ?? '') }}</textarea>

                @error('address')
                    <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
        </div>

    </div>

</div>
@endsection