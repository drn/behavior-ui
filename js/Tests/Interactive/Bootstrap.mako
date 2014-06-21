
<style>
  /* overrides tests.css */
  body {
    padding: 0;
    padding-top: 0 !important;
  }
</style>
<!-- Bootstrap core CSS -->
<link href="${get_asset_url('Behavior-UI','css/bootstrap.css', version)}" rel="stylesheet">

<!-- Documentation extras -->
<link href="${get_asset_url('Behavior-UI','css/docs.css', version)}" rel="stylesheet">
<link href="${get_asset_url('Behavior-UI','prettify.css', version)}" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="${get_asset_url('Behavior-UI','html5shiv.js', version)}"></script>
  <script src="${get_asset_url('Behavior-UI','respond.min.js', version)}"></script>
<![endif]-->

    <!-- Docs page layout -->
    <div class="bs-header" id="content">
      <div class="container">
        <h1>MooTools Bootstrap</h1>
        <p>Bring Bootstrap's components to life with over a dozen custom MooTools (!) plugins. Easily include them all, or one by one.</p>      </div>
    </div>

    <!-- Callout for the old docs link -->
    <div class="bs-old-docs">
  <div class="container">
    <strong>
      <a href="https://github.com/anutron/mootools-bootstrap/tags">Looking for MooTools Bootstrap 2.x?</a>
    </strong>
    You'll find it tagged 2.x on github. See below about backwards compatibility.
  </div>
  <div class="container">
    <strong>
      <a href="http://dev.clientcide.com/?version=MooTools%20Bootstrap">Looking for docs and downloads?</a>
    </strong>
    You'll find those on <em>dev.clientside.com</em> - just click on the docs / demos / downloads links at the top!
  </div>
</div>


    <div class="container bs-docs-container">
      <div class="row">
        <div class="col-md-3">
          <div class="bs-sidebar hidden-print" role="complementary" data-behavior="BS.Affix" data-bs-affix-top="240">
            <ul class="nav bs-sidenav">

                <li>
  <a href="#js-overview">Overview</a>
  <ul class="nav">
    <li><a href="#js-individual-compiled">Individual or compiled</a></li>
    <li><a href="#js-data-attrs">Data attributes</a></li>
    <li><a href="#js-programmatic-api">Programmatic API</a></li>
    <li><a href="#js-noconflict">No conflict</a></li>
    <li><a href="#js-events">Events</a></li>
  </ul>
</li>
<li><a href="#transitions">Transitions</a></li>
<li>
  <a href="#modals">Modal</a>
  <ul class="nav">
    <li><a href="#modals-examples">Examples</a></li>
    <li><a href="#modals-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#dropdowns">Dropdown</a>
  <ul class="nav">
    <li><a href="#dropdowns-examples">Examples</a></li>
    <li><a href="#dropdowns-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#scrollspy">Scrollspy</a>
  <ul class="nav">
    <li><a href="#scrollspy-examples">Examples</a></li>
    <li><a href="#scrollspy-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#tabs">Tab</a>
  <ul class="nav">
    <li><a href="#tabs-examples">Examples</a></li>
    <li><a href="#tabs-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#tooltips">Tooltip</a>
  <ul class="nav">
    <li><a href="#tooltips-examples">Examples</a></li>
    <li><a href="#tooltips-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#popovers">Popover</a>
  <ul class="nav">
    <li><a href="#popovers-examples">Examples</a></li>
    <li><a href="#popovers-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#alerts">Alert</a>
  <ul class="nav">
    <li><a href="#alerts-examples">Examples</a></li>
    <li><a href="#alerts-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#buttons">Button</a>
  <ul class="nav">
    <li><a href="#buttons-examples">Examples</a></li>
    <li><a href="#buttons-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#collapse">Collapse</a>
  <ul class="nav">
    <li><a href="#collapse-examples">Examples</a></li>
    <li><a href="#collapse-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#carousel">Carousel</a>
  <ul class="nav">
    <li><a href="#carousel-examples">Examples</a></li>
    <li><a href="#carousel-usage">Usage</a></li>
  </ul>
</li>
<li>
  <a href="#affix">Affix</a>
  <ul class="nav">
    <li><a href="#affix-examples">Examples</a></li>
    <li><a href="#affix-usage">Usage</a></li>
  </ul>
</li>


            </ul>
          </div>
        </div>
        <div class="col-md-9" role="main">
            <!-- Overview
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="js-overview">Overview</h1>
    </div>

    <h3>About this library</h3>
    <p>This library implements support for Bootstrap components using MooTools. It does <em>not</em> use the same <code>data-</code> tags as Bootstrap's native jQuery implementation, so be sure to read this document thoroughly. Not every component is included here (most notably <code>Carousel</code> and <code>Scrollspy</code>) because the author has not found need of them and thus hasn't gotten around to it. Pull requests are accepted and encouraged!</p>

    <div class="bs-callout bs-callout-danger">
      <h4>Plugin dependencies</h4>
      <p>All the plugins in MooTools Bootstrap require other portions of <a href="http://mootools.net/download">MooTools Core</a>, <a href="http://mootools.net/more/">MooTools More</a>, <a href="http://dev.clientcide.com">Clientcide</a>, and other Clientcide authored repositories like <a href="https://github.com/anutron/behavior">Behavior</a> and <a href-"https://github.com/anutron/more-behaviors">(MooTools) More Behaviors</a>. The depenendencies for everything are listed in the headers of each file and can be compiled with <a href="https://github.com/kamicane/packager">Packager</a> (<a href="http://ryanflorence.com/packager/">more on packager here</a>). The library can also easily be built on <a href="http://dev.clientcide.com">dev.clientcide.com</a> by selecting Bootstrap from the dropdown menu.</p>
    </div>

    <div class="bs-callout bs-callout-danger">
      <h4>Backwards Compatibility</h4>
      <p>Bootstrap 3.0 introduced a few changes that preclude this libary from being <em>automatically</em> backwards compatible. If you wish to use the current version with Bootstrap 2.x layouts, you'll need to add <code>Bootstrap.version = 2;</code> to your own JavaScript. The only file that this affects (currently) is the modal library (<code>Bootstrap.Popup</code>) as its DOM differs in crucial was between Bootstrap 2 and 3.</p>
    </div>

    <h3 id="js-data-attrs">Behavior and Data attributes</h3>
    <p>All the plugins are meant to be used with <a href="https://github.com/anutron/behavior">Behavior</a> and can be invoked with data attributes. <strong>These are not the same attributes used with Bootstrap for its jQuery implementation</strong>. If someone wants to write a library that translates the same data attributes to work with this implementation go for it!</p>

    <p>All the plugins here are also stand-alone MooTools classes, so you don't have to use Behavior and the data attributes if you don't want to. See the docs on <a href="http://dev.clientcide.com">Clientcide</a> for how to invoke them manually.</p>

    <p>Behavior is an extremely robust and well tested UI programming framework that provides events, plugin support and easy configuration. It is highly recommended that you read up on it and use it with this library.</p>

    <h3>Behavior Options</h3>
    <p>
      Behavior options can be set inline (<code>data-filtername-option="value"</code>) or using JSON-like values like so:
    </p>
