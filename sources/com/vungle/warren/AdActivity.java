package com.vungle.warren;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.vungle.warren.PresentationFactory;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.state.BundleOptionsState;
import com.vungle.warren.ui.state.OptionsState;
import com.vungle.warren.ui.view.FullAdWidget;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class AdActivity extends Activity {
    public static final String PLACEMENT_EXTRA = "placement";
    public static final String PRESENTER_STATE = "presenter_state";
    private static final String TAG = "VungleActivity";
    private static AdContract.AdvertisementPresenter.EventListener bus;
    private BroadcastReceiver broadcastReceiver;
    private PresentationFactory.FullScreenCallback fullscreenCallback = new PresentationFactory.FullScreenCallback() {
        /* class com.vungle.warren.AdActivity.AnonymousClass4 */

        @Override // com.vungle.warren.PresentationFactory.FullScreenCallback
        public void onResult(Pair<AdContract.AdView, AdContract.AdvertisementPresenter> pair, VungleException vungleException) {
            if (pair == null || vungleException != null) {
                AdActivity.this.presenterFactory = null;
                AdActivity adActivity = AdActivity.this;
                adActivity.deliverError(10, adActivity.placementId);
                AdActivity.this.finish();
                return;
            }
            AdActivity.this.presenter = (AdContract.AdvertisementPresenter) pair.second;
            AdActivity.this.presenter.setEventListener(AdActivity.bus);
            AdActivity.this.presenter.attach((AdContract.AdView) pair.first, AdActivity.this.state);
            if (AdActivity.this.pendingStart.getAndSet(false)) {
                AdActivity.this.start();
            }
        }
    };
    private AtomicBoolean pendingStart = new AtomicBoolean(false);
    private String placementId;
    private AdContract.AdvertisementPresenter presenter;
    private PresentationFactory presenterFactory;
    private boolean resumed = false;
    private boolean started = false;
    private OptionsState state;

    private void connectBroadcastReceiver() {
        this.broadcastReceiver = new BroadcastReceiver() {
            /* class com.vungle.warren.AdActivity.AnonymousClass3 */

            public void onReceive(Context context, Intent intent) {
                String stringExtra = intent.getStringExtra(AdContract.AdvertisementBus.COMMAND);
                stringExtra.hashCode();
                if (!stringExtra.equals(AdContract.AdvertisementBus.STOP_ALL)) {
                    VungleLogger.warn(AdActivity.class.getSimpleName() + "#connectBroadcastReceiver", String.format("Receiving Invalid Broadcast: %1$s", stringExtra));
                    return;
                }
                AdActivity.this.finish();
            }
        };
        c4.b(getApplicationContext()).c(this.broadcastReceiver, new IntentFilter(AdContract.AdvertisementBus.ACTION));
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void deliverError(int i, String str) {
        VungleException vungleException = new VungleException(i);
        AdContract.AdvertisementPresenter.EventListener eventListener = bus;
        if (eventListener != null) {
            eventListener.onError(vungleException, str);
        }
        VungleLogger.error(AdActivity.class.getSimpleName() + "#deliverError", vungleException.getLocalizedMessage());
    }

    protected static AdContract.AdvertisementPresenter.EventListener getEventListener() {
        return bus;
    }

    public static void setEventListener(AdContract.AdvertisementPresenter.EventListener eventListener) {
        bus = eventListener;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void start() {
        if (this.presenter == null) {
            this.pendingStart.set(true);
        } else if (!this.started && this.resumed && hasWindowFocus()) {
            this.presenter.start();
            this.started = true;
        }
    }

    private void stop() {
        if (this.presenter != null && this.started) {
            this.presenter.stop(isChangingConfigurations() | (isFinishing() ? 2 : 0));
            this.started = false;
        }
        this.pendingStart.set(false);
    }

    /* access modifiers changed from: protected */
    public abstract boolean canRotate();

    @SuppressLint({"ResourceType"})
    public void onBackPressed() {
        AdContract.AdvertisementPresenter advertisementPresenter = this.presenter;
        if (advertisementPresenter != null) {
            advertisementPresenter.handleExit();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != 2) {
        }
        AdContract.AdvertisementPresenter advertisementPresenter = this.presenter;
        if (advertisementPresenter != null) {
            advertisementPresenter.onViewConfigurationChanged();
        }
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        OptionsState optionsState;
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        this.placementId = getIntent().getStringExtra("placement");
        ServiceLocator instance = ServiceLocator.getInstance(this);
        if (!((VungleStaticApi) instance.getService(VungleStaticApi.class)).isInitialized() || bus == null || TextUtils.isEmpty(this.placementId)) {
            finish();
            return;
        }
        try {
            FullAdWidget fullAdWidget = new FullAdWidget(this, getWindow());
            this.presenterFactory = (PresentationFactory) instance.getService(PresentationFactory.class);
            if (bundle == null) {
                optionsState = null;
            } else {
                optionsState = (OptionsState) bundle.getParcelable(PRESENTER_STATE);
            }
            this.state = optionsState;
            this.presenterFactory.getFullScreenPresentation(this, this.placementId, fullAdWidget, optionsState, new CloseDelegate() {
                /* class com.vungle.warren.AdActivity.AnonymousClass1 */

                @Override // com.vungle.warren.ui.CloseDelegate
                public void close() {
                    AdActivity.this.finish();
                }
            }, new OrientationDelegate() {
                /* class com.vungle.warren.AdActivity.AnonymousClass2 */

                @Override // com.vungle.warren.ui.OrientationDelegate
                public void setOrientation(int i) {
                    AdActivity.this.setRequestedOrientation(i);
                }
            }, bundle, this.fullscreenCallback);
            setContentView(fullAdWidget, fullAdWidget.getLayoutParams());
            connectBroadcastReceiver();
        } catch (InstantiationException unused) {
            deliverError(10, this.placementId);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        c4.b(getApplicationContext()).e(this.broadcastReceiver);
        AdContract.AdvertisementPresenter advertisementPresenter = this.presenter;
        if (advertisementPresenter != null) {
            advertisementPresenter.detach(isChangingConfigurations() | 2);
        } else {
            PresentationFactory presentationFactory = this.presenterFactory;
            if (presentationFactory != null) {
                presentationFactory.destroy();
                this.presenterFactory = null;
                AdContract.AdvertisementPresenter.EventListener eventListener = bus;
                if (eventListener != null) {
                    eventListener.onError(new VungleException(25), this.placementId);
                }
            }
        }
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        String stringExtra = getIntent().getStringExtra("placement");
        String stringExtra2 = intent.getStringExtra("placement");
        if (stringExtra != null && stringExtra2 != null && !stringExtra.equals(stringExtra2)) {
            deliverError(15, stringExtra2);
            VungleLogger.warn(AdActivity.class.getSimpleName() + "#onNewIntent", String.format("Tried to play another placement %1$s while playing %2$s", stringExtra2, stringExtra));
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.resumed = false;
        stop();
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Bundle bundle) {
        AdContract.AdvertisementPresenter advertisementPresenter;
        super.onRestoreInstanceState(bundle);
        String str = "onRestoreInstanceState(" + bundle + ")";
        if (bundle != null && (advertisementPresenter = this.presenter) != null) {
            advertisementPresenter.restoreFromSave((OptionsState) bundle.getParcelable(PRESENTER_STATE));
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.resumed = true;
        start();
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        BundleOptionsState bundleOptionsState = new BundleOptionsState();
        AdContract.AdvertisementPresenter advertisementPresenter = this.presenter;
        if (advertisementPresenter != null) {
            advertisementPresenter.generateSaveState(bundleOptionsState);
            bundle.putParcelable(PRESENTER_STATE, bundleOptionsState);
        }
        PresentationFactory presentationFactory = this.presenterFactory;
        if (presentationFactory != null) {
            presentationFactory.saveState(bundle);
        }
        super.onSaveInstanceState(bundle);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            start();
        } else {
            stop();
        }
    }

    public void setRequestedOrientation(int i) {
        if (canRotate()) {
            super.setRequestedOrientation(i);
        }
    }
}
