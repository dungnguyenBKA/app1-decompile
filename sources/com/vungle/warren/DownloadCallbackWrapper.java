package com.vungle.warren;

import com.vungle.warren.AdLoader;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import java.util.concurrent.ExecutorService;

class DownloadCallbackWrapper implements AdLoader.DownloadCallback {
    private final AdLoader.DownloadCallback downloadCallback;
    private final ExecutorService executorService;

    public DownloadCallbackWrapper(ExecutorService executorService2, AdLoader.DownloadCallback downloadCallback2) {
        this.downloadCallback = downloadCallback2;
        this.executorService = executorService2;
    }

    @Override // com.vungle.warren.AdLoader.DownloadCallback
    public void onDownloadCompleted(final String str, final String str2) {
        if (this.downloadCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.DownloadCallbackWrapper.AnonymousClass1 */

                public void run() {
                    DownloadCallbackWrapper.this.downloadCallback.onDownloadCompleted(str, str2);
                }
            });
        }
    }

    @Override // com.vungle.warren.AdLoader.DownloadCallback
    public void onDownloadFailed(final VungleException vungleException, final String str, final String str2) {
        if (this.downloadCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.DownloadCallbackWrapper.AnonymousClass2 */

                public void run() {
                    DownloadCallbackWrapper.this.downloadCallback.onDownloadFailed(vungleException, str, str2);
                }
            });
        }
    }

    @Override // com.vungle.warren.AdLoader.DownloadCallback
    public void onReady(final String str, final Placement placement, final Advertisement advertisement) {
        if (this.downloadCallback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.DownloadCallbackWrapper.AnonymousClass3 */

                public void run() {
                    DownloadCallbackWrapper.this.downloadCallback.onReady(str, placement, advertisement);
                }
            });
        }
    }
}
