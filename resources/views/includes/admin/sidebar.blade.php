<nav class="mt-2">
    <!--begin::Sidebar Menu-->
    <ul
        class="nav sidebar-menu flex-column"
        data-lte-toggle="treeview"
        role="menu"
        data-accordion="false"
    >
        <li class="nav-header">ADMIN PANEL</li>
        <li class="nav-item">
            <a href="{{ route('admin.post.index') }}" class="nav-link">
                <i class="nav-icon fa-solid fa-align-justify"></i>
                <p>
                    List of posts
                    <span class="badge text-bg-primary me-3">{{ $posts->total() }}</span>
                </p>
            </a>
        </li>
        <li class="nav-item">
            <a href="{{ route('admin.post.create') }}" class="nav-link">
                <i class="nav-icon fa-solid fa-square-plus"></i>
                <p>
                    Create
                </p>
            </a>
        </li>

    </ul>
    <!--end::Sidebar Menu-->
</nav>
