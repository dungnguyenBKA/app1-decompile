package defpackage;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import defpackage.vc;
import java.io.IOException;

/* renamed from: dd  reason: default package */
public final class dd implements vc<ParcelFileDescriptor> {
    private final b a;

    /* renamed from: dd$a */
    public static final class a implements vc.a<ParcelFileDescriptor> {
        @Override // defpackage.vc.a
        public Class<ParcelFileDescriptor> a() {
            return ParcelFileDescriptor.class;
        }

        /* Return type fixed from 'vc' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.vc.a
        public vc<ParcelFileDescriptor> b(ParcelFileDescriptor parcelFileDescriptor) {
            return new dd(parcelFileDescriptor);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: dd$b */
    public static final class b {
        private final ParcelFileDescriptor a;

        b(ParcelFileDescriptor parcelFileDescriptor) {
            this.a = parcelFileDescriptor;
        }

        /* access modifiers changed from: package-private */
        public ParcelFileDescriptor a() {
            try {
                Os.lseek(this.a.getFileDescriptor(), 0, OsConstants.SEEK_SET);
                return this.a;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
    }

    public dd(ParcelFileDescriptor parcelFileDescriptor) {
        this.a = new b(parcelFileDescriptor);
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // defpackage.vc
    public void b() {
    }

    /* renamed from: d */
    public ParcelFileDescriptor a() {
        return this.a.a();
    }
}
