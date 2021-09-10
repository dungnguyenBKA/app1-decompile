package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;

public class g {
    public Context a;
    public ArrayList<e> b = new ArrayList<>();
    ArrayList<e> c = new ArrayList<>();
    CharSequence d;
    CharSequence e;
    PendingIntent f;
    int g;
    boolean h = true;
    h i;
    boolean j = false;
    Bundle k;
    String l;
    boolean m;
    Notification n;
    @Deprecated
    public ArrayList<String> o;

    public g(Context context, String str) {
        Notification notification = new Notification();
        this.n = notification;
        this.a = context;
        this.l = str;
        notification.when = System.currentTimeMillis();
        this.n.audioStreamType = -1;
        this.g = 0;
        this.o = new ArrayList<>();
        this.m = true;
    }

    protected static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public Notification a() {
        return new i(this).a();
    }

    public g c(boolean z) {
        if (z) {
            this.n.flags |= 16;
        } else {
            this.n.flags &= -17;
        }
        return this;
    }

    public g d(String str) {
        this.l = str;
        return this;
    }

    public g e(PendingIntent pendingIntent) {
        this.f = pendingIntent;
        return this;
    }

    public g f(CharSequence charSequence) {
        this.e = b(charSequence);
        return this;
    }

    public g g(CharSequence charSequence) {
        this.d = b(charSequence);
        return this;
    }

    public g h(PendingIntent pendingIntent) {
        this.n.deleteIntent = pendingIntent;
        return this;
    }

    public g i(boolean z) {
        this.j = z;
        return this;
    }

    public g j(int i2) {
        this.g = i2;
        return this;
    }

    public g k(int i2) {
        this.n.icon = i2;
        return this;
    }

    public g l(h hVar) {
        if (this.i != hVar) {
            this.i = hVar;
            if (hVar.a != this) {
                hVar.a = this;
                l(hVar);
            }
        }
        return this;
    }

    public g m(CharSequence charSequence) {
        this.n.tickerText = b(charSequence);
        return this;
    }

    public g n(long j2) {
        this.n.when = j2;
        return this;
    }
}
