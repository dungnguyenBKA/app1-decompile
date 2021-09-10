package defpackage;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: qi  reason: default package */
public class qi implements k<InputStream, ji> {
    private final List<ImageHeaderParser> a;
    private final k<ByteBuffer, ji> b;
    private final oe c;

    public qi(List<ImageHeaderParser> list, k<ByteBuffer, ji> kVar, oe oeVar) {
        this.a = list;
        this.b = kVar;
        this.c = oeVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public boolean a(InputStream inputStream, i iVar) {
        return !((Boolean) iVar.c(pi.b)).booleanValue() && f.e(this.a, inputStream, this.c) == ImageHeaderParser.ImageType.GIF;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<ji> b(InputStream inputStream, int i, int i2, i iVar) {
        byte[] bArr;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream2.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e);
            }
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        return this.b.b(ByteBuffer.wrap(bArr), i, i2, iVar);
    }
}
