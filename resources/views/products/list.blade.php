@extends('layouts.app')
@section('menu-id'){{"gallery-header"}}@endsection 
@push('styles')
    <link rel="stylesheet" href="css/products.css?v=0.1" />
@endpush

@section('content')
<main id="products-main">
      @foreach($products as $index => $product)
      <div class="{{$product->class_one}}">
        <div class="col-lg-5">
          <div class="products-page-title">{{ $product->t('name') }}</div>
          <div class="products-page-text">
             {{ $product->t('description') }}
          </div>
        </div>
        <div class="col-lg-6">
          <img class="{{$product->class_two}}" src="{{ Voyager::image($product->image) }}" />
        </div>
      </div>
      @endforeach
      <!-- <div class="products-custom-row row">
        <div class="col-md-5">
          <div class="products-page-title">Постельное белье</div>
          <div class="products-page-text">
            Знали ли вы, что приблизительно терть жизни мы проводим во сне? Это
            озночает, что большую часть времени мы проводим в кровати,
            закутавшись в постельное белье. Постельное белье имеет очень большое
            значение для продуктивного и комфортного сна.
            <br />
            <br />
            Все наши постельное белье изготавливается из высококачественных
            мягких материалов радичного типа плетения, которые обеспечивают
            оптимальную циркуляцию воздуха и впитывают влагу, обеспечивая
            комфортный сон.
          </div>
        </div>
        <div class="col-md-6">
          <img class="products-page-img-two" src="img/products-img-2.jpg" />
        </div>
      </div>
      <div class="products-custom-row-three row">
        <div class="col-md-5">
          <div class="products-page-title">Салфетки подставки</div>
          <div class="products-page-text">
            Когда в дело вступают горячие тарелки, острые ножи и пролитые
            напитки, обедонному столу приходится несладко.
            <br />
            <br />
            Сервировочные салфетки под приборы сохранят безупречный вид вашего
            стола на долгие годы.
            <br />
            <br />
            Отярких до плетеных салфеток ручной работы - у нас вы найдете
            подходящий вариантТеперь каждый прием пищи станет веселее, а мебель
            будет под защитой.
          </div>
        </div>
        <div class="col-md-6">
          <img class="products-page-img-three" src="img/products-img-3.jpg" />
        </div>
      </div>
      <div class="products-custom-row-four row">
        <div class="col-md-5">
          <div class="products-page-title">Фартуки</div>
          <div class="products-page-text">
            Приготовление пищи - это почти всегда весело, если только еда не
            начала выкипать из кастрюли.
            <br />
            <br />
            Фартуки защитят вашу одежду от брызг и пятен, и вам не придется
            менять наряд перед вечеринкой.
            <br />
            <br />
            Мы предлагаем широкий выбор поварских фартуков, включая модели с
            карманами, чтобы было куда положить мерную ложку во время готовки.
          </div>
        </div>
        <div class="col-md-6">
          <img class="products-page-img-four" src="img/products-img-4.jpg" />
        </div>
      </div>
      <div class="products-custom-row-five row">
        <div class="col-md-5">
          <div class="products-page-title">Прихватки</div>
          <div class="products-page-text">
            Прихватки для кухни - простые и незатейливые поделки. Изначально они
            выполняли только одну функцию: берегли руки хозяек от ожогов.
            <br />
            <br />
            Горячие кастрюли, сковородки и формы в духовке, ковшики на огне - со
            всей этой утварью не справиться, если под рукой нет толстой
            тряпочки-прихватки. Вот только эти полезные мелочи вполне способны
            на большее: например, украсить кухонный интерьер и внести в него
            нотки уюта.
          </div>
        </div>
        <div class="col-md-6">
          <img class="products-page-img-five" src="img/products-img-5.jpg" />
        </div>
      </div>
      <div class="products-custom-row-six row">
        <div class="col-md-5">
          <div class="products-page-title">Рукавицы</div>
          <div class="products-page-text">
            Варежки более эффективно сохраняют тепло рук, чем перчатки, так как
            по отдельности пальцы быстро замерзают.

            <br />
            <br />
            Обычно вяжутся из шерсти, но могут быть изготовлены из кожи,
            трикотажа и других материалов и их комбинаций. Варежки часто
            являются неотъемлемой частью национальных костюмов северных народов.
          </div>
        </div>
        <div class="col-md-6">
          <img class="products-page-img-six" src="img/products-img-6.jpg" />
        </div>
      </div> -->

      <!-- dots bg -->
      <img src="/img/long-dots-bg.jpg" class="pro-dots-one" />
      <img src="/img/thin-dots-bg.jpg" class="pro-dots-two" />
      <img src="/img/thin-dots-bg.jpg" class="pro-dots-three" />
      <img src="/img/long-dots-bg.jpg" class="pro-dots-four" />
      <img src="/img/long-dots-bg.jpg" class="pro-dots-five" />
      <!-- dots bg end -->
    </main>
@endsection