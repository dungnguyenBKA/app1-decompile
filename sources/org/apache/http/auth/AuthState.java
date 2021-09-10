package org.apache.http.auth;

import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class AuthState {
    private AuthScheme authScheme;
    private AuthScope authScope;
    private Credentials credentials;

    public AuthScheme getAuthScheme() {
        return this.authScheme;
    }

    public AuthScope getAuthScope() {
        return this.authScope;
    }

    public Credentials getCredentials() {
        return this.credentials;
    }

    public void invalidate() {
        this.authScheme = null;
        this.authScope = null;
        this.credentials = null;
    }

    public boolean isValid() {
        return this.authScheme != null;
    }

    public void setAuthScheme(AuthScheme authScheme2) {
        if (authScheme2 == null) {
            invalidate();
        } else {
            this.authScheme = authScheme2;
        }
    }

    public void setAuthScope(AuthScope authScope2) {
        this.authScope = authScope2;
    }

    public void setCredentials(Credentials credentials2) {
        this.credentials = credentials2;
    }

    public String toString() {
        StringBuilder q = ic.q("auth scope [");
        q.append(this.authScope);
        q.append("]; credentials set [");
        return ic.l(q, this.credentials != null ? "true" : "false", "]");
    }
}
