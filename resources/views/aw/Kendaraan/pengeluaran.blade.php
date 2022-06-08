@extends('layouts.user_type.auth')

@section('content')

  <main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <div class="d-flex flex-row justify-content-between">
                <div>
                  <h6>Pengeluaran Table</h6>
                </div>
                <a href="#" class="btn bg-gradient-primary btn-sm mb-0" type="button">+&nbsp; Tambah</a>
              </div>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Kendaraan</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Driver</th>
                        <th class="text-uppercase text-secondary text-center text-xxs font-weight-bolder opacity-7 ps-2">Type</th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Note</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Fuel</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Spend</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date Created</th>
                      <th class="text-secondary opacity-7"></th>
                    </tr>
                  </thead>
                  <tbody>
                      @foreach ($data as $d)
                      <tr>
                          <td>
                              <h6 class="mb-0 text-sm text-center">{{$loop->iteration}}</h6>
                            </td>
                            <td>
                              <div class="d-flex px-2 py-1">
                                <div class="d-flex flex-column justify-content-center">
                                  <h6 class="mb-0 text-sm">{{$d->order->vehicle->name}}</h6>
                                  <p class="text-xs text-secondary mb-0">{{$d->order->vehicle->brand}}</p>
                                </div>
                              </div>
                            </td>
                            <td>
                              <p class="text-xs font-weight-semibold mb-0">{{$d->order->driver->name}}</p>
                            </td>
                            <td>
                              <h6 class="mb-0 text-sm text-center">{{$d->type}}</h6>
                            </td>
                            <td>
                              <p class="text-xs font-weight-semibold mb-0">{{$d->note}}</p>
                            </td>
                        <td>
                          <p class="text-xs font-weight-semibold mb-0">{{$d->fuel}}</p>
                        </td>
                        <td>
                          <p class="text-xs text-center font-weight-semibold mb-0">{{$d->spend}}</p>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">{{date('Y-m-d',strtotime($d->created_at))}}</span>
                        </td>
                        <td class="align-middle">
                          <a href="javascript:;" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                            Edit
                          </a>|
                          <a href="javascript:;" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user">
                            Delete
                          </a>
                        </td>
                      </tr>
                      @endforeach
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  
  @endsection
