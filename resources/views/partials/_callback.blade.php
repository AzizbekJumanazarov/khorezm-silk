<div class="pop-up">
    <form method="POST" action="{{ route('contact.send') }}">
        @csrf
        <div class="form-small-row">
            <div class="form-name-input">
                <label for="name">@lang('Name')</label>
                <div>
                    <input name="name" required type="text" id="name" placeholder="@lang('Your name')">
                </div>
            </div>
            <div class="form-email-input">
                <label for="email">@lang('E-mail')</label>
                <div>
                    <input name="email" required type="email" id="email" placeholder="@lang('Your e-mail')">
                </div>
            </div>
        </div>
        <div class="row textarea_row_2">
            <div class="textarea-input">
                <label for="textarea">@lang('Message')</label>
                <div>
                    <textarea id="textarea" name="message" required placeholder="@lang('Type here')..."></textarea>
                </div>
            </div>
        </div>
        <div class="row">
            <button class="submit-btn">
                <span><div>@lang('Submit')</div></span>
            </button>
        </div>
        <div class="close-btn">
            <div class="close-btn-x"></div>
        </div>
    </form>
</div>