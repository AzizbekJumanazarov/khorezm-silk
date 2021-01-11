<!-- Popup Callback -->
<div class="modal fade" id="callback-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-5 image-left">
                        <img src="{{ asset('img/callback-girl.png') }}">
                    </div>
                    <div class="col-lg-7 right-main-form">
                        <h3>@lang('Contact us!')</h3>
                        <div class="success-checkmark">
                            <div class="check-icon">
                                <span class="icon-line line-tip"></span>
                                <span class="icon-line line-long"></span>
                                <div class="icon-circle"></div>
                                <div class="icon-fix"></div>
                            </div>
                        </div>
                        <form action="{{ route('feedback.create') }}" class="form-is-ajax" name="callback" method="POST">
                            @csrf
                            <div class="form-group">
                                <input autocomplete="off" name="name" type="text"
                                       placeholder="@lang('Your name')"
                                       aria-describedby="validation-callback-name"
                                       class="form-control form-control-lg input-rounded" />
                                <div id="validation-callback-name" class="invalid-feedback"></div>
                            </div>
                            <div class="form-group">
                                <input autocomplete="off" name="phone" type="tel"
                                       placeholder="@lang('Phone number')"
                                       aria-describedby="validation-callback-phone"
                                       class="form-control form-control-lg input-rounded" />
                                <div id="validation-callback-phone" class="invalid-feedback"></div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg btn-block input-rounded">
                                @lang('Send request')
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>