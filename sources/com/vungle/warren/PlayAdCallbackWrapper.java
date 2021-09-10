package com.vungle.warren;

import com.vungle.warren.error.VungleException;
import java.util.concurrent.ExecutorService;

/* access modifiers changed from: package-private */
public class PlayAdCallbackWrapper implements PlayAdCallback {
    private final ExecutorService executorService;
    private final PlayAdCallback playAdCallback;

    public PlayAdCallbackWrapper(ExecutorService executorService2, PlayAdCallback playAdCallback2) {
        this.playAdCallback = playAdCallback2;
        this.executorService = executorService2;
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdClick(final String str) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass4 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdClick(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(final String str, final boolean z, final boolean z2) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass2 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdEnd(str, z, z2);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdLeftApplication(final String str) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass5 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdLeftApplication(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdRewarded(final String str) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass6 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdRewarded(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdStart(final String str) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass1 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdStart(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdViewed(final String str) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass8 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdViewed(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onError(final String str, final VungleException vungleException) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass7 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onError(str, vungleException);
                }
            });
        }
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(final String str) {
        if (this.playAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass3 */

                public void run() {
                    PlayAdCallbackWrapper.this.playAdCallback.onAdEnd(str);
                }
            });
        }
    }
}
