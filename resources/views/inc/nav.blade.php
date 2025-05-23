<nav class="navbar navbar-expand-lg shadow-sm bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand item" href="{{ url('/') }}" tabindex="0" title="London House Publishers Logo and Linked Index" aria-lable="Connor Owen Guitar Logo and Linked Index">
                    <img src="{{asset('images/LHP_icon.png')}}" alt="London House Publishers Logo" height="60px">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item lft lft1">
                            <a href="/" tabindex="1" title="Welcome - London House Publishers" aria-label="Welcome - London House Publishers" class="nav-link item">
                                Welcome
                            </a>
                        </li>
                        <li class="nav-item lft">
                            <a href="/submissionguide" tabindex="2" title="Submission guide - London House Publishers" aria-label="Submission guide - London House Publishers" class="nav-link item">
                                Submission Guide
                            </a>
                        </li>
                        <li class="nav-item lft">
                            <a href="/recentpublications" tabindex="3" title="Recent Publications - London House Publishers" aria-label="Recent Publications - London House Publishers" class="nav-link item">
                                Recent Publications
                            </a>
                        </li>
                        <li class="nav-item lft">
                            <a href="/contact" tabindex="4" title="Contact -  London House Publishers" aria-label="Contact -  London House Publishers" class="nav-link item">
                                Contact
                            </a>
                        </li>
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item rhs">
                                    <a class="nav-link item" tabindex="5" href="{{ route('login') }}">{{ __('Admin Login') }}</a>
                                </li>
                            @endif

                            <!-- @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif -->
                        @else
                            <li class="nav-item dropdown" style="z-index: 10 !important;">
                                <a id="navbarDropdown" tabindex="6" class="nav-link dropdown-toggle" href="/admin" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="/admin">Admin Dashboard</a>

                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>