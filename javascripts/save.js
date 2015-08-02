var system = require('system');
var args = system.args;

var page = require('webpage').create();
page.viewportSize = { width: 1280, height: 720 };

if (args.length === 3) {
    var url = args[1],
        path = args[2];

    console.log('Saving `' + url + '` into `' + path + '`');

    page.open(url, function(status) {
        console.log('Status: ' + status);
        if (status === 'success') {
            page.render(path);
        }
        phantom.exit();
    });
} else {
    console.log('Try to pass some arguments when invoking this script!');
    phantom.exit();
}
