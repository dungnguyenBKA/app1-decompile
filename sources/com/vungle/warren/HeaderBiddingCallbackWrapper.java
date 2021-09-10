package com.vungle.warren;

import java.util.concurrent.ExecutorService;

public class HeaderBiddingCallbackWrapper implements HeaderBiddingCallback {
    private final HeaderBiddingCallback callback;
    private final ExecutorService executorService;

    HeaderBiddingCallbackWrapper(ExecutorService executorService2, HeaderBiddingCallback headerBiddingCallback) {
        this.callback = headerBiddingCallback;
        this.executorService = executorService2;
    }

    @Override // com.vungle.warren.HeaderBiddingCallback
    public void adAvailableForBidToken(final String str, final String str2) {
        if (this.callback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.HeaderBiddingCallbackWrapper.AnonymousClass2 */

                public void run() {
                    HeaderBiddingCallbackWrapper.this.callback.adAvailableForBidToken(str, str2);
                }
            });
        }
    }

    @Override // com.vungle.warren.HeaderBiddingCallback
    public void onBidTokenAvailable(final String str, final String str2) {
        if (this.callback != null) {
            this.executorService.execute(new Runnable() {
                /* class com.vungle.warren.HeaderBiddingCallbackWrapper.AnonymousClass1 */

                public void run() {
                    HeaderBiddingCallbackWrapper.this.callback.onBidTokenAvailable(str, str2);
                }
            });
        }
    }
}
