package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.NTCredentials;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class NTLMScheme extends AuthSchemeBase {
    private String challenge;
    private final NTLMEngine engine;
    private State state;

    enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        MSG_TYPE1_GENERATED,
        MSG_TYPE2_RECEVIED,
        MSG_TYPE3_GENERATED,
        FAILED
    }

    public NTLMScheme(NTLMEngine nTLMEngine) {
        if (nTLMEngine != null) {
            this.engine = nTLMEngine;
            this.state = State.UNINITIATED;
            this.challenge = null;
            return;
        }
        throw new IllegalArgumentException("NTLM engine may not be null");
    }

    @Override // org.apache.http.auth.AuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) {
        String str;
        try {
            NTCredentials nTCredentials = (NTCredentials) credentials;
            State state2 = this.state;
            if (state2 == State.CHALLENGE_RECEIVED || state2 == State.FAILED) {
                str = this.engine.generateType1Msg(nTCredentials.getDomain(), nTCredentials.getWorkstation());
                this.state = State.MSG_TYPE1_GENERATED;
            } else if (state2 == State.MSG_TYPE2_RECEVIED) {
                str = this.engine.generateType3Msg(nTCredentials.getUserName(), nTCredentials.getPassword(), nTCredentials.getDomain(), nTCredentials.getWorkstation(), this.challenge);
                this.state = State.MSG_TYPE3_GENERATED;
            } else {
                StringBuilder q = ic.q("Unexpected state: ");
                q.append(this.state);
                throw new AuthenticationException(q.toString());
            }
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
            if (isProxy()) {
                charArrayBuffer.append("Proxy-Authorization");
            } else {
                charArrayBuffer.append("Authorization");
            }
            charArrayBuffer.append(": NTLM ");
            charArrayBuffer.append(str);
            return new BufferedHeader(charArrayBuffer);
        } catch (ClassCastException unused) {
            StringBuilder q2 = ic.q("Credentials cannot be used for NTLM authentication: ");
            q2.append(credentials.getClass().getName());
            throw new InvalidCredentialsException(q2.toString());
        }
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "ntlm";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        State state2 = this.state;
        return state2 == State.MSG_TYPE3_GENERATED || state2 == State.FAILED;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i, i2);
        if (substringTrimmed.length() == 0) {
            if (this.state == State.UNINITIATED) {
                this.state = State.CHALLENGE_RECEIVED;
            } else {
                this.state = State.FAILED;
            }
            this.challenge = null;
            return;
        }
        this.state = State.MSG_TYPE2_RECEVIED;
        this.challenge = substringTrimmed;
    }
}
