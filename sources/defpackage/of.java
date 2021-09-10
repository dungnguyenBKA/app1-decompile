package defpackage;

import android.util.Log;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.i;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: of  reason: default package */
public class of implements d<ByteBuffer> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.io.File, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.d
    public boolean a(ByteBuffer byteBuffer, File file, i iVar) {
        try {
            yk.d(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            Log.isLoggable("ByteBufferEncoder", 3);
            return false;
        }
    }
}
