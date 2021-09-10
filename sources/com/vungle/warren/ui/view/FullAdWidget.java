package com.vungle.warren.ui.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.utility.HandlerScheduler;
import com.vungle.warren.utility.ViewUtility;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Map;

public class FullAdWidget extends RelativeLayout {
    private static final String TAG = FullAdWidget.class.getSimpleName();
    private final ImageView closeButton;
    private final ImageView ctaOverlay;
    private GestureDetector gestureDetector;
    ViewTreeObserver.OnGlobalLayoutListener immersiveModeListener = new ViewTreeObserver.OnGlobalLayoutListener() {
        /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass6 */

        public void onGlobalLayout() {
            FullAdWidget.this.removeImmersiveModeListener();
            FullAdWidget.this.window.getDecorView().setSystemUiVisibility(5894);
        }
    };
    private final RelativeLayout.LayoutParams matchParentLayoutParams;
    private final ImageView muteButton;
    private OnItemClickListener onClickProxy;
    private MediaPlayer.OnCompletionListener onCompletionListener;
    private MediaPlayer.OnErrorListener onErrorListener;
    private MediaPlayer.OnPreparedListener onPreparedListener;
    private final ImageView privacyOverlay;
    private final ProgressBar progressBar;
    private View.OnClickListener proxyClickListener = new View.OnClickListener() {
        /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass7 */

        public void onClick(View view) {
            if (FullAdWidget.this.onClickProxy != null) {
                FullAdWidget.this.onClickProxy.onItemClicked(FullAdWidget.this.matchView(view));
            }
        }
    };
    private GestureDetector.SimpleOnGestureListener singleTapOnVideoListener = new GestureDetector.SimpleOnGestureListener() {
        /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass1 */

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            FullAdWidget.this.proxyClickListener.onClick(FullAdWidget.this.videoViewContainer);
            return true;
        }
    };
    private int startPosition;
    public final VideoView videoView;
    private final RelativeLayout videoViewContainer;
    private Map<View, Integer> viewToId = new HashMap();
    private WebView webView;
    private final Window window;

    public static class AudioContextWrapper extends ContextWrapper {
        public AudioContextWrapper(Context context) {
            super(context);
        }

        @Override // android.content.Context, android.content.ContextWrapper
        public Object getSystemService(String str) {
            if ("audio".equals(str)) {
                return getApplicationContext().getSystemService(str);
            }
            return super.getSystemService(str);
        }
    }

    /* access modifiers changed from: private */
    public static class DestroyRunnable implements Runnable {
        private WebView webView;

        DestroyRunnable(WebView webView2) {
            this.webView = webView2;
        }

        public void run() {
            this.webView.stopLoading();
            this.webView.setWebViewClient(null);
            if (Build.VERSION.SDK_INT >= 29) {
                this.webView.setWebViewRenderProcessClient(null);
            }
            this.webView.loadData("", null, null);
            this.webView.destroy();
        }
    }

    public interface OnItemClickListener {
        void onItemClicked(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewEvent {
        public static final int CLOSE_CLICK = 1;
        public static final int CTA_CLICK = 2;
        public static final int MUTE_CLICK = 3;
        public static final int PRIVACY_CLICK = 4;
        public static final int VIDEO_CLICK = 5;
    }

    public FullAdWidget(Context context, Window window2) {
        super(context);
        this.window = window2;
        Resources resources = getResources();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.matchParentLayoutParams = layoutParams;
        setLayoutParams(layoutParams);
        VideoView videoView2 = new VideoView(new AudioContextWrapper(context));
        this.videoView = videoView2;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        videoView2.setLayoutParams(layoutParams2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.videoViewContainer = relativeLayout;
        relativeLayout.setTag("videoViewContainer");
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.addView(videoView2, layoutParams2);
        addView(relativeLayout, layoutParams);
        this.gestureDetector = new GestureDetector(context, this.singleTapOnVideoListener);
        WebView webView2 = ViewUtility.getWebView(context);
        this.webView = webView2;
        webView2.setLayoutParams(layoutParams);
        this.webView.setTag("webView");
        addView(this.webView, layoutParams);
        ProgressBar progressBar2 = new ProgressBar(context, null, 16842872);
        this.progressBar = progressBar2;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 4.0f, resources.getDisplayMetrics()));
        layoutParams3.addRule(12);
        progressBar2.setLayoutParams(layoutParams3);
        progressBar2.setMax(100);
        progressBar2.setIndeterminate(false);
        progressBar2.setVisibility(4);
        addView(progressBar2);
        int applyDimension = (int) TypedValue.applyDimension(1, 24.0f, resources.getDisplayMetrics());
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        int applyDimension2 = (int) TypedValue.applyDimension(1, 12.0f, resources.getDisplayMetrics());
        layoutParams4.setMargins(applyDimension2, applyDimension2, applyDimension2, applyDimension2);
        ImageView imageView = new ImageView(context);
        this.muteButton = imageView;
        imageView.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.unMute, context));
        imageView.setLayoutParams(layoutParams4);
        imageView.setVisibility(8);
        addView(imageView);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams5.setMargins(applyDimension2, applyDimension2, applyDimension2, applyDimension2);
        ImageView imageView2 = new ImageView(context);
        this.closeButton = imageView2;
        imageView2.setTag("closeButton");
        imageView2.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.close, context));
        layoutParams5.addRule(11);
        imageView2.setLayoutParams(layoutParams5);
        imageView2.setVisibility(8);
        addView(imageView2);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams6.addRule(12);
        layoutParams6.addRule(11);
        layoutParams6.setMargins(applyDimension2, applyDimension2, applyDimension2, applyDimension2);
        ImageView imageView3 = new ImageView(context);
        this.ctaOverlay = imageView3;
        imageView3.setTag("ctaOverlay");
        imageView3.setLayoutParams(layoutParams6);
        imageView3.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.cta, getContext()));
        imageView3.setVisibility(8);
        addView(imageView3);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams7.addRule(12);
        layoutParams7.addRule(9);
        layoutParams7.setMargins(applyDimension2, applyDimension2, applyDimension2, applyDimension2);
        ImageView imageView4 = new ImageView(context);
        this.privacyOverlay = imageView4;
        imageView4.setLayoutParams(layoutParams7);
        imageView4.setVisibility(8);
        addView(imageView4);
        bindListeners();
        prepare();
    }

    private void bindListener(View view, int i) {
        this.viewToId.put(view, Integer.valueOf(i));
        view.setOnClickListener(this.proxyClickListener);
    }

    private void bindListeners() {
        bindListener(this.closeButton, 1);
        bindListener(this.ctaOverlay, 2);
        bindListener(this.muteButton, 3);
        bindListener(this.privacyOverlay, 4);
        this.viewToId.put(this.videoViewContainer, 5);
        this.videoViewContainer.setOnTouchListener(new View.OnTouchListener() {
            /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass2 */

            public boolean onTouch(View view, MotionEvent motionEvent) {
                FullAdWidget.this.gestureDetector.onTouchEvent(motionEvent);
                return true;
            }
        });
        this.videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
            /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass3 */

            public void onPrepared(MediaPlayer mediaPlayer) {
                if (Build.VERSION.SDK_INT >= 26) {
                    mediaPlayer.seekTo((long) FullAdWidget.this.startPosition, 3);
                }
                if (FullAdWidget.this.onPreparedListener != null) {
                    FullAdWidget.this.onPreparedListener.onPrepared(mediaPlayer);
                }
                FullAdWidget.this.muteButton.setVisibility(0);
            }
        });
        this.videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() {
            /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass4 */

            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                if (FullAdWidget.this.onErrorListener != null) {
                    return FullAdWidget.this.onErrorListener.onError(mediaPlayer, i, i2);
                }
                return false;
            }
        });
        this.videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            /* class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass5 */

            public void onCompletion(MediaPlayer mediaPlayer) {
                if (FullAdWidget.this.onCompletionListener != null) {
                    FullAdWidget.this.onCompletionListener.onCompletion(mediaPlayer);
                }
                FullAdWidget.this.muteButton.setEnabled(false);
            }
        });
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private int matchView(View view) {
        Integer num = this.viewToId.get(view);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    private void prepare() {
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.getSettings().setMediaPlaybackRequiresUserGesture(false);
            this.webView.setVisibility(8);
        }
        this.videoViewContainer.setVisibility(8);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void removeImmersiveModeListener() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this.immersiveModeListener);
    }

    public void destroyWebView(long j) {
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.removeJavascriptInterface("Android");
            this.webView.setWebChromeClient(null);
            removeView(this.webView);
            this.webView.removeAllViews();
            if (j <= 0) {
                new DestroyRunnable(this.webView).run();
            } else {
                new HandlerScheduler().schedule(new DestroyRunnable(this.webView), j);
            }
            this.webView = null;
        }
    }

    public int getCurrentVideoPosition() {
        return this.videoView.getCurrentPosition();
    }

    public String getUrl() {
        WebView webView2 = this.webView;
        if (webView2 == null) {
            return null;
        }
        return webView2.getUrl();
    }

    public int getVideoDuration() {
        return this.videoView.getDuration();
    }

    /* access modifiers changed from: package-private */
    public WebView getWebView() {
        return this.webView;
    }

    public boolean hasWebView() {
        return this.webView != null;
    }

    public boolean isVideoPlaying() {
        return this.videoView.isPlaying();
    }

    public void linkWebView(WebViewClient webViewClient, JavascriptBridge javascriptBridge) {
        WebView webView2 = this.webView;
        if (webView2 != null) {
            WebSettingsUtils.applyDefault(webView2);
            this.webView.setWebViewClient(webViewClient);
            this.webView.addJavascriptInterface(javascriptBridge, "Android");
        }
    }

    public void pausePlayback() {
        this.videoView.pause();
    }

    public void pauseWeb() {
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.onPause();
        }
        removeImmersiveModeListener();
    }

    public void playVideo(Uri uri, int i) {
        this.videoViewContainer.setVisibility(0);
        this.videoView.setVideoURI(uri);
        this.privacyOverlay.setImageBitmap(ViewUtility.getBitmap(ViewUtility.Asset.privacy, getContext()));
        this.privacyOverlay.setVisibility(0);
        this.progressBar.setVisibility(0);
        this.progressBar.setMax(this.videoView.getDuration());
        startPlayback(i);
    }

    public void release(long j) {
        this.videoView.stopPlayback();
        this.videoView.setOnCompletionListener(null);
        this.videoView.setOnErrorListener(null);
        this.videoView.setOnPreparedListener(null);
        this.videoView.suspend();
        destroyWebView(j);
    }

    public void resumeWeb() {
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.onResume();
        }
    }

    public void setCtaEnabled(boolean z) {
        this.ctaOverlay.setVisibility(z ? 0 : 8);
    }

    public void setImmersiveMode() {
        getViewTreeObserver().addOnGlobalLayoutListener(this.immersiveModeListener);
    }

    public void setMuted(boolean z) {
        Bitmap bitmap = ViewUtility.getBitmap(ViewUtility.Asset.mute, getContext());
        Bitmap bitmap2 = ViewUtility.getBitmap(ViewUtility.Asset.unMute, getContext());
        ImageView imageView = this.muteButton;
        if (!z) {
            bitmap = bitmap2;
        }
        imageView.setImageBitmap(bitmap);
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener2) {
        this.onCompletionListener = onCompletionListener2;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener2) {
        this.onErrorListener = onErrorListener2;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onClickProxy = onItemClickListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener2) {
        this.onPreparedListener = onPreparedListener2;
    }

    public void setProgress(int i, float f) {
        this.progressBar.setMax((int) f);
        this.progressBar.setProgress(i);
    }

    public void showCloseButton(boolean z) {
        this.closeButton.setVisibility(z ? 0 : 8);
    }

    public void showWebsite(String str) {
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.loadUrl(str);
            this.webView.setVisibility(0);
            this.videoViewContainer.setVisibility(8);
            this.videoViewContainer.setOnClickListener(null);
            this.progressBar.setVisibility(8);
            this.closeButton.setVisibility(8);
            this.muteButton.setVisibility(8);
            this.ctaOverlay.setVisibility(8);
            this.privacyOverlay.setVisibility(8);
        }
    }

    public boolean startPlayback(int i) {
        if (!this.videoView.isPlaying()) {
            this.videoView.requestFocus();
            this.startPosition = i;
            if (Build.VERSION.SDK_INT < 26) {
                this.videoView.seekTo(i);
            }
            this.videoView.start();
        }
        return this.videoView.isPlaying();
    }

    public void stopPlayback() {
        this.videoView.stopPlayback();
    }

    public void updateWindow() {
        this.window.setFlags(1024, 1024);
        this.window.getDecorView().setBackgroundColor(-16777216);
    }
}
