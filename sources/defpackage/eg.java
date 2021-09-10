package defpackage;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.i;
import defpackage.zf;
import java.io.InputStream;

/* renamed from: eg  reason: default package */
public class eg<Data> implements zf<Integer, Data> {
    private final zf<Uri, Data> a;
    private final Resources b;

    /* renamed from: eg$a */
    public static final class a implements ag<Integer, AssetFileDescriptor> {
        private final Resources a;

        public a(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Integer, AssetFileDescriptor> c(dg dgVar) {
            return new eg(this.a, dgVar.c(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: eg$b */
    public static class b implements ag<Integer, ParcelFileDescriptor> {
        private final Resources a;

        public b(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Integer, ParcelFileDescriptor> c(dg dgVar) {
            return new eg(this.a, dgVar.c(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: eg$c */
    public static class c implements ag<Integer, InputStream> {
        private final Resources a;

        public c(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Integer, InputStream> c(dg dgVar) {
            return new eg(this.a, dgVar.c(Uri.class, InputStream.class));
        }
    }

    /* renamed from: eg$d */
    public static class d implements ag<Integer, Uri> {
        private final Resources a;

        public d(Resources resources) {
            this.a = resources;
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Integer, Uri> c(dg dgVar) {
            return new eg(this.a, hg.c());
        }
    }

    public eg(Resources resources, zf<Uri, Data> zfVar) {
        this.b = resources;
        this.a = zfVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.zf
    public /* bridge */ /* synthetic */ boolean a(Integer num) {
        return true;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // defpackage.zf
    public zf.a b(Integer num, int i, int i2, i iVar) {
        Uri uri;
        Integer num2 = num;
        try {
            uri = Uri.parse("android.resource://" + this.b.getResourcePackageName(num2.intValue()) + '/' + this.b.getResourceTypeName(num2.intValue()) + '/' + this.b.getResourceEntryName(num2.intValue()));
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num2, e);
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.a.b(uri, i, i2, iVar);
    }
}
