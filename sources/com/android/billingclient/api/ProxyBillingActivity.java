package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zza;

public class ProxyBillingActivity extends Activity {
    private ResultReceiver b;

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle bundle;
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            int zza = zza.zza(intent, "ProxyBillingActivity");
            if (!(i2 == -1 && zza == 0)) {
                zza.zzb("ProxyBillingActivity", ic.c(85, "Activity finished with resultCode ", i2, " and billing's responseCode: ", zza));
            }
            ResultReceiver resultReceiver = this.b;
            if (resultReceiver != null) {
                if (intent == null) {
                    bundle = null;
                } else {
                    bundle = intent.getExtras();
                }
                resultReceiver.send(zza, bundle);
            } else {
                Intent intent2 = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
                intent2.setPackage(getApplicationContext().getPackageName());
                if (intent != null) {
                    intent2.putExtras(intent.getExtras());
                }
                sendBroadcast(intent2);
            }
        } else {
            StringBuilder sb = new StringBuilder(69);
            sb.append("Got onActivityResult with wrong requestCode: ");
            sb.append(i);
            sb.append("; skipping...");
            zza.zzb("ProxyBillingActivity", sb.toString());
        }
        finish();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            zza.zza("ProxyBillingActivity", "Launching Play Store billing flow");
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.b = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            } else {
                pendingIntent = null;
            }
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 53);
                sb.append("Got exception while trying to start a purchase flow: ");
                sb.append(valueOf);
                zza.zzb("ProxyBillingActivity", sb.toString());
                ResultReceiver resultReceiver = this.b;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
                    intent.setPackage(getApplicationContext().getPackageName());
                    intent.putExtra("RESPONSE_CODE", 6);
                    intent.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(intent);
                }
                finish();
            }
        } else {
            zza.zza("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            if (bundle.containsKey("result_receiver")) {
                this.b = (ResultReceiver) bundle.getParcelable("result_receiver");
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.b;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
    }
}
