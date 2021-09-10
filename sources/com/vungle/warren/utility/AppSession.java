package com.vungle.warren.utility;

import com.vungle.warren.SessionData;
import com.vungle.warren.utility.ActivityManager;

public class AppSession {
    ActivityManager.LifeCycleCallback appLifeCycleCallback = new ActivityManager.LifeCycleCallback() {
        /* class com.vungle.warren.utility.AppSession.AnonymousClass1 */
        private long timestamp;

        @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
        public void onStart() {
            if (this.timestamp > 0) {
                long currentTimeMillis = System.currentTimeMillis() - this.timestamp;
                if (AppSession.this.sessionData != null && AppSession.this.sessionData.getTimeout() > -1 && currentTimeMillis >= AppSession.this.sessionData.getTimeout() * 1000 && AppSession.this.sessionCallback != null) {
                    AppSession.this.sessionCallback.onSessionTimeout();
                }
            }
        }

        @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
        public void onStop() {
            this.timestamp = System.currentTimeMillis();
        }
    };
    private SessionCallback sessionCallback;
    private SessionData sessionData;

    public interface SessionCallback {
        void onSessionTimeout();
    }

    public void observe() {
        ActivityManager.getInstance().addListener(this.appLifeCycleCallback);
    }

    public AppSession setSessionCallback(SessionCallback sessionCallback2) {
        this.sessionCallback = sessionCallback2;
        return this;
    }

    public AppSession setSessionData(SessionData sessionData2) {
        this.sessionData = sessionData2;
        return this;
    }
}
