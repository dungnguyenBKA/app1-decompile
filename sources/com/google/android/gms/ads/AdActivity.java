package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;

public final class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzaro b;

    private final void a() {
        zzaro zzaro = this.b;
        if (zzaro != null) {
            try {
                zzaro.zzdp();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.b.onActivityResult(i, i2, intent);
        } catch (Exception e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    public final void onBackPressed() {
        boolean z = true;
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                z = zzaro.zzvw();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        if (z) {
            super.onBackPressed();
            try {
                this.b.onBackPressed();
            } catch (RemoteException e2) {
                zzazk.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.b.zzad(aw.Q(configuration));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    /* access modifiers changed from: protected */
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzaro zzb = zzwr.zzqo().zzb(this);
        this.b = zzb;
        if (zzb == null) {
            zzazk.zze("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzb.onCreate(bundle);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public final void onDestroy() {
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onDestroy();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public final void onPause() {
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onPause();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public final void onRestart() {
        super.onRestart();
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onRestart();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public final void onResume() {
        super.onResume();
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onResume();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    /* access modifiers changed from: protected */
    public final void onStart() {
        super.onStart();
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onStart();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public final void onStop() {
        try {
            zzaro zzaro = this.b;
            if (zzaro != null) {
                zzaro.onStop();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    /* access modifiers changed from: protected */
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            this.b.onUserLeaveHint();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        a();
    }

    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        a();
    }
}
