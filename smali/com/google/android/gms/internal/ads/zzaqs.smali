.class public final Lcom/google/android/gms/internal/ads/zzaqs;
.super Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;

.field private final zzdfk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaej;)V
    .locals 4

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzdfk:Ljava/util/List;

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaej;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->text:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqs;->text:Ljava/lang/String;

    .line 6
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaej;->zztd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaeq;->zzo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaer;

    move-result-object v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzdfk:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqu;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(Lcom/google/android/gms/internal/ads/zzaer;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    return-void

    :catch_1
    move-exception p1

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzdfk:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqs;->text:Ljava/lang/String;

    return-object v0
.end method
