.class public final Lcom/google/android/gms/analytics/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const-string v0, "il"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pi"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pr"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 1

    const-string v0, "promo"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/f;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    const-string p1, "index out of range for prefix"

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xb

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
