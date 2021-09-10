.class public final Lcom/google/android/gms/internal/ads/zzace;
.super Lcom/google/android/gms/internal/ads/zzacj;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdbj:Lcom/google/android/gms/ads/internal/zzg;

.field private final zzdbk:Ljava/lang/String;

.field private final zzdbl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbj:Lcom/google/android/gms/ads/internal/zzg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbk:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbl:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbj:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkc()V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbj:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkd()V

    return-void
.end method

.method public final zzn(Lzv;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbj:Lcom/google/android/gms/ads/internal/zzg;

    .line 2
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final zzsq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzace;->zzdbk:Ljava/lang/String;

    return-object v0
.end method
