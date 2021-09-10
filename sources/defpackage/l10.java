package defpackage;

import defpackage.k10;
import java.io.InputStream;

/* access modifiers changed from: package-private */
/* renamed from: l10  reason: default package */
public class l10 implements k10.d {
    final /* synthetic */ byte[] a;
    final /* synthetic */ int[] b;

    l10(m10 m10, byte[] bArr, int[] iArr) {
        this.a = bArr;
        this.b = iArr;
    }

    @Override // defpackage.k10.d
    public void a(InputStream inputStream, int i) {
        try {
            inputStream.read(this.a, this.b[0], i);
            int[] iArr = this.b;
            iArr[0] = iArr[0] + i;
        } finally {
            inputStream.close();
        }
    }
}
