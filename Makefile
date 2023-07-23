# run using default (auto) option: HTML renderer on mobile browsers and CanvasKit on desktop browsers.
run:
	flutter run -d chrome

run-html:
	flutter run -d chrome --web-renderer html

# release using default (auto) option: HTML renderer on mobile browsers and CanvasKit on desktop browsers.
release:
	flutter build web --release
