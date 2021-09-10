package defpackage;

import android.app.Activity;
import android.content.Context;
import com.camerasideas.collagemaker.activity.widget.m;

/* renamed from: mq  reason: default package */
public final /* synthetic */ class mq implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ Activity c;
    public final /* synthetic */ int d;

    public /* synthetic */ mq(String str, Activity activity, int i) {
        this.b = str;
        this.c = activity;
        this.d = i;
    }

    public final void run() {
        String str = this.b;
        Activity activity = this.c;
        int i = this.d;
        try {
            if ("!,.".indexOf(str.substring(str.length() - 1)) != -1) {
                Context applicationContext = activity.getApplicationContext();
                m.makeText(applicationContext, str + " ErrorCode " + i, 1).show();
                return;
            }
            Context applicationContext2 = activity.getApplicationContext();
            m.makeText(applicationContext2, str + ", ErrorCode " + i, 1).show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
