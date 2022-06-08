@extends('layouts.user_type.auth')

@section('content')
    <div class="container-fluid py-4">
        <div class="card">
            <div class="card-header pb-0 px-3">
                <h6 class="mb-0">{{ __('Form Tambah Kendaraan') }}</h6>
            </div>
            <div class="card-body pt-4 p-3">
                <form action="{{ url('applyOrder') }}" method="POST" role="form text-left">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-control-label">{{ __('Name') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="text" placeholder="Name" id="number"
                                    name="name" value="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="user.phone" class="form-control-label">{{ __('Brand') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="text" placeholder="Brand"
                                        name="phone" >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="selTambang" class="form-control-label">{{ __('Carry') }}</label>
                                <select class="form-select" name="from" aria-label="Default select example">
                                    <option selected value="">{{ __('Pilih Muatan') }}</option>
                                        <option value="person">Person</option>
                                        <option value="material">Material</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label for="selTambang" class="form-control-label">{{ __('Pusat / Cabang') }}</label>
                                <select class="form-select" name="from" aria-label="Default select example">
                                    <option selected value="">{{ __('Pilih Tempat') }}</option>
                                        <option value="Pusat">Pusat</option>
                                        <option value="Cabang">Cabang</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <label for="about">{{ 'Description' }}</label>
                            <div class="@error('user.about') border border-danger rounded-3 @enderror">
                                <textarea class="form-control" id="about" rows="3" placeholder="Deskripsikan kendaraan" name="note">{{ auth()->user()->about_me }}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn bg-gradient-dark btn-md mt-4 mb-4">{{ __('Create') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection