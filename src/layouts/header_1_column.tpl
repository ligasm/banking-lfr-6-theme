<div id="content">
    <div class="columns-1" id="main-content" role="main">

        <header id="top" class="header">
            <div class="text-vertical-center">
                <div class="main-selector">
                    <div class="portlet-column portlet-column-first" id="column-1">
                        $processor.processColumn("column-1", "portlet-column-content portlet-column-content-first")
                    </div>
                </div>
                <div class="main-offer">
                    <div class="portlet-column" id="column-2">
                        $processor.processColumn("column-2", "portlet-column-content")
                    </div>
                </div>
            </div>
        </header>

        <div class="portlet-layout row-fluid">
            <div class="portlet-column portlet-column-last span12" id="column-3">
                $processor.processColumn("column-3", "portlet-column-content portlet-column-content-last")
            </div>
        </div>
    </div>
</div>
