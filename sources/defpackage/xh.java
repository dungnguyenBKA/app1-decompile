package defpackage;

import defpackage.vc;
import java.nio.ByteBuffer;

/* renamed from: xh  reason: default package */
public class xh implements vc<ByteBuffer> {
    private final ByteBuffer a;

    /* renamed from: xh$a */
    public static class a implements vc.a<ByteBuffer> {
        @Override // defpackage.vc.a
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        /* Return type fixed from 'vc' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.vc.a
        public vc<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new xh(byteBuffer);
        }
    }

    public xh(ByteBuffer byteBuffer) {
        this.a = byteBuffer;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.vc
    public ByteBuffer a() {
        this.a.position(0);
        return this.a;
    }

    @Override // defpackage.vc
    public void b() {
    }
}
