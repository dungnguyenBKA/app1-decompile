package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Set;

/* access modifiers changed from: package-private */
public class zzj extends X509Certificate {
    private final X509Certificate zzk;

    public zzj(X509Certificate x509Certificate) {
        this.zzk = x509Certificate;
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity() {
        this.zzk.checkValidity();
    }

    public int getBasicConstraints() {
        return this.zzk.getBasicConstraints();
    }

    @Override // java.security.cert.X509Extension
    public Set<String> getCriticalExtensionOIDs() {
        return this.zzk.getCriticalExtensionOIDs();
    }

    @Override // java.security.cert.Certificate
    public byte[] getEncoded() {
        return this.zzk.getEncoded();
    }

    public byte[] getExtensionValue(String str) {
        return this.zzk.getExtensionValue(str);
    }

    public Principal getIssuerDN() {
        return this.zzk.getIssuerDN();
    }

    public boolean[] getIssuerUniqueID() {
        return this.zzk.getIssuerUniqueID();
    }

    public boolean[] getKeyUsage() {
        return this.zzk.getKeyUsage();
    }

    @Override // java.security.cert.X509Extension
    public Set<String> getNonCriticalExtensionOIDs() {
        return this.zzk.getNonCriticalExtensionOIDs();
    }

    public Date getNotAfter() {
        return this.zzk.getNotAfter();
    }

    public Date getNotBefore() {
        return this.zzk.getNotBefore();
    }

    public PublicKey getPublicKey() {
        return this.zzk.getPublicKey();
    }

    public BigInteger getSerialNumber() {
        return this.zzk.getSerialNumber();
    }

    public String getSigAlgName() {
        return this.zzk.getSigAlgName();
    }

    public String getSigAlgOID() {
        return this.zzk.getSigAlgOID();
    }

    public byte[] getSigAlgParams() {
        return this.zzk.getSigAlgParams();
    }

    public byte[] getSignature() {
        return this.zzk.getSignature();
    }

    public Principal getSubjectDN() {
        return this.zzk.getSubjectDN();
    }

    public boolean[] getSubjectUniqueID() {
        return this.zzk.getSubjectUniqueID();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getTBSCertificate() {
        return this.zzk.getTBSCertificate();
    }

    public int getVersion() {
        return this.zzk.getVersion();
    }

    public boolean hasUnsupportedCriticalExtension() {
        return this.zzk.hasUnsupportedCriticalExtension();
    }

    public String toString() {
        return this.zzk.toString();
    }

    @Override // java.security.cert.Certificate
    public void verify(PublicKey publicKey) {
        this.zzk.verify(publicKey);
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity(Date date) {
        this.zzk.checkValidity(date);
    }

    @Override // java.security.cert.Certificate
    public void verify(PublicKey publicKey, String str) {
        this.zzk.verify(publicKey, str);
    }
}
