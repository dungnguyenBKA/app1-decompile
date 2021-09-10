package org.apache.http.impl.auth;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.Credentials;
import org.apache.http.util.CharArrayBuffer;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.Oid;

public class NegotiateScheme extends AuthSchemeBase {
    private static final String KERBEROS_OID = "1.2.840.113554.1.2.2";
    private static final String SPNEGO_OID = "1.3.6.1.5.5.2";
    private GSSContext gssContext;
    private final Log log;
    private Oid negotiationOid;
    private final SpnegoTokenGenerator spengoGenerator;
    private State state;
    private final boolean stripPort;
    private byte[] token;

    /* access modifiers changed from: package-private */
    public enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        TOKEN_GENERATED,
        FAILED
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator, boolean z) {
        this.log = LogFactory.getLog(getClass());
        this.gssContext = null;
        this.negotiationOid = null;
        this.state = State.UNINITIATED;
        this.spengoGenerator = spnegoTokenGenerator;
        this.stripPort = z;
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) {
        return authenticate(credentials, httpRequest, null);
    }

    /* access modifiers changed from: protected */
    public GSSManager getManager() {
        return GSSManager.getInstance();
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("Parameter name may not be null");
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "Negotiate";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        State state2 = this.state;
        return state2 == State.TOKEN_GENERATED || state2 == State.FAILED;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i, i2);
        if (this.log.isDebugEnabled()) {
            Log log2 = this.log;
            log2.debug("Received challenge '" + substringTrimmed + "' from the auth server");
        }
        if (this.state == State.UNINITIATED) {
            this.token = new Base64().decode(substringTrimmed.getBytes());
            this.state = State.CHALLENGE_RECEIVED;
            return;
        }
        this.log.debug("Authentication already attempted");
        this.state = State.FAILED;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:52:0x016b, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x016c, code lost:
        r5.state = org.apache.http.impl.auth.NegotiateScheme.State.FAILED;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0179, code lost:
        throw new org.apache.http.auth.AuthenticationException(r6.getMessage());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x017a, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x017b, code lost:
        r5.state = org.apache.http.impl.auth.NegotiateScheme.State.FAILED;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0185, code lost:
        if (r6.getMajor() == 9) goto L_0x01ce;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0195, code lost:
        if (r6.getMajor() != 13) goto L_0x0197;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x019d, code lost:
        if (r6.getMajor() == 10) goto L_0x01ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x01b9, code lost:
        throw new org.apache.http.auth.AuthenticationException(r6.getMessage());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x01c3, code lost:
        throw new org.apache.http.auth.AuthenticationException(r6.getMessage(), r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01cd, code lost:
        throw new org.apache.http.auth.InvalidCredentialsException(r6.getMessage(), r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x01d7, code lost:
        throw new org.apache.http.auth.InvalidCredentialsException(r6.getMessage(), r6);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x016b A[ExcHandler: IOException (r6v6 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:4:0x000a] */
    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.ContextAwareAuthScheme
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.apache.http.Header authenticate(org.apache.http.auth.Credentials r6, org.apache.http.HttpRequest r7, org.apache.http.protocol.HttpContext r8) {
        /*
        // Method dump skipped, instructions count: 488
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.auth.NegotiateScheme.authenticate(org.apache.http.auth.Credentials, org.apache.http.HttpRequest, org.apache.http.protocol.HttpContext):org.apache.http.Header");
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator) {
        this(spnegoTokenGenerator, false);
    }

    public NegotiateScheme() {
        this(null, false);
    }
}
