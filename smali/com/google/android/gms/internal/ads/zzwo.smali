.class final Lcom/google/android/gms/internal/ads/zzwo;
.super Lcom/google/android/gms/internal/ads/zzws;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzws<",
        "Lcom/google/android/gms/internal/ads/zzyg;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzciw:Lcom/google/android/gms/internal/ads/zzwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzciw:Lcom/google/android/gms/internal/ads/zzwc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwo;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxy;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->val$context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    const v1, 0xc2be7e0

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzxy;->zza(Lzv;I)Lcom/google/android/gms/internal/ads/zzyg;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzqj()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->val$context:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaae;-><init>()V

    return-object v0
.end method

.method public final synthetic zzqk()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwo;->zzciw:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzc(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwo;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzz;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyg;

    move-result-object v0

    return-object v0
.end method
