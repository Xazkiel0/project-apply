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
                  <h6>Pesanan Table</h6>
                </div>
                <a href="#" class="btn bg-gradient-primary btn-sm mb-0" type="button">Export Excel</a>
              </div>
              
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Driver Name</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Approver Name</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Vehicle Name</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Progress</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date Created</th>
                      <th class="text-secondary opacity-7">Action</th>
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
                              <h6 class="mb-0 text-sm">{{$d->driver->name}}</h6>
                            </div>
                          </div>
                        </td>
                        <td>
                          <div class="d-flex px-2 py-1">
                            <div class="d-flex flex-column justify-content-center">
                              <h6 class="mb-0 text-sm">{{$d->approver->name}}</h6>
                            </div>
                          </div>
                        </td>
                        <td>
                          <div class="d-flex px-2 py-1">
                            <div class="d-flex flex-column justify-content-center">
                              <h6 class="mb-0 text-sm">{{$d->vehicle->name}}</h6>
                            </div>
                          </div>
                        </td>
                        <td class="align-middle text-center text-sm">
                          <span class="text-secondary text-xs font-weight-bold">{{$d->progress}}</span>
                        </td>
                        <td class="align-middle text-center">
                          <span class="text-secondary text-xs font-weight-bold">{{date('Y-m-d',strtotime($d->created_at))}}</span>
                        </td>
                        <td class="align-middle">
                          @if ($d->progress == 0 && auth()->user()->role == "Approver")
                          <a href="{{'addProgress/'.$d->id}}" class="badge badge-sm bg-gradient-success">Apply</a>
                          <a href="{{'decline/'.$d->id}}" class="badge badge-sm bg-gradient-danger">Decline</a>
                          @elseif ($d->progress == 1 && auth()->user()->role == "Manager")
                          <a href="{{'addProgress/'.$d->id}}" class="badge badge-sm bg-gradient-success">Apply</a>
                          <a href="{{'decline/'.$d->id}}" class="badge badge-sm bg-gradient-danger">Decline</a>
                          @elseif ($d->progress == 2)
                          <span class="text-secondary text-xs font-weight-bold">Selesai</span>
                          @elseif ($d->progress < 0)
                          <span class="text-secondary text-xs font-weight-bold">Ditolak</span>
                          @else
                          <span class="text-secondary text-xs font-weight-bold">Menunggu</span>
                          @endif
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
