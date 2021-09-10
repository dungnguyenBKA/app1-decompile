package com.vungle.warren;

import com.vungle.warren.error.VungleException;
import java.util.concurrent.ExecutorService;

/* access modifiers changed from: package-private */
public class InitCallbackWrapper implements InitCallback {
    private final InitCallback callback;
    private final ExecutorService executorService;

    InitCallbackWrapper(ExecutorService executorService2, InitCallback initCallback) {
        this.callback = initCallback;
        this.executorService = executorService2;
    }

    @Override // com.vungle.warren.InitCallback
    public void onAutoCacheAdAvailable(final String str) {
        if (this.callback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.InitCallbackWrapper.AnonymousClass3 */

                public void run() {
                    InitCallbackWrapper.this.callback.onAutoCacheAdAvailable(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.InitCallback
    public void onError(final VungleException vungleException) {
        if (this.callback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.InitCallbackWrapper.AnonymousClass2 */

                public void run() {
                    InitCallbackWrapper.this.callback.onError(vungleException);
                }
            });
        }
    }

    @Override // com.vungle.warren.InitCallback
    public void onSuccess() {
        if (this.callback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.InitCallbackWrapper.AnonymousClass1 */

                public void run() {
                    InitCallbackWrapper.this.callback.onSuccess();
                }
            });
        }
    }
}
