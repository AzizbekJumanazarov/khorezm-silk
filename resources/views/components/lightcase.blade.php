@push('styles')
    <link rel="stylesheet" href="{{ asset('vendor/plugins/lightcase/css/lightcase.css') }}" />
@endpush
@push('scripts')
    <script src="{{ asset('vendor/plugins/lightcase/js/lightcase.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('.showcase').lightcase();
        });
    </script>
@endpush