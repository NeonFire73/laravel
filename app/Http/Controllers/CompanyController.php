<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function index()
    {
        $companies = Company::all();
        return view('company.index', compact('companies'));
    }

    public function create()
    {
        return view('company.create');
    }

    public function store()
    {
        $data =request()->validate([
            'name' => 'string|required',
            'site' => 'string|required',
            'country' => 'string|required',
            'founder' => 'string|required',
        ]);
        Company::create($data);
        return redirect('/companies');
    }

    public function show(Company $company){
        return view('company.show', compact('company'));
    }

    public function edit(Company $company){
        return view('company.edit', compact('company'));
    }

    public function update(Company $company){
        $data = request()->validate([
            'name' => 'string|required',
            'site' => 'string|required',
            'country' => 'string|required',
            'founder' => 'string|required',
        ]);
        $company->update($data);
        return redirect()->route('company.show', $company->id);

    }

    public function destroy(Company $company){
        $company->delete();
        return redirect()->route("company.index");
    }


}
