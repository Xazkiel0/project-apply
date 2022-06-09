@extends('layouts.user_type.auth')

@section('content')
    <div class="container-fluid py-4">
        <div class="card">
            <div class="card-header pb-0 px-3">
                <h6 class="mb-0">{{ __('Form Pencatatan Keperluan') }}</h6>
            </div>
            <div class="card-body pt-4 p-3">
                <form action="{{ url('pengeluaran') }}" method="POST" role="form text-left">
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-control-label">{{ __('ID Order') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="text"
                                        placeholder="ID Order (Kosong untuk Pengeluaran Servis)" id="number"
                                        name="order_id" value="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="selTambang" class="form-control-label">{{ __('Type') }}</label>
                                <select class="form-select" name="carry" aria-label="Default select example">
                                    <option selected value="">{{ __('Pilih Tipe Pengeluaran') }}</option>
                                    <option value="repair">Servis</option>
                                    <option value="fuel">BBM</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="form-control-label">{{ __('Money Spent') }}</label>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="number" placeholder="Jumlah Pengeluaran"
                                        name="spend">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label class="form-control-label">{{ __('Fuel') }}</label>
                                <p class="ms-1 text-secondary text-xs font-weight-bolder opacity-7">* Input dalam satuan mililiter</p>
                                <div class="@error('user.phone') border border-danger rounded-3 @enderror">
                                    <input class="form-control" type="number" placeholder="Mililiter" name="fuel">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label for="about">{{ 'Note' }}</label>
                            <div class="@error('user.about') border border-danger rounded-3 @enderror">
                                <textarea class="form-control" id="about" rows="3" placeholder="Catatan" name="note"></textarea>
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
