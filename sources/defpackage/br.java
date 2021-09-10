package defpackage;

import com.bumptech.glide.load.i;
import com.bumptech.glide.load.k;
import com.caverock.androidsvg.c;
import com.caverock.androidsvg.e;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: br  reason: default package */
public class br implements k<InputStream, c> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(InputStream inputStream, i iVar) {
        return true;
    }

    /* Return type fixed from 'he' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, com.bumptech.glide.load.i] */
    @Override // com.bumptech.glide.load.k
    public he<c> b(InputStream inputStream, int i, int i2, i iVar) {
        try {
            c f = c.f(inputStream);
            f.m((float) i);
            f.l((float) i2);
            return new rg(f);
        } catch (e e) {
            throw new IOException("Cannot load SVG from stream", e);
        }
    }
}
