<?php 
namespace App\Exports;

use App\Models\OrderVeh;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class LaporanExport implements FromView
{
    public function view(): View
    {
        $data = OrderVeh::all();
        return view('excel', compact('data'));
    }
}