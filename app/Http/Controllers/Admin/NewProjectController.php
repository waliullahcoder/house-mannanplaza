<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\SetupRates;
use App\SetupProject;
class NewProjectController extends Controller
{
    public function index()
    {
        $title = "Project";
        $projects = SetupProject::orderBy('name','asc')->get();
        $ebillsetuprate=SetupRates::where('type','ebill')->first();
        $wbillsetuprate=SetupRates::where('type','wbill')->first();

    	return view('admin.newProject.index')->with(compact('title','projects','ebillsetuprate','wbillsetuprate'));
    }

    public function add()
    {
    	$title = "New Project";
    	$formLink = "newProject.save";
    	$buttonName = "Save";

    	return view('admin.newProject.add')->with(compact('title','formLink','buttonName'));
    }

     public function save(Request $request)
        {
            $request->validate([
                'code'       => 'required|max:100',
                'name'       => 'required|max:255',
                'ebill_rate' => 'nullable|numeric',
                'wbill_rate' => 'nullable|numeric',
                'contact'    => 'nullable|max:100',
                'address'    => 'nullable|max:500',
            ]);

            SetupProject::create([
                'code'       => $request->code,
                'name'       => $request->name,
                'ebill_rate' => $request->ebill_rate,
                'wbill_rate' => $request->wbill_rate,
                'contact'    => $request->contact,
                'address'    => $request->address,
            ]);

            return redirect()
                ->route('newProject.index')
                ->with('success', 'Project created successfully.');
        }

    public function edit($id)
    {
        $title = "Edit Project";
        $formLink = "newProject.update"; // edit নয়, update হবে
        $buttonName = "Update";

        $project = SetupProject::findOrFail($id);
        $ebillsetuprate=SetupRates::where('type','ebill')->first();
        $wbillsetuprate=SetupRates::where('type','wbill')->first();
        return view('admin.newProject.edit', compact(
            'title',
            'formLink',
            'buttonName',
            'project',
            'ebillsetuprate',
            'wbillsetuprate'
        ));
    }

    public function update(Request $request)
    {
        $request->validate([
            'code'       => 'required|max:100',
            'name'       => 'required|max:255',
            'ebill_rate' => 'nullable|numeric',
            'wbill_rate' => 'nullable|numeric',
            'contact'    => 'nullable|max:100',
            'address'    => 'nullable|max:500',
        ]);

        $project = SetupProject::findOrFail($request->id);

        $project->update([
            'code'       => $request->code,
            'name'       => $request->name,
            'ebill_rate' => $request->ebill_rate,
            'wbill_rate' => $request->wbill_rate,
            'contact'    => $request->contact,
            'address'    => $request->address,
        ]);

        $ebillrate = SetupRates::where('type','ebill')->first();
        $ebillrate->update([
            'rate' => $request->ebill_rate,
        ]);

        $wbillrate = SetupRates::where('type','wbill')->first();
        $wbillrate->update([
            'rate' => $request->wbill_rate,
        ]);

        return redirect()
            ->route('newProject.index')
            ->with('success', 'Project updated successfully.');
    }

   
}
