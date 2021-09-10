package org.apache.http.params;

public class SyncBasicHttpParams extends BasicHttpParams {
    private static final long serialVersionUID = 5387834869062660642L;

    @Override // org.apache.http.params.BasicHttpParams
    public synchronized void clear() {
        super.clear();
    }

    @Override // org.apache.http.params.BasicHttpParams, java.lang.Object
    public synchronized Object clone() {
        return super.clone();
    }

    @Override // org.apache.http.params.BasicHttpParams, org.apache.http.params.HttpParams
    public synchronized Object getParameter(String str) {
        return super.getParameter(str);
    }

    @Override // org.apache.http.params.BasicHttpParams
    public synchronized boolean isParameterSet(String str) {
        return super.isParameterSet(str);
    }

    @Override // org.apache.http.params.BasicHttpParams
    public synchronized boolean isParameterSetLocally(String str) {
        return super.isParameterSetLocally(str);
    }

    @Override // org.apache.http.params.BasicHttpParams, org.apache.http.params.HttpParams
    public synchronized boolean removeParameter(String str) {
        return super.removeParameter(str);
    }

    @Override // org.apache.http.params.BasicHttpParams, org.apache.http.params.HttpParams
    public synchronized HttpParams setParameter(String str, Object obj) {
        return super.setParameter(str, obj);
    }

    @Override // org.apache.http.params.BasicHttpParams
    public synchronized void setParameters(String[] strArr, Object obj) {
        super.setParameters(strArr, obj);
    }
}
