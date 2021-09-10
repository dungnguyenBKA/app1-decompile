package com.vungle.warren;

import com.vungle.warren.error.VungleException;
import java.util.concurrent.ExecutorService;

/* access modifiers changed from: package-private */
public class LoadAdCallbackWrapper implements LoadAdCallback {
    private final ExecutorService executorService;
    private final LoadAdCallback loadAdCallback;

    public LoadAdCallbackWrapper(ExecutorService executorService2, LoadAdCallback loadAdCallback2) {
        this.loadAdCallback = loadAdCallback2;
        this.executorService = executorService2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LoadAdCallbackWrapper loadAdCallbackWrapper = (LoadAdCallbackWrapper) obj;
        LoadAdCallback loadAdCallback2 = this.loadAdCallback;
        if (loadAdCallback2 == null ? loadAdCallbackWrapper.loadAdCallback != null : !loadAdCallback2.equals(loadAdCallbackWrapper.loadAdCallback)) {
            return false;
        }
        ExecutorService executorService2 = this.executorService;
        ExecutorService executorService3 = loadAdCallbackWrapper.executorService;
        if (executorService2 != null) {
            return executorService2.equals(executorService3);
        }
        if (executorService3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        LoadAdCallback loadAdCallback2 = this.loadAdCallback;
        int i = 0;
        int hashCode = (loadAdCallback2 != null ? loadAdCallback2.hashCode() : 0) * 31;
        ExecutorService executorService2 = this.executorService;
        if (executorService2 != null) {
            i = executorService2.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.vungle.warren.LoadAdCallback
    public void onAdLoad(final String str) {
        if (this.loadAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.LoadAdCallbackWrapper.AnonymousClass1 */

                public void run() {
                    LoadAdCallbackWrapper.this.loadAdCallback.onAdLoad(str);
                }
            });
        }
    }

    @Override // com.vungle.warren.LoadAdCallback
    public void onError(final String str, final VungleException vungleException) {
        if (this.loadAdCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.LoadAdCallbackWrapper.AnonymousClass2 */

                public void run() {
                    LoadAdCallbackWrapper.this.loadAdCallback.onError(str, vungleException);
                }
            });
        }
    }
}
