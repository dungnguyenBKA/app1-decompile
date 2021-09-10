package defpackage;

import android.app.Activity;
import android.widget.Toast;
import com.camerasideas.collagemaker.activity.widget.m;

/* renamed from: lq  reason: default package */
public final /* synthetic */ class lq implements Runnable {
    public final /* synthetic */ Activity b;
    public final /* synthetic */ String c;
    public final /* synthetic */ int d;
    public final /* synthetic */ int e;

    public /* synthetic */ lq(Activity activity, String str, int i, int i2) {
        this.b = activity;
        this.c = str;
        this.d = i;
        this.e = i2;
    }

    public final void run() {
        Activity activity = this.b;
        String str = this.c;
        int i = this.d;
        int i2 = this.e;
        try {
            Toast makeText = m.makeText(activity.getApplicationContext(), str, 0);
            makeText.setGravity(48, i, i2);
            makeText.show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