<pre class="prettyprint">&lt;div data-behavior="FilterName" data-filtername-options="
  'string': 'foo',
  'number': 1,
  'object': { 'array': [1,2]}
">...&lt;/div></pre>
    <h3>Selectors</h3>
    <p>
      Selectors in Behavior filters and Delegator triggers are always relative to the element they modify. So if you want
      to find an element that is a child of that element, you can just use a regular selector, but if you need to find
      an element that is somewhere else in the DOM, use <a href="http://mootools.net/docs/core/Slick/Slick">Slick's</a>
      reverse combinators (<code>!.someParent #someChildOfThatParent</code> - e.g. <code>!body #foo</code>).
    </p>


  </div>

  <!-- Modal
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="modals">Modals <small>Bootstrap.Popup.js &amp; Behavior.BS.Popup.js</small></h1>
    </div>

    <h2 id="modals-examples">Examples</h2>
    <p>See the Bootstrap docs for a static example of this (i.e. one that doesn't actually pop up). You can use <code>Bootstrap.Popup</code> to manually controll these or use the Behavior implementation displayed here.</p>


    <h3>Live demo</h3>
    <p>Toggle a modal via JavaScript by clicking the button below. It will slide down and fade in from the top of the page.</p>
    <!-- sample modal content -->
    <div data-behavior="BS.Popup" id="myModal" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Modal Heading</h4>
          </div>
          <div class="modal-body">
            <h4>Text in a modal</h4>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>

            <h4>Popover in a modal</h4>
            <p>This <a role="button" class="btn btn-default popover-test" title="A Title" data-behavior="BS.Popover" data-bs-popover-options="
                'content': 'And here\'s some amazing content. It\'s very engaging. right?',
                'trigger': 'click'
              ">button</a> should trigger a popover on click.</p>

            <h4>Tooltips in a modal</h4>
            <p><a href="#" class="tooltip-test" title="Tooltip" data-behavior="BS.Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip" data-behavior="BS.Tooltip">that link</a> should have tooltips on hover.</p>

            <hr>

            <h4>Overflowing text to show scroll behavior</h4>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>

        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="bs-example" style="padding-bottom: 24px;">
      <a data-trigger="BS.showPopup" href="#myModal" class="btn btn-primary btn-lg">Launch demo modal</a>
    </div><!-- /example -->



    <h2 id="modals-usage">Usage</h2>

    <h3>Via data attributes</h3>
    <p>Activate a modal without writing JavaScript. Set <code>data-behavior="BS.Popup"</code> on the modal and then on a controller element, like a button, set <code>data-trigger="BS.showPopup"</code> with <code>href="#foo"</code> to target a specific modal to toggle.</p>
    <pre class="prettyprint">&lt;button type="button" data-trigger="BS.showPopup" href="#myModal">Launch modal&lt;/button></pre>

    <h3>Example: </h3>

    <pre class="prettyprint">&lt;!-- sample modal content -->
&lt;div data-behavior="BS.Popup" id="myModal" class="modal fade">
  &lt;div class="modal-dialog">
    &lt;div class="modal-content">

      &lt;div class="modal-header">
        &lt;button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;&lt;/button>
        &lt;h4 class="modal-title" id="myModalLabel">Modal Heading&lt;/h4>
      &lt;/div>
      &lt;div class="modal-body">
        &lt;h4>Text in a modal&lt;/h4>
        &lt;p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.&lt;/p>

        &lt;h4>Popover in a modal&lt;/h4>
        &lt;p>This &lt;a role="button" class="btn btn-default popover-test" title="A Title" data-behavior="BS.Popover" data-bs-popover-options="
            'content': 'And here\'s some amazing content. It\'s very engaging. right?',
            'trigger': 'click'
          ">button&lt;/a> should trigger a popover on click.&lt;/p>

        &lt;h4>Tooltips in a modal&lt;/h4>
        &lt;p>&lt;a href="#" class="tooltip-test" title="Tooltip" data-behavior="BS.Tooltip">This link&lt;/a> and &lt;a href="#" class="tooltip-test" title="Tooltip" data-behavior="BS.Tooltip">that link&lt;/a> should have tooltips on hover.&lt;/p>

      &lt;/div>
      &lt;div class="modal-footer">
        &lt;button type="button" class="btn btn-default" data-dismiss="modal">Close&lt;/button>
        &lt;button type="button" class="btn btn-primary">Save changes&lt;/button>
      &lt;/div>

    &lt;/div>&lt;!-- /.modal-content -->
  &lt;/div>&lt;!-- /.modal-dialog -->
&lt;/div>&lt;!-- /.modal -->

&lt;div class="bs-example" style="padding-bottom: 24px;">
  &lt;a data-trigger="BS.showPopup" href="#myModal" class="btn btn-primary btn-lg">Launch demo modal&lt;/a>
&lt;/div>&lt;!-- /example -->
</pre>


    <h2>Behavior Options</h2>
    <p>These options apply only to the <code>data-</code> tag invocation. See the documentation on
    <a href="http://dev.clientcide.com/?version=MooTools%20Bootstrap">dev.clientcide.com</a> for
    JavaScript options, methods, and events.</p>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
        <thead>
         <tr>
           <th style="width: 100px;">Name</th>
           <th style="width: 50px;">type</th>
           <th style="width: 50px;">default</th>
           <th>description</th>
         </tr>
        </thead>
        <tbody>
          <tr>
            <td>persist</td>
            <td>boolean</td>
            <td>true</td>
            <td>If <code>false</code> the popup and its modal layer will be destroyed when it is closed. Useful when you are fetching the popup with Ajax.</td>
          </tr>
          <tr>
            <td>hide</td>
            <td>boolean</td>
            <td>false</td>
            <td>Do not show the Popup immediately.</td>
          </tr>
          <tr>
            <td>mask</td>
            <td>boolean</td>
            <td>true</td>
            <td>Includes a modal-backdrop element.</td>
          </tr>
          <tr>
            <td>animate</td>
            <td>boolean</td>
            <td>true</td>
            <td>Slides the window into and out of view with a smooth transition.</td>
          </tr>
          <tr>
            <td>closeOnClickOut</td>
            <td>boolean</td>
            <td>true</td>
            <td>Close the popup when the user clicks out of it (on the mask or, if it's not used, the document body outside the popup).</td>
          </tr>
          <tr>
            <td>closeOnEsc</td>
            <td>boolean</td>
            <td>false</td>
            <td>Closes the modal when escape key is pressed</td>
          </tr>
          <tr>
            <td>focusOnShow</td>
            <td>string</td>
            <td>input[type=text], select, textarea</td>
            <td>A selector (string) to find an element relative to the root of the popup whose `select` method will be called on show.</td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="bs-callout bs-callout-info">
      <h4>Show your popup on load... or not</h4>
      <p>
         This implementation mirrors that found in Twitter's JS library. It uses CSS transitions when available (generally speaking, every browser but IE). Add the <code>.fade</code> class to your element to have it transition in. You can alternately specify the <code>animate</code> option in the behavior filter settings listed above. If you do not specify either of these, you should add the <code>.hide</code> class unless you want your element visible immediately.
      </p>
    </div>
    <div class="bs-callout bs-callout-info">
      <h4>Elements that close your popup</h4>
      <p>
        Any element in your content with the class <code>.close</code> or <code>.dismiss</code> will close the popup. The reason for both is that Bootstrap provides styles for .close elements (the *x* in the upper right corner) that you may not want applied to your element. By default, the default behavior for the click event on these elements is NOT stopped (so if they are submit buttons or actual links with <code>href</code> properties, those actions will occur). Add the class <code>stopEvent</code> to have the class call <code>Event.preventDefault</code> for you.
      </p>
    </div>



    <h3>Via JavaScript</h3>
    <p>Call a modal with id <code>myModal</code> with a single line of JavaScript:</p>
    <pre class="prettyprint">new Bootstrap.Popup(myElement, options).show();</pre>






  <!-- Dropdowns
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="dropdowns">Dropdowns <small>Bootstrap.Dropdown.js</small></h1>
    </div>

    <h2 id="dropdowns-examples">Examples</h2>
    <p>Add dropdown menus to nearly anything with this simple plugin, including the navbar, tabs, and pills.</p>

    <h3>Within a navbar</h3>
    <div class="bs-example">
      <nav id="navbar-example" class="navbar navbar-default navbar-static" role="navigation" data-behavior="BS.Dropdown">
        <div class="navbar-header">
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-js-navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project Name</a>
        </div>
        <div class="collapse navbar-collapse bs-js-navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Separated link</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown 2 <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li id="fat-menu" class="dropdown">
              <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown 3 <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </nav> <!-- /navbar-example -->
    </div> <!-- /example -->

    <h3>Within tabs</h3>
    <div class="bs-example">
      <ul class="nav nav-pills" data-behavior="BS.Dropdown">
        <li class="active"><a href="#">Regular link</a></li>
        <li class="dropdown">
          <a id="drop4" role="button" data-toggle="dropdown" href="#">Dropdown <b class="caret"></b></a>
          <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a id="drop5" role="button" data-toggle="dropdown" href="#">Dropdown 2 <b class="caret"></b></a>
          <ul id="menu2" class="dropdown-menu" role="menu" aria-labelledby="drop5">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a id="drop6" role="button" data-toggle="dropdown" href="#">Dropdown 3 <b class="caret"></b></a>
          <ul id="menu3" class="dropdown-menu" role="menu" aria-labelledby="drop6">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/anutron">Separated link</a></li>
          </ul>
        </li>
      </ul> <!-- /tabs -->
    </div> <!-- /example -->


    <h2 id="dropdowns-usage">Usage</h2>

    <h3>Via data attributes</h3>
    <p>Add <code>data-behavior="BS.Dropdown"</code> to the top level <code>.dropdown</code> element, then add <code>data-toggle="dropdown"</code> to a link or button to toggle a dropdown.</p>
<pre class="prettyprint">&lt;div class="dropdown">
  &lt;a data-toggle="dropdown" href="#">Dropdown trigger&lt;/a>
  &lt;ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
    ...
  &lt;/ul>
&lt;/div></pre>

    <h3>Via JavaScript</h3>
    <p>Call the dropdowns via JavaScript:</p>
<pre class="prettyprint">new Bootstrap.Dropdown(containerElement, options);</pre>

    <h3>Options</h3>
    <p><em>None</em></p>


  <!-- ScrollSpy
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="scrollspy">ScrollSpy</h1>
    </div>


    <p>There is currently no support for the Scrollspy functionality found in Bootstrap.</p>



  <!-- Tabs
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="tabs">Togglable tabs <small>Tabswapper.js (from Clientcide)</small></h1>
    </div>

    <h2 id="tabs-examples">Example tabs</h2>
    <p>Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus.</p>
    <div class="bs-example bs-example-tabs">
      <ul id="myTab" class="nav nav-tabs" data-behavior="BS.Tabs">
        <li class="active"><a href="#home">Home</a></li>
        <li><a href="#profile">Profile</a></li>
        <li class="dropdown" data-behavior="BS.Dropdown">
          <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
            <li><a href="#dropdown1" tabindex="-1">@fat</a></li>
            <li><a href="#dropdown2" tabindex="-1">@mdo</a></li>
          </ul>
        </li>
      </ul>
      <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="home">
          <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
        </div>
        <div class="tab-pane fade" id="profile">
          <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
        </div>
        <div class="tab-pane fade" id="dropdown1">
          <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
        </div>
        <div class="tab-pane fade" id="dropdown2">
          <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
        </div>
      </div>
    </div><!-- /example -->


    <h2 id="tabs-usage">Usage</h2>
    <p>You can activate a tab or pill navigation without writing any JavaScript by simply specifying <code>data-behavior="BS.Tabs"</code> on the <code>.nav.nav-tabs</code> or <code>.nav.nav-pills</code>element.</p>
<pre class="prettyprint">&lt;ul class="nav nav-tabs" data-behavior="BS.Tabs">
  &lt;li>&lt;a href="#home">Home&lt;/a>&lt;/li>
  &lt;li>&lt;a href="#profile">Profile&lt;/a>&lt;/li>
  &lt;li>&lt;a href="#messages">Messages&lt;/a>&lt;/li>
  &lt;li>&lt;a href="#settings">Settings&lt;/a>&lt;/li>
&lt;/ul></pre>

    <h3>Behavior Options</h3>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
        <thead>
         <tr>
           <th style="width: 100px;">Name</th>
           <th style="width: 50px;">type</th>
           <th style="width: 50px;">default</th>
           <th>description</th>
         </tr>
        </thead>
        <tbody>
        <tr>
          <td>tabs-selector</td>
          <td>string</td>
          <td>">li"</td>
          <td>A selector to find the tab elements that the user clicks.</td>
        </tr>
         <tr>
           <td>sections-selector</td>
           <td>string</td>
           <td>"+.tab-content > div"</td>
           <td>A selector to find the sections that correlate to each tab.</td>
         </tr>
         <tr>
           <td>smooth</td>
           <td>boolean</td>
           <td>false</td>
           <td>Fade in the content when the tabs are switched.</td>
         </tr>
         <tr>
           <td>smoothSize</td>
           <td>boolean</td>
           <td>false</td>
           <td>Transition the height of each tab section as its displayed.</td>
         </tr>
         <tr>
           <td>selectedClass</td>
           <td>string</td>
           <td>"active"</td>
           <td>The class added to the active tab.</td>
         </tr>
         <tr>
           <td>hash</td>
           <td>string</td>
           <td>--</td>
           <td>If defined, will add a hash value to the window location so that if the user reloads the selected tab will be selected by default.</td>
         </tr>
        </tbody>
      </table>
    </div>

    <h3>via Javascript</h3>
    <p>This behavior implements the <code>TabSwapper</code> class from the Clientcide repo.</p>
    <pre class="prettyprint">new TabSwapper(container, options);</pre>


  <!-- Tooltips
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="tooltips">Tooltips <small>Bootstrap.Tooltip.js</small></h1>
    </div>

    <h2 id="tooltips-examples">Examples</h2>
    <p>Inspired by the excellent jQuery.tipsy plugin written by Jason Frame; Tooltips are an updated version, which don't rely on images, use CSS3 for animations, and data-attributes for local title storage.</p>
    <p>Hover over the links below to see tooltips:</p>
    <div class="bs-example tooltip-demo">
      <p class="muted" style="margin-bottom: 0;">Tight pants next level keffiyeh <a href="#" data-behavior="BS.Tooltip" title="Default tooltip">you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel <a href="#" data-behavior="BS.Tooltip" title="Another tooltip">have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A really ironic artisan <a href="#" data-behavior="BS.Tooltip" title="Another one here too">whatever keytar</a>, scenester farm-to-table banksy Austin <a href="#" data-behavior="BS.Tooltip" title="The last tip!">twitter handle</a> freegan cred raw denim single-origin coffee viral.
      </p>
    </div><!-- /example -->

    <h3>Four directions</h3>
    <div class="bs-example tooltip-demo">
      <div class="bs-example-tooltips">
        <button type="button" class="btn btn-default" data-behavior="BS.Tooltip" data-bs-tooltip-location="left" title="Tooltip on left">Tooltip on left</button>
        <button type="button" class="btn btn-default" data-behavior="BS.Tooltip" data-bs-tooltip-location="top" title="Tooltip on top">Tooltip on top</button>
        <button type="button" class="btn btn-default" data-behavior="BS.Tooltip" data-bs-tooltip-location="bottom" title="Tooltip on bottom">Tooltip on bottom</button>
        <button type="button" class="btn btn-default" data-behavior="BS.Tooltip" data-bs-tooltip-location="right" title="Tooltip on right">Tooltip on right</button>
      </div>
    </div><!-- /example -->


    <h2>Usage</h2>
    <h3>Via data attributes</h3>
    <pre class="prettyprint">&lt;a href="#" data-behavior="BS.Tooltip" title="first tooltip">Hover over me&lt;/a></pre>

    <h3>Behavior Options</h3>
    <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name to <code>data-</code>, as in <code>data-animation=""</code>.</p>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
        <thead>
         <tr>
           <th style="width: 100px;">Name</th>
           <th style="width: 100px;">type</th>
           <th style="width: 50px;">default</th>
           <th>description</th>
         </tr>
        </thead>
        <tbody>
          <tr>
            <td>content</td>
            <td>string</td>
            <td>'title'</td>
            <td>the content of the tip, if not defined, will use the <code>title</code> property of the element</td>
          </tr>
          <tr>
            <td>animate</td>
            <td>boolean</td>
            <td>true</td>
            <td>apply a css fade transition to the tooltip</td>
          </tr>
          <tr>
            <td>delayIn</td>
            <td>number</td>
            <td>200</td>
            <td>delay before showing tooltip (ms)</td>
          </tr>
          <tr>
            <td>delayOut</td>
            <td>number</td>
            <td>0</td>
            <td>delay before hiding tooltip (ms)</td>
          </tr>
          <tr>
            <td>location</td>
            <td>string</td>
            <td>'above'</td>
            <td>how to position the tooltip - above | below | left | right</td>
          </tr>
          <tr>
            <td>offset</td>
            <td>number</td>
            <td>0</td>
            <td>pixel offset of tooltip from target element</td>
          </tr>
          <tr>
            <td>trigger</td>
            <td>string</td>
            <td>'hover'</td>
            <td>how tooltip is triggered - hover | focus | manual</td>
          </tr>
          <tr>
            <td>onOverflow</td>
            <td>boolean</td>
            <td>false</td>
            <td>Only show the tip if the element's content is overflown (i.e. it's scroll-height or scroll-width is greater than the height or width of the element)</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

    <h3>via JavaScript</h3>
    <pre class="prettyprint">new Bootstrap.Tooltip(element, options).show();</pre>


  <!-- Popovers
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="popovers">Popovers <small>Bootstrap.Popover.js</small></h1>
    </div>

    <h2 id="popovers-examples">Examples</h2>
    <p>Add small overlays of content, like those on the iPad, to any element for housing secondary information.</p>

    <h3>Static popover</h3>
    <p>Four options are available: top, right, bottom, and left aligned.</p>
    <div class="bs-example bs-example-popover">
      <div class="popover top">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover top</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="popover right">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover right</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="popover bottom">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover bottom</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="popover left">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover left</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="clearfix"></div>
    </div>

    <h3>Live demo</h3>
    <div class="bs-example" style="padding-bottom: 24px;">
      <a class="btn btn-lg btn-danger" data-behavior="BS.Popover" title="A Title" data-bs-popover-options="
        'content': 'And here\'s some amazing content. It\'s very engaging. right?',
        'location': 'below'
      ">Mouseover to toggle popover</a>

      <a class="btn btn-lg btn-danger" data-behavior="BS.Popover" title="A Title" data-bs-popover-options="
        'content': 'And here\'s some amazing content. It\'s very engaging. right?',
        'trigger': 'click'
      ">Click to toggle popover</a>
    </div>

    <h4>Four directions</h4>
    <div class="bs-example tooltip-demo">
      <div class="bs-example-tooltips">
        <button type="button" class="btn btn-default" data-container="body" data-behavior="BS.Popover"
          data-bs-popover-options="
            'location': 'left',
            'content': 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus.',
            'trigger': 'click'
          ">
          Popover on left
        </button>
        <button type="button" class="btn btn-default" data-container="body" data-behavior="BS.Popover"
          data-bs-popover-options="
            'location': 'top',
            'content': 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus.',
            'trigger': 'click'
          ">
          Popover on top
        </button>
        <button type="button" class="btn btn-default" data-container="body" data-behavior="BS.Popover"
          data-bs-popover-options="
            'location': 'bottom',
            'content': 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus.',
            'trigger': 'click'
          ">
          Popover on bottom
        </button>
        <button type="button" class="btn btn-default" data-container="body" data-behavior="BS.Popover"
          data-bs-popover-options="
            'location': 'right',
            'content': 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus.',
            'trigger': 'click'
          ">
          Popover on right
        </button>
      </div>
    </div><!-- /example -->


    <h2>Usage</h2>

    <pre class="prettyprint">&lt;a class="btn btn-lg btn-danger" data-behavior="BS.Popover" title="A Title" data-bs-popover-options="
  'content': 'And here\'s some amazing content. It\'s very engaging. right?',
  'location': 'below'
">Mouseover to toggle popover&lt;/a></pre>

    <h3>Behavior Options</h3>
    <div class="table-responsive">
      <table class="table table-striped table-bordered">
        <thead>
         <tr>
           <th style="width: 100px;">Name</th>
           <th style="width: 100px;">type</th>
           <th style="width: 50px;">default</th>
           <th>description</th>
         </tr>
        </thead>
        <tbody>
          <tr>
            <td>title</td>
            <td>string</td>
            <td>--</td>
            <td>the title of the popover, if not defined, will use the <code>title</code> property of the element</td>
          </tr>
          <tr>
            <td>content</td>
            <td>string</td>
            <td>--</td>
            <td>the content of the popover</td>
          </tr>
          <tr>
            <td>titleElement</td>
            <td>string</td>
            <td>--</td>
            <td>A css selector relative to the behavior element that should be used for the title of the popup.</td>
          </tr>
          <tr>
            <td>contentElement</td>
            <td>string</td>
            <td>--</td>
            <td>A css selector relative to the behavior element that should be used for the content of the popup.</td>
          </tr>
          <tr>
            <td>animate</td>
            <td>boolean</td>
            <td>true</td>
            <td>apply a css fade transition to the tooltip</td>
          </tr>
          <tr>
            <td>delayIn</td>
            <td>number</td>
            <td>200</td>
            <td>delay before showing tooltip (ms)</td>
          </tr>
          <tr>
            <td>delayOut</td>
            <td>number</td>
            <td>0</td>
            <td>delay before hiding tooltip (ms)</td>
          </tr>
          <tr>
            <td>location</td>
            <td>string</td>
            <td>'above'</td>
            <td>how to position the tooltip - above | below | left | right</td>
          </tr>
          <tr>
            <td>offset</td>
            <td>number</td>
            <td>10</td>
            <td>pixel offset of tooltip from target element</td>
          </tr>
          <tr>
            <td>trigger</td>
            <td>string</td>
            <td>'hover'</td>
            <td>how tooltip is triggered - hover | focus | click | manual</td>
          </tr>
          <tr>
            <td>onOverflow</td>
            <td>boolean</td>
            <td>false</td>
            <td>Only show the tip if the element's content is overflown (i.e. it's scroll-height or scroll-width is greater than the height or width of the element)</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

    <h2 id="popovers-usage">JavaScript</h2>
    <p>Enable popovers via JavaScript:</p>
    <pre class="prettyprint">new Bootstrap.Popover(element, options).show();</pre>


  <!-- Alert
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="alerts">Alert messages <small>Fx.Reveal.js</small></h1>
    </div>


    <h2 id="alerts-examples">Example alerts</h2>
    <p>Add dismiss functionality to all alert messages with this plugin.</p>
    <div class="bs-example">
      <div class="alert alert-warning fade in">
        <button type="button" class="close" data-trigger="nix" data-nix-target="!.alert">&times;</button>
        <strong>Holy guacamole!</strong> Best check yo self, you're not looking too good.
      </div>
    </div><!-- /example -->

    <div class="bs-example">
      <div class="alert alert-block alert-danger fade in">
        <button type="button" class="close" data-trigger="nix" data-nix-options="
          'target': '!div.alert'
        ">&times;</button>
        <h4>Oh snap! You got an error!</h4>
        <p>Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
        <p>
          <a class="btn btn-danger" href="#">Take this action</a> <a class="btn btn-default" href="#">Or do this</a>
        </p>
      </div>
    </div><!-- /example -->


    <h2 id="alerts-usage">Usage</h2>
    <p>This makes use of the <code>Fx.Reveal</code> method <code>.nix()</code> found in MooTools More. Just add <code>data-trigger="nix" data-nix-target="!.alert"</code> to the closing element.</p>
    <div class="alert alert-warning">Note: Be sure to require <code>More-Behaviors/Delegator.Nix</code> when you build your library.</div>
    <pre class="prettyprint">&lt;div class="alert alert-warning fade in">
  &lt;button type="button" class="close" data-trigger="nix" data-nix-target="!.alert">&times;&lt;/button>
  &lt;strong>Holy guacamole!&lt;/strong> Best check yo self, you're not looking too good.
&lt;/div></pre>



  <!-- Buttons
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="buttons">Buttons</h1>
    </div>

    <p>Bootstrap provides helpers for setting button states that are not entirely provided by this libary. However, it is possible to reproduce
      most of the functionality using existing Behaviors from this library and the <a href-"https://github.com/anutron/more-behaviors">(MooTools) More Behaviors</a>
      library. Demonstrated here is how to reproduce most of the effects supported in Bootstrap, but not all.</p>

    <h2 id="buttons-examples">Example uses</h2>
    <p>Do more with buttons. Control button states or create groups of buttons for more components like toolbars.</p>

    <h4>Stateful</h4>
    <p>In Bootstrap, you can change a button's state to "loading..." by adding <code>data-loading-text</code> to it. While this would be trivial to reproduce
      using Behavior and MooTools, the author hasn't found need for it and so hasn't done so (pull requests accepted!).</p>

    <h4>Single toggle</h4>
    <p>Add <code>data-trigger="toggleClass" data-toggleclass-class="active"</code> to activate toggling on a single button.</p>
    <div class="alert alert-warning">Note: Be sure to require <code>More-Behaviors/Delegator.ToggleClass</code> when you build your library.</div>
    <div class="bs-example" style="padding-bottom: 24px;">
      <button type="button" class="btn btn-primary" data-trigger="toggleClass" data-toggleclass-class="active">Single toggle</button>
    </div><!-- /example -->
    <pre class="prettyprint">&lt;button type="button" class="btn btn-primary" data-trigger="toggleClass" data-toggleclass-class="active">Single toggle&lt;/button></pre>

    <h4>Checkbox</h4>
    <p>This one's a little wierd. When used with a label and checkbox, you have to put the trigger on the input. This is because browsers see the click on the label and fire
      that event there, but then they <em>also</em> fire the click event on the input (even if your mouse didn't actually click it). This triggers the delegator twice
      toggling your class twice, so nothing happens. Instead, you must specify both <code>data-toggleclass-class</code> and <code>data-toggleclass-target</code> (or, better
      yet, use the <code>data-toggleclass-options</code> method to declare your configuration; see example).</p>
    <div class="bs-example" style="padding-bottom: 24px;">
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary">
          <input type="checkbox" data-trigger="toggleClass" data-toggleclass-options="
            'class': 'active',
            'target': '!label'
          "> Option 1
        </label>
        <label class="btn btn-primary">
          <input type="checkbox" data-trigger="toggleClass" data-toggleclass-options="
            'class': 'active',
            'target': '!label'
          "> Option 2
        </label>
        <label class="btn btn-primary">
          <input type="checkbox" data-trigger="toggleClass" data-toggleclass-options="
            'class': 'active',
            'target': '!label'
          "> Option 3
        </label>
      </div>
    </div><!-- /example -->
<pre class="prettyprint">&lt;label class="btn btn-primary">
  &lt;input type="checkbox" data-trigger="toggleClass" data-toggleclass-options="
    'class': 'active',
    'target': '!label'
  "> Option 1
&lt;/label></pre>

    <h4>Radio</h4>
    <p>Same thing as checkboxen, but with a hitch. Because we need to remove the class for the radio that is
      unchecked whenever we click another one, we must remove the class from all the labels before we select
      the one we clicked. Simple enough, just also add the <code>removeClass</code> trigger to the container.
      See example.</p>
    <div class="bs-example" style="padding-bottom: 24px;">
      <div class="btn-group" data-toggle="buttons"  data-trigger="removeClass" data-removeclass-options="
        'class': 'active',
        'targets': 'label'
      ">
        <label class="btn btn-primary">
          <input type="radio" name="options" id="option1" data-trigger="toggleClass" data-toggleclass-options="
            'class': 'active',
            'target': '!label'
          "> Option 1
        </label>
        <label class="btn btn-primary">
          <input type="radio" name="options" id="option2" data-trigger="toggleClass" data-toggleclass-options="
            'class': 'active',
            'target': '!label'
          "> Option 2
        </label>
        <label class="btn btn-primary">
          <input type="radio" name="options" id="option3" data-trigger="toggleClass" data-toggleclass-options="
            'class': 'active',
            'target': '!label'
          "> Option 3
        </label>
      </div>
    </div><!-- /example -->
<pre class="prettyprint">&lt;div class="bs-example" style="padding-bottom: 24px;">
  &lt;div class="btn-group" data-toggle="buttons"  data-trigger="removeClass" data-removeclass-options="
    'class': 'active',
    'targets': 'label'
  ">
    &lt;label class="btn btn-primary">
      &lt;input type="radio" name="options" id="option1" data-trigger="toggleClass" data-toggleclass-options="
        'class': 'active',
        'target': '!label'
      "> Option 1
    &lt;/label>
    &lt;label class="btn btn-primary">
      &lt;input type="radio" name="options" id="option2" data-trigger="toggleClass" data-toggleclass-options="
        'class': 'active',
        'target': '!label'
      "> Option 2
    &lt;/label>
    &lt;label class="btn btn-primary">
      &lt;input type="radio" name="options" id="option3" data-trigger="toggleClass" data-toggleclass-options="
        'class': 'active',
        'target': '!label'
      "> Option 3
    &lt;/label>
  &lt;/div>
&lt;/div></pre>




  <!-- Collapse
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="collapse">Collapse <small>Fx.Accordion.js</small></h1>
    </div>

    <h3>About</h3>
    <p>Get base styles and flexible support for collapsible components like accordions and navigation.</p>

    <div class="bs-callout bs-callout-danger">
      <h4>Plugin dependency</h4>
      <p>Note: Be sure to require <code>More-Behaviors/Behavior.Accordion</code> when you build your library.</p>
    </div>

    <div class="bs-callout bs-callout-danger">
      <h4>Bootstrap Class Name Divergence</h4>
      <p>Note: Don't give your panels the <code>.collapse</code> class. This implementation doesn't use CSS classes
        as it's based on the JS based <code>Fx.Accordion</code> from MooTools. The author may at some future point
        include a CSS version as Bootstrap currently has (pull requests accepted!).</p>
    </div>

    <h2 id="collapse-examples">Example accordion</h2>
    <div class="bs-example">
      <div class="panel-group" id="accordion" data-behavior="Accordion" data-accordion-options="
        'headers': 'a.accordion-toggle',
        'sections': '.panel-collapse'
      ">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle">
                Collapsible Group Item #1
              </a>
            </h4>
          </div>
          <div id="collapseOne" class="panel-collapse">
            <div class="panel-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle">
                Collapsible Group Item #2
              </a>
            </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse">
            <div class="panel-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a class="accordion-toggle">
                Collapsible Group Item #3
              </a>
            </h4>
          </div>
          <div id="collapseThree" class="panel-collapse">
            <div class="panel-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
      </div>
    </div><!-- /example -->

<pre class="prettyprint">&lt;div class="panel-group" id="accordion" data-behavior="Accordion" data-accordion-options="
  'headers': 'a.accordion-toggle',
  'sections': '.panel-collapse'
">
  &lt;div class="panel panel-default">
    &lt;div class="panel-heading">
      &lt;h4 class="panel-title">
        &lt;a class="accordion-toggle">
          Collapsible Group Item #1
        &lt;/a>
      &lt;/h4>
    &lt;/div>
    &lt;div id="collapseOne" class="panel-collapse">
      &lt;div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      &lt;/div>
    &lt;/div>
  &lt;/div>
  &lt;div class="panel panel-default">
    &lt;div class="panel-heading">
      &lt;h4 class="panel-title">
        &lt;a class="accordion-toggle">
          Collapsible Group Item #2
        &lt;/a>
      &lt;/h4>
    &lt;/div>
    &lt;div id="collapseTwo" class="panel-collapse">
      &lt;div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      &lt;/div>
    &lt;/div>
  &lt;/div>
  &lt;div class="panel panel-default">
    &lt;div class="panel-heading">
      &lt;h4 class="panel-title">
        &lt;a class="accordion-toggle">
          Collapsible Group Item #3
        &lt;/a>
      &lt;/h4>
    &lt;/div>
    &lt;div id="collapseThree" class="panel-collapse">
      &lt;div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      &lt;/div>
    &lt;/div>
  &lt;/div>
&lt;/div></pre>



    <p>If you just want to do a single element, make a button toggle the expanding and collapsing of another element with the <code>Delegator.toggleReveal</code> trigger.</p>
    <div class="bs-example">

      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-trigger="toggleReveal" data-togglereveal-target="!.panel .panel-collapse">
              Collapsible Group Item #1
            </a>
          </h4>
        </div>
        <div id="collapseOne" class="panel-collapse">
          <div class="panel-body">
            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
          </div>
        </div>
      </div>
    </div>


    <h2 id="collapse-usage">Usage</h2>

    <p>See the docs for <code>Fx.Accordion</code> in <a href="http://mootools.net/docs/more/Fx/Fx.Accordion">MooTools More</a> and the docs for <code>Behavior.Accordion</code> on
      <a href="http://dev.clientcide.com">dev.clientcide.com</a></p>



  <!-- Carousel
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="carousel">Carousel</h1>
    </div>

    <p>There is currently no support for the Scrollspy functionality found in Bootstrap.</p>



  <!-- Affix
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="affix">Affix <small>affix.js</small></h1>
    </div>

    <h2 id="affix-examples">Example</h2>
    <p>The subnavigation on the left is a live demo of the affix plugin.</p>

    <hr class="bs-docs-separator">

    <h2 id="affix-usage">Usage</h2>

    <h3>Via data attributes</h3>
    <p>To easily add affix behavior to any element, just add <code>data-behavior="BS.Affix"</code> to the element you want to spy on. Then use offsets to define when to toggle the pinning of an element on and off.</p>

<pre class="prettyprint">&lt;div data-behavior="BS.Affix" data-offset-top="200">...&lt;/div></pre>

    <div class="bs-callout bs-callout-warning">
      <h4>Requires independent styling ;)</h4>
      <p>
        Affix toggles between three states/classes: <code>affix</code>, <code>affix-top</code>, and <code>affix-bottom</code>. You must provide the styles for these classes yourself (independent of this plugin).
        The <code>affix-top</code> class should be in the regular flow of the document. The <code>affix</code> class should be fixed to the page. And <code>affix-bottom</code> should be positioned absolute. Note, <code>affix-bottom</code> is special in that the plugin will place the element with JS relative to the <code>offset: { bottom: number }</code> option you've provided.
      </p>
    </div>

    <h3>Via JavaScript</h3>
    <p>Call the affix plugin via JavaScript:</p>
    <pre class="prettyprint">new Bootstrap.Affix(element, { top: 0 });</pre>


    <h3>Options</h3>
    <p>Options can be passed via data attributes or JavaScript. For data attributes, append the option name to <code>data-</code>, as in <code>data-offset-top="200"</code>.</p>

    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">Name</th>
           <th style="width: 100px;">type</th>
           <th style="width: 250px;">default</th>
           <th>description</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>top</td>
           <td>Number</td>
           <td>0</td>
           <td>The distance from the top that the user must scroll before the <code>affix</code> class is added and the <code>affix-top</code> class is removed.</td>
         </tr>
         <tr>
           <td>bottom</td>
           <td>Number</td>
           <td>null</td>
           <td>The distance from the top that the user must scroll before the <code>affix</code> class is removed and the <code>affix-bottom</code> class is added.
               Specify a negative number to have it measure from the bottom of the window height.</td>
         </tr>
         <tr>
           <td>classNames</td>
           <td>Object</td>
           <td><pre class="prettyprint">{
  top: "affix-top",
  bottom: "affix-bottom",
  affixed: "affix"
}</pre></td>
           <td>The class names to apply in the various states.</td>
         </tr>
         <tr>
           <td>onPin / onUnPin</td>
           <td>function(s)</td>
           <td>~</td>
           <td>Events fired for the pin and unpin actions. the UnPin event is passed a boolean <code>isBottom</code> which is <code>true</code> if the bottom class is added.</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

  </div>

        </div>
      </div>

    </div>

    <!-- Footer
    ================================================== -->
    <footer class="bs-footer" role="contentinfo">
      <div class="container">
        <div class="bs-social">
  <ul class="bs-social-buttons">
    <li>
      <iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=twbs&amp;repo=bootstrap&amp;type=watch&amp;count=true" width="100" height="20" title="Star on GitHub"></iframe>
    </li>
    <li>
      <iframe class="github-btn" src="http://ghbtns.com/github-btn.html?user=twbs&amp;repo=bootstrap&amp;type=fork&amp;count=true" width="102" height="20" title="Fork on GitHub"></iframe>
    </li>
    <li class="follow-btn">
      <a href="https://twitter.com/twbootstrap" class="twitter-follow-button" data-link-color="#0069D6" data-show-count="true">Follow @twbootstrap</a>
    </li>
    <li class="tweet-btn">
      <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://getbootstrap.com/" data-count="horizontal" data-via="twbootstrap" data-related="mdo:Creator of Twitter Bootstrap">Tweet</a>
    </li>
  </ul>
</div>


        <p>Designed and built with all the love in the world by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/anutron" target="_blank">@fat</a>.</p>
        <p>Code licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>, documentation under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <ul class="footer-links">
          <li><a href="../2.3.2/">Bootstrap 2.3.2 docs</a></li>
          <li class="muted">&middot;</li>
          <li><a href="http://blog.getbootstrap.com">Blog</a></li>
          <li class="muted">&middot;</li>
          <li><a href="https://github.com/twbs/bootstrap/issues?state=open">Issues</a></li>
          <li class="muted">&middot;</li>
          <li><a href="https://github.com/twbs/bootstrap/releases">Releases</a></li>
        </ul>
      </div>
    </footer>


<script src="/depender/build?requireLibs=Bootstrap&require=Core/DomReady&require=More-Behaviors/Delegator.ToggleClass&require=More-Behaviors/Delegator.Nix&require=More-Behaviors/Behavior.Accordion&version=${version}"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<script src="${get_asset_url('Behavior-UI','prettify.js', version)}"></script>


<script>

  $(function () { prettyPrint() })

  var behavior = new Behavior({
    // verbose: true
  }).apply(document.body);
  var delegator = new Delegator({
    getBehavior: function(){ return behavior; }
  }).attach(document.body);
</script>