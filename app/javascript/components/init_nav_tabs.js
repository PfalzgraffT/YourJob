const initNavTabs = () => {
    const profileShow = document.getElementById('profile-card');
    if (profileShow) {
        $('#nav-tabs-wrapper a[data-toggle="tab"]').on('click', function(e) {

            e.preventDefault();
            
            $(e.target).closest('ul').hide().prev('a').removeClass('open').text($(this).text()); 
        });
    }
  };
  export { initNavTabs };
