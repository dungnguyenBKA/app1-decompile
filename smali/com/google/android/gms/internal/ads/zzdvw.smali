.class final Lcom/google/android/gms/internal/ads/zzdvw;
.super Lcom/google/android/gms/internal/ads/zzdvt;
.source "SourceFile"


# instance fields
.field private final zzhvs:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvt;-><init>()V

    .line 2
    iput-char p1, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhvs:C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhvs:C

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvu;->zze(C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lic;->m(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CharMatcher.is(\'"

    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(C)Z
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhvs:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
