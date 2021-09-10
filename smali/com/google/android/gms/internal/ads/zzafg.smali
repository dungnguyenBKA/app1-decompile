.class public final Lcom/google/android/gms/internal/ads/zzafg;
.super Lcom/google/android/gms/ads/formats/NativeAppInstallAd;
.source "SourceFile"


# instance fields
.field private final zzckl:Lcom/google/android/gms/ads/VideoController;

.field private final zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

.field private final zzdga:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdgb:Lcom/google/android/gms/internal/ads/zzaes;

.field private final zzdgc:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaff;)V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdga:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzckl:Lcom/google/android/gms/ads/VideoController;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaff;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 9
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 10
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzaer;

    if-eqz v4, :cond_1

    .line 11
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaer;

    goto :goto_1

    .line 12
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaet;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdga:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaes;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaer;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaff;->zztn()Lcom/google/android/gms/internal/ads/zzaer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaes;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v2, v1

    .line 18
    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdgb:Lcom/google/android/gms/internal/ads/zzaes;

    .line 19
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaff;->zzto()Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaek;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaff;->zzto()Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzaej;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_5
    :goto_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdgc:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zztm()Lzv;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->zztm()Lzv;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdgc:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getBody()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdgb:Lcom/google/android/gms/internal/ads/zzaes;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdga:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrice()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaff;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getStore()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzckl:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaff;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzzc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzckl:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaff;->performClick(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaff;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->zzdfz:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaff;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzjs()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafg;->zztm()Lzv;

    move-result-object v0

    return-object v0
.end method
