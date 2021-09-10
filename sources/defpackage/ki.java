package defpackage;

import android.util.Log;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.l;
import java.io.File;
import java.io.IOException;

/* renamed from: ki  reason: default package */
public class ki implements l<ji> {
    @Override // com.bumptech.glide.load.d
    public boolean a(Object obj, File file, i iVar) {
        try {
            yk.d(((ji) ((he) obj).get()).b(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            }
            return false;
        }
    }

    @Override // com.bumptech.glide.load.l
    public c b(i iVar) {
        return c.SOURCE;
    }
}
