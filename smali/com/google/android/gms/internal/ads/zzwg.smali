.class final Lcom/google/android/gms/internal/ads/zzwg;
.super Lcom/google/android/gms/internal/ads/zzws;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzws<",
        "Lcom/google/android/gms/internal/ads/zzaxy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzciv:Lcom/google/android/gms/internal/ads/zzane;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzws;-><init>()V

    return-void
.end method

.method private final zzql()Lcom/google/android/gms/internal/ads/zzaxy;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->val$context:Landroid/content/Context;

    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->val$context:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwf;->zzbyi:Lcom/google/android/gms/internal/ads/zzazm;

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazj;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzayd;

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    const v3, 0xc2be7e0

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzayd;->zze(Lzv;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxy;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->val$context:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzciv:Lcom/google/android/gms/internal/ads/zzane;

    const v2, 0xc2be7e0

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxy;->zzb(Lzv;Lcom/google/android/gms/internal/ads/zzane;I)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic zzqj()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic zzqk()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzql()Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v0

    return-object v0
.end method
