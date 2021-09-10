package com.vungle.warren.ui.view;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import com.vungle.warren.ui.CloseDelegate;
import com.vungle.warren.ui.OrientationDelegate;
import com.vungle.warren.ui.contract.AdContract;
import com.vungle.warren.ui.contract.AdContract.AdvertisementPresenter;
import com.vungle.warren.utility.ActivityManager;
import com.vungle.warren.utility.ExternalRouter;
import java.util.concurrent.atomic.AtomicReference;

public abstract class BaseAdView<T extends AdContract.AdvertisementPresenter> implements AdContract.AdView<T> {
    protected final String TAG = getClass().getSimpleName();
    private final CloseDelegate closeDelegate;
    protected final Context context;
    protected Dialog currentDialog;
    protected Handler handler = new Handler(Looper.getMainLooper());
    private final OrientationDelegate orientationDelegate;
    protected final FullAdWidget view;

    private static class DialogClickListenerProxy implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        private AtomicReference<DialogInterface.OnClickListener> ckickRef = new AtomicReference<>();
        private AtomicReference<DialogInterface.OnDismissListener> dismissRef = new AtomicReference<>();

        public DialogClickListenerProxy(DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
            this.ckickRef.set(onClickListener);
            this.dismissRef.set(onDismissListener);
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private void autoRelease(Dialog dialog) {
            dialog.setOnDismissListener(this);
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            DialogInterface.OnClickListener onClickListener = this.ckickRef.get();
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }

        public void onDismiss(DialogInterface dialogInterface) {
            DialogInterface.OnDismissListener onDismissListener = this.dismissRef.get();
            if (onDismissListener != null) {
                onDismissListener.onDismiss(dialogInterface);
            }
            this.dismissRef.set(null);
            this.ckickRef.set(null);
        }
    }

    public BaseAdView(Context context2, FullAdWidget fullAdWidget, OrientationDelegate orientationDelegate2, CloseDelegate closeDelegate2) {
        this.view = fullAdWidget;
        this.context = context2;
        this.orientationDelegate = orientationDelegate2;
        this.closeDelegate = closeDelegate2;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void close() {
        this.closeDelegate.close();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void destroyAdView(long j) {
        this.view.release(j);
    }

    /* access modifiers changed from: protected */
    public DialogInterface.OnDismissListener getDialogDismissListener() {
        return new DialogInterface.OnDismissListener() {
            /* class com.vungle.warren.ui.view.BaseAdView.AnonymousClass2 */

            public void onDismiss(DialogInterface dialogInterface) {
                BaseAdView.this.currentDialog = null;
            }
        };
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public String getWebsiteUrl() {
        return this.view.getUrl();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public boolean hasWebView() {
        return this.view.hasWebView();
    }

    public boolean isDialogVisible() {
        return this.currentDialog != null;
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void open(String str, ActivityManager.LeftApplicationCallback leftApplicationCallback) {
        if (!ExternalRouter.launch(str, this.context, leftApplicationCallback)) {
            String str2 = this.TAG;
            Log.e(str2, "Cannot open url " + str);
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void pauseWeb() {
        this.view.pauseWeb();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void refreshDialogIfVisible() {
        if (isDialogVisible()) {
            this.currentDialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
                /* class com.vungle.warren.ui.view.BaseAdView.AnonymousClass3 */

                public void onDismiss(DialogInterface dialogInterface) {
                    BaseAdView baseAdView = BaseAdView.this;
                    baseAdView.currentDialog.setOnDismissListener(baseAdView.getDialogDismissListener());
                }
            });
            this.currentDialog.dismiss();
            this.currentDialog.show();
        }
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void removeWebView() {
        this.view.destroyWebView(0);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void resumeWeb() {
        this.view.resumeWeb();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setImmersiveMode() {
        this.view.setImmersiveMode();
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void setOrientation(int i) {
        this.orientationDelegate.setOrientation(i);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showCloseButton() {
        this.view.showCloseButton(true);
    }

    @Override // com.vungle.warren.ui.contract.AdContract.AdView
    public void showDialog(String str, String str2, String str3, String str4, final DialogInterface.OnClickListener onClickListener) {
        Context context2 = this.context;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context2, context2.getApplicationInfo().theme));
        DialogClickListenerProxy dialogClickListenerProxy = new DialogClickListenerProxy(new DialogInterface.OnClickListener() {
            /* class com.vungle.warren.ui.view.BaseAdView.AnonymousClass1 */

            public void onClick(DialogInterface dialogInterface, int i) {
                BaseAdView.this.currentDialog = null;
                DialogInterface.OnClickListener onClickListener = onClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(dialogInterface, i);
                }
            }
        }, getDialogDismissListener());
        if (!TextUtils.isEmpty(str)) {
            builder.setTitle(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            builder.setMessage(str2);
        }
        builder.setPositiveButton(str3, dialogClickListenerProxy);
        builder.setNegativeButton(str4, dialogClickListenerProxy);
        builder.setCancelable(false);
        AlertDialog create = builder.create();
        this.currentDialog = create;
        dialogClickListenerProxy.autoRelease(create);
        this.currentDialog.show();
    }
}
