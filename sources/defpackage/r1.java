package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import defpackage.e2;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpStatus;

/* renamed from: r1  reason: default package */
public class r1 extends s1 {
    @Override // defpackage.s1
    public Typeface a(Context context, f1 f1Var, Resources resources, int i) {
        g1[] a = f1Var.a();
        int length = a.length;
        int i2 = 0;
        FontFamily.Builder builder = null;
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i3 >= length) {
                break;
            }
            g1 g1Var = a[i3];
            try {
                Font.Builder weight = new Font.Builder(resources, g1Var.b()).setWeight(g1Var.e());
                if (!g1Var.f()) {
                    i4 = 0;
                }
                Font build = weight.setSlant(i4).setTtcIndex(g1Var.c()).setFontVariationSettings(g1Var.d()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException unused) {
            }
            i3++;
        }
        if (builder == null) {
            return null;
        }
        int i5 = (i & 1) != 0 ? 700 : HttpStatus.SC_BAD_REQUEST;
        if ((i & 2) != 0) {
            i2 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i5, i2)).build();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0054, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0059, code lost:
        r7 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005a, code lost:
        r5.addSuppressed(r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x005d, code lost:
        throw r6;
     */
    @Override // defpackage.s1
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface b(android.content.Context r11, android.os.CancellationSignal r12, defpackage.e2.f[] r13, int r14) {
        /*
        // Method dump skipped, instructions count: 137
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r1.b(android.content.Context, android.os.CancellationSignal, e2$f[], int):android.graphics.Typeface");
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.s1
    public Typeface c(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // defpackage.s1
    public Typeface d(Context context, Resources resources, int i, String str, int i2) {
        try {
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(new Font.Builder(resources, i).build()).build()).setStyle(new FontStyle((i2 & 1) != 0 ? 700 : HttpStatus.SC_BAD_REQUEST, (i2 & 2) != 0 ? 1 : 0)).build();
        } catch (IOException unused) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.s1
    public e2.f f(e2.f[] fVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
