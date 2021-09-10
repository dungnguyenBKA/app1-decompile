package com.google.android.gms.ads.mediation;

import android.os.Bundle;

public interface MediationAdapter extends MediationExtrasReceiver {

    public static class zza {
        private int a;

        public final Bundle zzaes() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.a);
            return bundle;
        }

        public final zza zzdv(int i) {
            this.a = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
