package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.internal.exoplayer2.offline.DownloadAction;
import java.io.DataInputStream;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.a8  reason: case insensitive filesystem */
public class C1015a8 extends DownloadAction.Deserializer {
    public C1015a8(String str, int i) {
        super(str, i);
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final C1016a9 A01(int i, DataInputStream dataInputStream) throws IOException {
        String str;
        Uri parse = Uri.parse(dataInputStream.readUTF());
        boolean readBoolean = dataInputStream.readBoolean();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        if (dataInputStream.readBoolean()) {
            str = dataInputStream.readUTF();
        } else {
            str = null;
        }
        return new C1016a9(parse, readBoolean, bArr, str);
    }
}
