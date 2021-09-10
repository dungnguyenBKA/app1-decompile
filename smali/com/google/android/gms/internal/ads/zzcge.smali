.class public final Lcom/google/android/gms/internal/ads/zzcge;
.super Lcom/google/android/gms/internal/ads/zzafm;
.source "SourceFile"


# instance fields
.field private final zzaad:Landroid/content/Context;

.field private final zzgch:Lcom/google/android/gms/internal/ads/zzccd;

.field private zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

.field private zzgit:Lcom/google/android/gms/internal/ads/zzccz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzccd;Lcom/google/android/gms/internal/ads/zzccz;Lcom/google/android/gms/internal/ads/zzcbu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafm;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzaad:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgit:Lcom/google/android/gms/internal/ads/zzccz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcge;)Lcom/google/android/gms/internal/ads/zzcbu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbu;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgit:Lcom/google/android/gms/internal/ads/zzccz;

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoc()Le0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoe()Le0;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Le0;->size()I

    move-result v2

    invoke-virtual {v1}, Le0;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Le0;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Le0;->h(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    invoke-virtual {v1}, Le0;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Le0;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzfw(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final recordImpression()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbu;->zzanj()V

    :cond_0
    return-void
.end method

.method public final zzct(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoe()Le0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzcu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoc()Le0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaer;

    return-object p1
.end method

.method public final zzp(Lzv;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgit:Lcom/google/android/gms/internal/ads/zzccz;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccz;->zza(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccd;->zzanz()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgd;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzaef;)V

    return v2
.end method

.method public final zzq(Lzv;)V
    .locals 1

    .line 1
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaob()Lzv;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzaa(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final zztm()Lzv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zztr()Lzv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzaad:Landroid/content/Context;

    invoke-static {v0}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v0

    return-object v0
.end method

.method public final zzts()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbu;->zzanq()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoa()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzanz()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final zztt()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaob()Lzv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzarl;->zzab(Lzv;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoa()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaoa()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    new-instance v1, Lx;

    invoke-direct {v1}, Lx;-><init>()V

    const-string v2, "onSdkLoaded"

    .line 8
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "Trying to start OMID session before creation."

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final zztu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzaod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Illegal argument specified for omid partner name."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcge;->zzgfm:Lcom/google/android/gms/internal/ads/zzcbu;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcbu;->zzi(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
