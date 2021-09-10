package defpackage;

import android.graphics.Typeface;
import android.text.TextPaint;

/* access modifiers changed from: package-private */
/* renamed from: ay  reason: default package */
public class ay extends by {
    final /* synthetic */ TextPaint a;
    final /* synthetic */ by b;
    final /* synthetic */ zx c;

    ay(zx zxVar, TextPaint textPaint, by byVar) {
        this.c = zxVar;
        this.a = textPaint;
        this.b = byVar;
    }

    @Override // defpackage.by
    public void a(int i) {
        this.b.a(i);
    }

    @Override // defpackage.by
    public void b(Typeface typeface, boolean z) {
        this.c.i(this.a, typeface);
        this.b.b(typeface, z);
    }
}
