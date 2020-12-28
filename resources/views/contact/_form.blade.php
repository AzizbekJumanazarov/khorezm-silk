<form method="POST">
     @csrf
    <textarea id="textarea" name="message" placeholder="@lang('Write here')!"></textarea>
    <button >@lang('Submit')</button>
</form>