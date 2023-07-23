# run using default (auto) option: HTML renderer on mobile browsers and CanvasKit on desktop browsers.
run:
	flutter run -d chrome

run-html:
	flutter run -d chrome --web-renderer html

run-prod:
	flutter run --release -d chrome

# release using default (auto) option: HTML renderer on mobile browsers and CanvasKit on desktop browsers.
release:
	flutter build web --release
