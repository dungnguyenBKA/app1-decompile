.class final Lcom/google/android/gms/internal/ads/zzedh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzefs;)Lcom/google/android/gms/internal/ads/zzehz;
    .locals 3

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedk;->zzidu:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzehz;->zziju:Lcom/google/android/gms/internal/ads/zzehz;

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    const-string v2, "unknown curve type: "

    invoke-static {v1, v2, p0}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzehz;->zzijt:Lcom/google/android/gms/internal/ads/zzehz;

    return-object p0

    .line 12
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzehz;->zzijs:Lcom/google/android/gms/internal/ads/zzehz;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeic;
    .locals 3

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedk;->zzidv:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 14
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeic;->zzikc:Lcom/google/android/gms/internal/ads/zzeic;

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    const-string v2, "unknown point format: "

    invoke-static {v1, v2, p0}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeic;->zzikd:Lcom/google/android/gms/internal/ads/zzeic;

    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeic;->zzikb:Lcom/google/android/gms/internal/ads/zzeic;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzeft;)Ljava/lang/String;
    .locals 3

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedk;->zzidt:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "HmacSha512"

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    const-string v2, "hash unsupported for HMAC: "

    invoke-static {v1, v2, p0}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "HmacSha256"

    return-object p0

    :cond_2
    const-string p0, "HmacSha1"

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzefk;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcw()Lcom/google/android/gms/internal/ads/zzefr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdj()Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefs;)Lcom/google/android/gms/internal/ads/zzehz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzehx;->zza(Lcom/google/android/gms/internal/ads/zzehz;)Ljava/security/spec/ECParameterSpec;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcw()Lcom/google/android/gms/internal/ads/zzefr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdk()Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzeft;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcy()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefe;->zzifc:Lcom/google/android/gms/internal/ads/zzefe;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcx()Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeff;->zzbcr()Lcom/google/android/gms/internal/ads/zzegg;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzebm;->zza(Lcom/google/android/gms/internal/ads/zzegg;)Lcom/google/android/gms/internal/ads/zzegd;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
