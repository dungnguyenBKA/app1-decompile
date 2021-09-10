package com.google.ads.mediation.facebook;

import android.content.Context;
import com.facebook.ads.AudienceNetworkAds;
import java.util.ArrayList;
import java.util.Iterator;

class FacebookInitializer implements AudienceNetworkAds.InitListener {
    private static FacebookInitializer instance;
    private boolean mIsInitialized = false;
    private boolean mIsInitializing = false;
    private ArrayList<Listener> mListeners = new ArrayList<>();

    /* access modifiers changed from: package-private */
    public interface Listener {
        void onInitializeError(String str);

        void onInitializeSuccess();
    }

    private FacebookInitializer() {
    }

    static FacebookInitializer getInstance() {
        if (instance == null) {
            instance = new FacebookInitializer();
        }
        return instance;
    }

    /* access modifiers changed from: package-private */
    public void initialize(Context context, String str, Listener listener) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str);
        getInstance().initialize(context, arrayList, listener);
    }

    @Override // com.facebook.ads.AudienceNetworkAds.InitListener
    public void onInitialized(AudienceNetworkAds.InitResult initResult) {
        this.mIsInitializing = false;
        this.mIsInitialized = initResult.isSuccess();
        Iterator<Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            Listener next = it.next();
            if (initResult.isSuccess()) {
                next.onInitializeSuccess();
            } else {
                next.onInitializeError(initResult.getMessage());
            }
        }
        this.mListeners.clear();
    }

    /* access modifiers changed from: package-private */
    public void initialize(Context context, ArrayList<String> arrayList, Listener listener) {
        if (this.mIsInitializing) {
            this.mListeners.add(listener);
        } else if (this.mIsInitialized) {
            listener.onInitializeSuccess();
        } else {
            this.mIsInitializing = true;
            getInstance().mListeners.add(listener);
            AudienceNetworkAds.buildInitSettings(context).withMediationService("GOOGLE:6.2.1.0").withPlacementIds(arrayList).withInitListener(this).initialize();
        }
    }
}
