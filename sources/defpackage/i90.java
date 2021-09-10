package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.Objects;

/* renamed from: i90  reason: default package */
public final class i90 extends ContentObserver {
    private final Context a;
    private final AudioManager b;
    private final f90 c;
    private final h90 d;
    private float e;

    public i90(Handler handler, Context context, f90 f90, h90 h90) {
        super(handler);
        this.a = context;
        this.b = (AudioManager) context.getSystemService("audio");
        this.c = f90;
        this.d = h90;
    }

    private float c() {
        int streamVolume = this.b.getStreamVolume(3);
        int streamMaxVolume = this.b.getStreamMaxVolume(3);
        Objects.requireNonNull(this.c);
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            return 0.0f;
        }
        float f = ((float) streamVolume) / ((float) streamMaxVolume);
        if (f > 1.0f) {
            return 1.0f;
        }
        return f;
    }

    public void a() {
        float c2 = c();
        this.e = c2;
        ((ba0) this.d).b(c2);
        this.a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void b() {
        this.a.getContentResolver().unregisterContentObserver(this);
    }

    public void onChange(boolean z) {
        super.onChange(z);
        float c2 = c();
        if (c2 != this.e) {
            this.e = c2;
            ((ba0) this.d).b(c2);
        }
    }
}
