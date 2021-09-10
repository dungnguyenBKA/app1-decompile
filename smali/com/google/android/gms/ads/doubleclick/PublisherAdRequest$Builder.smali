.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzzj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzzj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    return-object p0
.end method


# virtual methods
.method public final addCategoryExclusion(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcl(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzj;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addCustomTargeting(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcf(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcg(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/a;)V

    return-object v0
.end method

.method public final setAdInfo(Lcom/google/android/gms/ads/query/AdInfo;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Lcom/google/android/gms/ads/query/AdInfo;)V

    return-object p0
.end method

.method public final setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public final setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 5

    const-string v0, "Content URL must be non-null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x200

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzci(Ljava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content URL must not exceed %d in length.  Provided length was %d."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcw(I)V

    return-object p0
.end method

.method public final setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcy(I)V

    return-object p0
.end method

.method public final setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzaa(Z)V

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zza(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->setManualImpressionsEnabled(Z)V

    return-object p0
.end method

.method public final setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcm(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNeighboringContentUrls(Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "neighboring content URLs list should not be null"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzc(Ljava/util/List;)V

    return-object p0
.end method

.method public final setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcj(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzck(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzcx(I)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->a:Lcom/google/android/gms/internal/ads/zzzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzzj;->zzz(Z)V

    return-object p0
.end method
