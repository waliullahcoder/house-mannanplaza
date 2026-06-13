
@php
    use App\HelperClass;
@endphp

<style>
.noprint{margin-bottom:15px}

.bill-page{
    width:210mm;
    min-height:297mm;
    margin:0 auto;
    background:#fff;
    padding:12px;
    border:1px solid #d9dddd
}

.bill-copy{
    /* width:210mm; */
    /* height:100mm; */
    /* padding:10mm 0 7mm 20mm;  */
    box-sizing:border-box;
    font-family:Arial, sans-serif;
    color:#111;
    position:relative;
    overflow:hidden;
    margin-top:15px;
}

.copy-divider{
    border:0;
    border-top:1px dashed #000;
    margin:0;
}

.bill-title{
    width:100%;
    text-align:center;
    margin-bottom:8mm;
}

.bill-title h3{
    margin:0 0 4px;
    font-size:22px;
    font-weight:700;
}

.bill-title p{
    margin:2px 0;
    font-size:17px;
    font-weight:700;
}

.advance-text{
    text-align:right;
    font-size:15px;
    font-weight:700;
    margin-top:-6mm;
    margin-bottom:1mm;
}

.main-table{
    width:100%;
    border-collapse:collapse;
    table-layout:fixed;
}

.main-table td{
    vertical-align:top;
}

.info-table{
    width:100%;
    border-collapse:collapse;
    font-size:16px;
}

.info-table td{
    padding:3px 2px;
    line-height:1.25;
}

.label{
    font-weight:700;
    white-space:nowrap;
    width:42%;
}

.colon{
    width:12px;
    text-align:center;
    /* font-weight:700; */
}

.value{
    font-weight:100;
}

.amount-box{
    border:2px solid #111;
    display:inline-block;
    min-width:105px;
    padding:3px 8px;
    font-weight:700;
    text-align:left;
}

.inword{
    margin-top:0mm;
    font-size:16px;
    line-height:1.4;
}

.bottom-table{
    width:100%;
    margin-top:0mm;
    font-size:15px;
    border-collapse:collapse;
}

.signature{
    text-align:center;
    font-size:17px;
    font-weight:700;
    padding-top:18px;
}

.signature-img{
    height:45px;
    width:150px;
    object-fit:contain;
    display:block;
    margin:0 auto -5px;
}

.signature-line{
    width:155px;
    border-bottom:2px solid #111;
    margin:0 auto 5px;
}

