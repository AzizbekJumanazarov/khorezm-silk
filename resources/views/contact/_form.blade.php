<div class="success-checkmark" style="display: none;">
    <div class="check-icon">
        <span class="icon-line line-tip"></span>
        <span class="icon-line line-long"></span>
        <div class="icon-circle"></div>
        <div class="icon-fix"></div>
    </div>
</div>
<form method="POST" class="form-is-ajax" name="feedback">
     @csrf
    <div class="row mt-4">
        <div class="col-lg-6">
            <div class="form-group mb-0">
                <input placeholder="@lang('Name')" type="text"
                       class="form-control form-control-lg input-rounded"
                       name="name"
                       aria-describedby="validation-feedback-name" />
                <div id="validation-feedback-name" class="invalid-feedback"></div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group mb-0">
                <input placeholder="@lang('E-mail')" type="text"
                       class="form-control form-control-lg input-rounded"
                       name="email"
                       aria-describedby="validation-feedback-email" />
                <div id="validation-feedback-email" class="invalid-feedback"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <textarea id="textarea"
                          class="form-control"
                          name="message"
                          placeholder="@lang('Write here')!"
                          aria-describedby="validation-feedback-message"></textarea>
                <div id="validation-feedback-message" class="invalid-feedback"></div>
            </div>
        </div>
    </div>
    <button>@lang('Submit')</button>
</form>