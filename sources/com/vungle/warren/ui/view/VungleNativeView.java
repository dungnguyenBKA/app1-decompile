package com.vungle.warren.ui.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewManager;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.vungle.warren.AdConfig;
import com.vungle.warren.PresentationFactory;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.VungleNativeAd;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.JavascriptBridge;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.WebAdContract;
import com.vungle.warren.utility.ActivityManager;
import com.vungle.warren.utility.ExternalRouter;
import com.vungle.warren.utility.HandlerScheduler;
import java.util.concurrent.atomic.AtomicReference;

public class VungleNativeView extends WebView implements WebAdContract.WebAdView, VungleNativeAd {
    private static final String TAG = VungleNativeView.class.getName();
    private BroadcastReceiver broadcastReceiver;
    private final AdConfig config;
    private boolean destroyed;
    private AtomicReference<Boolean> isAdVisible = new AtomicReference<>();
    private final AdContract.AdvertisementPresenter.EventListener listener;
    private final String placementID;
    private WebAdContract.WebAdPresenter presenter;
    PresentationFactory presenterFactory;

    public VungleNativeView(Context context, String str, AdConfig adConfig, PresentationFactory presentationFactory, AdContract.AdvertisementPresenter.EventListener eventListener) {
        super(context);
        this.listener = eventListener;
        this.placementID = str;
        this.config = adConfig;
        this.presenterFactory = presentationFactory;
        setLayerType(2, null);
        setBackgroundColor(0);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void prepare(Bundle bundle) {
        WebSettingsUtils.applyDefault(this);
        addJavascriptInterface(new JavascriptBridge(this.presenter), "Android");
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        getSettings().setMediaPlaybackRequiresUserGesture(false);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void close() {
        WebAdContract.WebAdPresenter webAdPresenter = this.presenter;
        if (webAdPresenter == null) {
            PresentationFactory presentationFactory = this.presenterFactory;
            if (presentationFactory != null) {
                presentationFactory.destroy();
                this.presenterFactory = null;
                this.listener.onError(new VungleException(25), this.placementID);
            }
        } else if (webAdPresenter.handleExit()) {
            finishDisplayingAdInternal(false);
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void destroyAdView(long j) {
        if (!this.destroyed) {
            this.destroyed = true;
            this.presenter = null;
            this.presenterFactory = null;
            removeJavascriptInterface("Android");
            setWebChromeClient(null);
            AnonymousClass1 r0 = new Runnable() {
                /* class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass1 */

                public void run() {
                    VungleNativeView.this.stopLoading();
                    VungleNativeView.this.setWebViewClient(null);
                    if (Build.VERSION.SDK_INT >= 29) {
                        VungleNativeView.this.setWebViewRenderProcessClient(null);
                    }
                    VungleNativeView.this.loadUrl("about:blank");
                }
            };
            if (j <= 0) {
                r0.run();
            } else {
                new HandlerScheduler().schedule(r0, j);
            }
        }
    }

    @Override // com.vungle.warren.VungleNativeAd
    public void finishDisplayingAd() {
        finishDisplayingAdInternal(true);
    }

    public void finishDisplayingAdInternal(boolean z) {
        WebAdContract.WebAdPresenter webAdPresenter = this.presenter;
        if (webAdPresenter != null) {
            webAdPresenter.detach((z ? 4 : 0) | 2);
        } else {
            PresentationFactory presentationFactory = this.presenterFactory;
            if (presentationFactory != null) {
                presentationFactory.destroy();
                this.presenterFactory = null;
                this.listener.onError(new VungleException(25), this.placementID);
            }
        }
        destroyAdView(0);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public String getWebsiteUrl() {
        return getUrl();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public boolean hasWebView() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        PresentationFactory presentationFactory = this.presenterFactory;
        if (presentationFactory != null && this.presenter == null) {
            presentationFactory.getNativeViewPresentation(this.placementID, this.config, new CloseDelegate() {
                /* class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass2 */

                @Override // com.vungle.warren.ui.CloseDelegate
                public void close() {
                    VungleNativeView.this.finishDisplayingAdInternal(false);
                }
            }, new PresentationFactory.ViewCallback() {
                /* class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass3 */

                @Override // com.vungle.warren.PresentationFactory.ViewCallback
                public void onResult(Pair<WebAdContract.WebAdPresenter, VungleWebClient> pair, VungleException vungleException) {
                    VungleNativeView vungleNativeView = VungleNativeView.this;
                    vungleNativeView.presenterFactory = null;
                    if (pair != null && vungleException == null) {
                        vungleNativeView.presenter = (WebAdContract.WebAdPresenter) pair.first;
                        VungleNativeView.this.setWebViewClient((VungleWebClient) pair.second);
                        VungleNativeView.this.presenter.setEventListener(VungleNativeView.this.listener);
                        VungleNativeView.this.presenter.attach(VungleNativeView.this, null);
                        VungleNativeView.this.prepare(null);
                        if (VungleNativeView.this.isAdVisible.get() != null) {
                            VungleNativeView vungleNativeView2 = VungleNativeView.this;
                            vungleNativeView2.setAdVisibility(((Boolean) vungleNativeView2.isAdVisible.get()).booleanValue());
                        }
                    } else if (vungleNativeView.listener != null) {
                        AdContract.AdvertisementPresenter.EventListener eventListener = VungleNativeView.this.listener;
                        if (vungleException == null) {
                            vungleException = new VungleException(10);
                        }
                        eventListener.onError(vungleException, VungleNativeView.this.placementID);
                    }
                }
            });
        }
        this.broadcastReceiver = new BroadcastReceiver() {
            /* class com.vungle.warren.ui.view.VungleNativeView.AnonymousClass4 */

            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra(AdContract.AdvertisementBus.COMMAND);
                if (AdContract.AdvertisementBus.STOP_ALL.equalsIgnoreCase(stringExtra)) {
                    VungleNativeView.this.finishDisplayingAdInternal(false);
                    return;
                }
                VungleLogger.warn(VungleNativeView.class.getSimpleName() + "#onAttachedToWindow", String.format("Receiving Invalid Broadcast: %1$s", stringExtra));
            }
        };
        c4.b(getContext()).c(this.broadcastReceiver, new IntentFilter(AdContract.AdvertisementBus.ACTION));
        resumeWeb();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        c4.b(getContext()).e(this.broadcastReceiver);
        super.onDetachedFromWindow();
        PresentationFactory presentationFactory = this.presenterFactory;
        if (presentationFactory != null) {
            presentationFactory.destroy();
        }
        pauseWeb();
    }

    public void onPause() {
        super.onPause();
        setAdVisibility(false);
    }

    public void onResume() {
        super.onResume();
        setAdVisibility(true);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        setAdVisibility(z);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void open(String str, ActivityManager.LeftApplicationCallback leftApplicationCallback) {
        String str2 = TAG;
        if (!ExternalRouter.launch(str, getContext(), leftApplicationCallback)) {
            Log.e(str2, "Cannot open url " + str);
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void pauseWeb() {
        onPause();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void refreshDialogIfVisible() {
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void removeWebView() {
        ViewParent parent = getParent();
        if (parent instanceof ViewManager) {
            ((ViewManager) parent).removeView(this);
        }
    }

    @Override // com.vungle.warren.VungleNativeAd
    public View renderNativeView() {
        return this;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void resumeWeb() {
        onResume();
    }

    @Override // com.vungle.warren.VungleNativeAd
    public void setAdVisibility(boolean z) {
        WebAdContract.WebAdPresenter webAdPresenter = this.presenter;
        if (webAdPresenter != null) {
            webAdPresenter.setAdVisibility(z);
        } else {
            this.isAdVisible.set(Boolean.valueOf(z));
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setImmersiveMode() {
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setOrientation(int i) {
    }

    public void setPresenter(WebAdContract.WebAdPresenter webAdPresenter) {
    }

    @Override // com.vungle.warren.ui.contract.WebAdContract.WebAdView
    public void setVisibility(boolean z) {
        setVisibility(z ? 0 : 4);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showCloseButton() {
        throw new UnsupportedOperationException("VungleNativeView does not implement a close button");
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showDialog(String str, String str2, String str3, String str4, DialogInterface.OnClickListener onClickListener) {
        throw new UnsupportedOperationException("VungleNativeView does not implement a dialog.");
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showWebsite(String str) {
        loadUrl(str);
    }

    @Override // com.vungle.warren.ui.contract.WebAdContract.WebAdView
    public void updateWindow() {
    }
}