@media print{
    @page{size:A4 portrait;margin:0}
    body{margin:0;background:#fff}
    .noprint{display:none!important}
    .bill-page{
        width:250mm;
        /* padding:10mm 0 7mm 5mm; */
        
        margin:0
    }
    .bill-page{
    border:none;
    }
    .bill-copy{page-break-inside:avoid}
}
</style>

<div class="mt-4 noprint">
    <div class="row">
        <div class="col-md-2 offset-md-10 text-right">
            <button class="btn btn-info" onclick="window.print()">Print</button>
        </div>
		<div class="row">
        <div class="col-md-2 offset-md-10 text-right">
            <a  class="btn btn-info" href="{{route('service.charge.prepare')}}" style="padding-left:80%; font-weight:bold;font-decoration:none;font-size:28px">Back</a>
        </div>
    </div>
    </div>
</div>

<div class="bill-page">

@if(count($data->bills) > 0)

@foreach(array_slice($data->bills, 0, 1) as $bill)

@php
    $electricBill = isset($electbill) ? $electbill->Amount : 0;
    $waterBill    = isset($waterbill) ? $waterbill->Amount : 0;

    $serviceBill = 0;
    if(isset($sbills)){
        foreach($sbills as $sb){
            $serviceBill += $sb->Amount;
        }
    }

    $houseRent = $client->Agg0ne ?? 0;

    $grandTotal = $houseRent + $electricBill + $waterBill + $serviceBill;
    $payMonth = isset($bill[0])
        ? date('F, Y', strtotime($bill[0]->billing_month))
        : date('F, Y');
@endphp

@foreach($data->copies as $copy)

<div class="bill-copy">

    <div class="bill-title">
        <h3>Rent & Utility Bill</h3>
        <p>Project Name : {{ $client->Project?? '-' }}</p>
        <p>Pay Circle : {{ $payMonth }}</p>
    </div>

    <div class="advance-text">
        Monthly Deduct from Advance : 0.00
    </div>

    <table class="main-table">
        <tr>
            <td style="width:50%; padding-right:8mm;">
                <table class="info-table">
                    <tr>
                        <td class="label">House No</td>
                        <td class="colon">:</td>
                        <td class="value">{{ $client->Unit}}</td>
                    </tr>
                    <tr>
                        <td class="label">Client Name</td>
                        <td class="colon">:</td>
                        <td class="value">{{ $clientname }}</td>
                    </tr>
                    <tr>
                        <td class="label">House Rent</td>
                        <td class="colon">:</td>
                        <td class="value">{{ number_format($houseRent, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="label">Gas Bill and Other Bill</td>
                        <td class="colon">:</td>
                        <td class="value">{{ number_format($serviceBill, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="label">Total Bill</td>
                        <td class="colon">:</td>
                        <td class="value">
                            <span class="amount-box">{{ number_format($grandTotal, 2) }}</span>
                        </td>
                    </tr>
                </table>
            </td>

            <td style="width:25%; padding-right:7mm;">
                <table class="info-table">
                    <tr>
                        <td class="label">Client Code</td>
                        <td class="colon">:</td>
                        <td class="value">{{ $code }}</td>
                    </tr>
                    <tr>
                        <td class="label">E.P Unit</td>
                        <td class="colon">:</td>
                        <td class="value">{{ isset($electbill) ? $electbill->PreviousUnit : 0 }}</td>
                    </tr>
                    <tr>
                        <td class="label">Total Unit</td>
                        <td class="colon">:</td>
                        <td class="value">{{ isset($electbill) ? $electbill->UsesUnit : 0 }}</td>
                    </tr>
                    <tr>
                        <td class="label">W.P Unit</td>
                        <td class="colon">:</td>
                        <td class="value">{{ isset($waterbill) ? $waterbill->PreviousUnit : 0 }}</td>
                    </tr>
                    <tr>
                        <td class="label">Total Unit</td>
                        <td class="colon">:</td>
                        <td class="value">{{ isset($waterbill) ? $waterbill->UsesUnit : 0 }}</td>
                    </tr>
                </table>
            </td>

            <td style="width:35%;">
                <table class="info-table">
                    <tr>
                        <td class="label">Mobile</td>
                        <td class="colon">:</td>
                        <td class="value">{{ $bill['tenant']->Mobile ?? $bill['tenant']->Phone ?? '' }}</td>
                    </tr>
                    <tr>
                        <td class="label">E.C Unit</td>
                        <td class="colon">:</td>
                        <td class="value">{{ isset($electbill) ? $electbill->LastUnit : 0 }}</td>
                    </tr>
                    <tr>
                        <td class="label">Bill Amount</td>
                        <td class="colon">:</td>
                        <td class="value">{{ number_format($electricBill, 2) }}</td>
                    </tr>
                    <tr>
                        <td class="label">W.C Unit</td>
                        <td class="colon">:</td>
                        <td class="value">{{ isset($waterbill) ? $waterbill->LastUnit : 0 }}</td>
                    </tr>
                    <tr>
                        <td class="label">Bill Amount</td>
                        <td class="colon">:</td>
                        <td class="value">{{ number_format($waterBill, 2) }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <div class="inword">
        <strong>In a Word</strong>
        &nbsp; : &nbsp;
        {{ ucfirst(HelperClass::numberToWords($grandTotal)) }} taka only.
    </div>

    <table class="bottom-table">
        <tr>
            <td style="width:35%;">
                <em>Print Date</em>
                &nbsp; {{ date('d-F-Y') }}
            </td>
            <td style="width:30%;">
                <em>Print Time</em>
                &nbsp; {{ date('h:i:s a') }}
            </td>
            <td style="width:35%;" class="signature">
                <!-- <img class="signature-img" src="{{ asset('public/elite-admin/assets/images/signature.png') }}" alt="Signature"> -->
                <div class="signature-line"></div>
                Authorize Signature
            </td>
        </tr>
    </table>

</div>

@if(!$loop->last)
    <hr class="copy-divider">
@endif

@endforeach
@endforeach

@else
    <h2 class="text-center mt-4">No Data Found</h2>
@endif

</div>