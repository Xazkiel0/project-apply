@extends('layouts.user_type.auth')

@section('content')
    <div class="container-fluid py-4">
        <div class="card">
            <div class="card-header pb-0 px-3">
                <h6 class="mb-0">{{ __('Form Tambah Pegawai') }}</h6>
            </div>
            <div class="card-body pt-4 p-3">
                <form action="{{ url('pegawai') }}" method="POST" role="form text-left">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-control-label">{{ __('Name') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="text" placeholder="Your name" id="number"
                                    name="name" value="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="user.phone" class="form-control-label">{{ __('No Hp Pengemudi') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="tel" placeholder="40770888444" id="number"
                                        name="phone" value="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label class="form-control-label">{{ __('Address') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="text" placeholder="Your Address" id="number"
                                    name="address" value="">
                                </div>
                            </div>
                        </div>
                            <div class="col-md-2">
                            <div class="form-group">
                                <label for="selTambang" class="form-control-label">{{ __('Tempat') }}</label>
                                <select class="form-select" name="from" aria-label="Default select example">
                                    <option selected value="">{{ __('Pilih Tempat') }}</option>
                                        <option value="Pusat">Pusat</option>
                                        <option value="Cabang">Cabang</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn bg-gradient-dark btn-md mt-4 mb-4">{{ __('Create') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection