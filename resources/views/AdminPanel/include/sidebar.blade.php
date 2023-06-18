@php
    $prefix =Request::route()->getPrefix();
    $route =Route::current()->getname();
@endphp


<aside class="main-sidebar sidebar-light-lightblue text-dark elevation-4" >


    <!-- Sidebar -->
    <div class="sidebar">

        <a href="" class="brand-link">
            <img src="{{ asset('Admin/image/genarel/632e9190ec088.png') }}" width="150PX" height="30PX;" class="" alt="User Image">

        </a>

        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="{{route('admin.dashboard')}}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>

                <li class="nav-header">Sections</li>


                <li class="nav-item

                    {{($route == 'admin.order')?'menu-open': ''}}
                    {{($route == 'cancel.order-list')?'menu-open': ''}}
                    {{($route == 'confirm.order-list')?'menu-open': ''}}
                    {{($route == 'success.order-list')?'menu-open': ''}}
                    {{($route == 'panding.order-list')?'menu-open': ''}}
                    {{($route == 'order.approve')?'menu-open': ''}}
                    {{($route == 'order.success')?'menu-open': ''}}
                    {{($route == 'order.cancel')?'menu-open': ''}}
                ">
                    <a href="#" class="nav-link
                    {{($route == 'admin.order')?'active': ''}}
                    {{($route == 'cancel.order-list')?'active': ''}}
                    {{($route == 'confirm.order-list')?'active': ''}}
                    {{($route == 'success.order-list')?'active': ''}}
                    {{($route == 'panding.order-list')?'active': ''}}
                    {{($route == 'order.approve')?'active': ''}}
                    {{($route == 'order.success')?'active': ''}}
                    {{($route == 'order.cancel')?'active': ''}}
                    ">
                        <i style="color:#11183C" class="nav-icon fa fa-shopping-cart"></i>
                        <p style="color:#11183C">
                            Order
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.order') }}" class="nav-link pl-3 {{($route == 'admin.order')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right"></i>
                                <p style="color:{{ (request()->is('admin/order/list')) ? '#FF6666' : '' }}">Order List</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('panding.order-list') }}" class="nav-link pl-3 {{($route == 'panding.order-list')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right"></i>
                                <p style="color:{{ (request()->is('admin/order/pending-order-list')) ? '#FF6666' : '' }}">Pending Order List</p>
                            </a>
                            <a href="{{ route('confirm.order-list') }}" class="nav-link pl-3 {{($route == 'confirm.order-list')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right"></i>
                                <p class="color:{{ (request()->is('admin/order/confirm-order-list')) ? '#FF6666' : '' }}">Confiram Order List</p>
                            </a>

                            <a href="{{ route('success.order-list') }}" class="nav-link pl-3 {{($route == 'success.order-list')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right"></i>
                                <p class="color:{{ (request()->is('admin/order/success-order-list')) ? '#FF6666' : '' }}">Success Order List</p>
                            </a>
                            <a href="{{ route('cancel.order-list') }}" class="nav-link pl-3 {{($route == 'cancel.order-list')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right"></i>
                                <p style="color:{{ (request()->is('admin/order/cancel-order-list')) ? '#FF6666' : '' }}">Cancel Order List</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item
                    {{($route == 'admin.category')?'menu-open': ''}}
                    {{($route == 'admin.subcategory')?'menu-open': ''}}
                    {{($route == 'admin.brand')?'menu-open': ''}}
                    {{($route == 'add_category')?'menu-open': ''}}
                    {{($route == 'subcategory.edit')?'menu-open': ''}}
                    {{($route == 'add.brand')?'menu-open': ''}}
                    {{($route == 'add.size')?'menu-open': ''}}
                    {{($route == 'size.edit')?'menu-open': ''}}
                    {{($route == 'brnad.edit')?'menu-open': ''}}
                    {{($route == 'admin.color')?'menu-open': ''}}
                    {{($route == 'admin.size')?'menu-open': ''}}
                    {{($route == 'admin.product')?'menu-open': ''}}
                    {{($route == 'product.add')?'menu-open': ''}}
                    {{($route == 'product.single')?'menu-open': ''}}
                    {{($route == 'product.flash.deal.all')?'menu-open': ''}}
                    {{($route == 'product.flash.deal')?'menu-open': ''}}
                    {{($route == 'product.edit')?'menu-open': ''}}
                ">
                    <a href="#" class="nav-link
                      {{($route == 'admin.category')?'active': ''}}
                      {{($route == 'admin.subcategory')?'active': ''}}
                      {{($route == 'add_category') ? 'active' : ''}}
                      {{($route == 'admin.brand')?'active': ''}}
                      {{($route == 'admin.color')?'active': ''}}
                      {{($route == 'admin.size')?'active': ''}}
                      {{($route == 'admin.product')?'active': ''}}
                      {{($route == 'product.add')?'active': ''}}
                      {{($route == 'product.single')?'active': ''}}
                      {{($route == 'product.flash.deal.all')?'active': ''}}
                      {{($route == 'product.flash.deal')?'active': ''}}
                      {{($route == 'product.edit')?'active': ''}}

                  ">
                        <i style="color:#11183C" class="fas fa-folder nav-icon"></i>               <p>
                        <p style="color:#11183C">Product</p>
                            <i class="fas fa-angle-left right"></i>

                    </a>
                    <ul class="nav nav-treeview 
                    
                        {{($route == 'admin.category')?'active': ''}}
                        {{($route == 'admin.subcategory')?'active': ''}}
                        {{($route == 'add_category') ? 'active' : ''}}
                        {{($route == 'admin.brand')?'active': ''}}
                        {{($route == 'admin.color')?'active': ''}}
                        {{($route == 'admin.size')?'active': ''}}
                        {{($route == 'admin.product')?'active': ''}}
                        {{($route == 'product.add')?'active': ''}}
                        {{($route == 'product.single')?'active': ''}}
                        {{($route == 'product.flash.deal.all')?'active': ''}}
                        {{($route == 'product.flash.deal')?'active': ''}}
                        {{($route == 'product.edit')?'active': ''}}
                    ">

                        <li class="nav-item">
                            <a href="{{route('admin.category')}}" class="nav-link pl-3 {{($route == 'admin.category')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/category*')) ? '#FF6666' : '' }}">category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('admin.subcategory')}}" class="nav-link pl-3 {{($route == 'admin.subcategory')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/subcategory*')) ? '#FF6666' : '' }}">Sub category</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.brand') }}" class="nav-link pl-3  {{($route == 'admin.brand')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/brand*')) ? '#FF6666' : '' }}">Brand</p>
                            </a>
                        </li>

                        {{-- <li class="nav-item">
                            <a href="{{ route('admin.color') }}" class="nav-link pl-3 {{($route == 'admin.color')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/color*')) ? '#FF6666' : '' }}">Color</p>
                            </a>
                        </li> --}}

                        <li class="nav-item">
                            <a href="{{ route('admin.size') }}" class="nav-link pl-3 {{($route == 'admin.size')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/size*')) ? '#FF6666' : '' }}">Size</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.product') }}" class="nav-link pl-3 {{($route == 'admin.product')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/product*')) ? '#FF6666' : '' }}">Product list</p>
                            </a>
                        </li>

                    </ul>
                </li>



                <li class="nav-item
            {{($route == 'banner.index')?'menu-open': ''}}
          ">
                    <a href="#" class="nav-link
            {{($route == 'banner.index')?'active': ''}}
            ">
                        <i style="color:{{ (request()->is('admin/banner*')) ? '#11183C' : '' }};" class="nav-icon fas fa-map"></i>
                        <p style="color:{{ (request()->is('admin/banner*')) ? '#11183C' : '' }}">
                            Banner
                            <i class="fas fa-angle-left right"></i>

                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('banner.index')}}" class="nav-link pl-3 {{($route == 'banner.index')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/banner*')) ? '#FF6666' : '' }}">Slider</p>
                            </a>
                        </li>

                    </ul>
                </li>


                <li class="nav-item
                {{($route == 'stock.index')?'menu-open': ''}}
                {{($route == 'stock.details.product')?'menu-open': ''}}
                ">
                    <a href="#" class="nav-link
                    {{($route == 'stock.index')?'active': ''}}
                    {{($route == 'stock.details.product')?'active': ''}}
                    ">
                        <i style="color:{{ (request()->is('admin/stock*')) ? '#11183C' : '' }}" class="nav-icon fa fas fa-database"></i>
                        <p style="color:{{ (request()->is('admin/stock*')) ? '#11183C' : '' }}">
                            Stock Management
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('stock.index') }}" class="nav-link pl-3 {{($route == 'stock.index')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/stock')) ? '#FF6666' : '' }}">Stock Products</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('stock.details.product') }}" class="nav-link pl-3 {{($route == 'stock.details.product')?'active': ''}}">
                                <i class="nav-icon fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/stock/details/product')) ? '#FF6666' : '' }}">Size & Quantity</p>
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="nav-item
                {{($route == 'admin.notification.index')?'menu-open': ''}}
                ">
                <a href="#" class="nav-link
                {{($route == 'admin.notification.index')?'active': ''}}
                ">
                    <i style="color:{{ (request()->is('admin/notification*')) ? '#000000' : '' }}" class="fas fa-bell nav-icon" style="color:{{ (request()->is('admin/notification*')) ? '#000000' : '' }}"></i>
                    <p>
                    Send Notification
                    <i class="fas fa-angle-left right"></i>
                    </p>
                </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.notification.index') }}" class="nav-link pl-3 {{($route == 'admin.notification.index')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/notification*')) ? '#FF6666' : '' }}">All user Notification</p>
                            </a>
                        </li>


                    </ul>
                </li>

                <li class="nav-item
                {{($route == 'setting.genarel')?'menu-open': ''}}
                {{($route == 'setting.email')?'menu-open': ''}}
                {{($route == 'setting.pusher')?'menu-open': ''}}
                {{($route == 'setting.payment.stripe')?'menu-open': ''}}
                {{($route == 'setting.payment.sslcommerz')?'menu-open': ''}}

                ">
                    <a href="#" class="nav-link
                    {{($route == 'setting.genarel')?'active': ''}}
                    {{($route == 'setting.email')?'active': ''}}
                    {{($route == 'setting.pusher')?'active': ''}}
                    {{($route == 'setting.payment.stripe')?'active': ''}}
                    {{($route == 'setting.payment.sslcommerz')?'active': ''}}
                    ">
                        <i style="color:{{ (request()->is('admin/setting*')) ? '#11183C' : '' }}" class="nav-icon fa fas fa-cog"></i>
                        <p style="color:{{ (request()->is('admin/setting*')) ? '#11183C' : '' }}">
                            Settings
                        </p>
                        <i class="right fas fa-angle-left"></i>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('setting.genarel') }}" class="nav-link pl-3 {{($route == 'setting.genarel')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/setting/genarel')) ? '#FF6666' : '' }}">Genarel Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('setting.email') }}" class="nav-link pl-3 {{($route == 'setting.email')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/setting/email')) ? '#FF6666' : '' }}">Email Settings</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('setting.pusher') }}" class="nav-link pl-3 {{($route == 'setting.pusher')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/setting/setting.pusher')) ? '#FF6666' : '' }}">Pusher Settings</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('setting.payment.stripe') }}" class="nav-link pl-3 {{($route == 'setting.payment.stripe')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/setting/payment/stripe')) ? '#FF6666' : '' }}">Stripe</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('setting.payment.sslcommerz') }}" class="nav-link pl-3 {{($route == 'setting.payment.sslcommerz')?'active': ''}}">
                                <i class="fas fa-caret-right nav-icon"></i>
                                <p style="color:{{ (request()->is('admin/setting/payment/sslcommerz')) ? '#FF6666' : '' }}">SSLCommerz</p>
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
