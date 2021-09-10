.class public final Lcom/google/android/gms/internal/ads/zzamw;
.super Lcom/google/android/gms/internal/ads/zzbfw;
.source "SourceFile"


# instance fields
.field private final zzdll:Lcw;


# direct methods
.method constructor <init>(Lcw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    return-void
.end method


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1, p2, p3}, Lcw;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final generateEventId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0}, Lcw;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAppIdOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0}, Lcw;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0}, Lcw;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1, p2}, Lcw;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentScreenClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0}, Lcw;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentScreenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0}, Lcw;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGmpAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0}, Lcw;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxUserProperties(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->k(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1, p2, p3}, Lcw;->l(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1, p2, p3}, Lcw;->m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final performAction(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public final performActionWithResponse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->o(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->q(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setConsent(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    invoke-virtual {v0, p1}, Lcw;->r(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lzv;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p3}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcw;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lzv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzdll:Lcw;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcw;->s(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
