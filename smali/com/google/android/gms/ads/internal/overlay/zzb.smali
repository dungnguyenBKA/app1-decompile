.class public final Lcom/google/android/gms/ads/internal/overlay/zzb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/ads/internal/overlay/zzt;Z)Z
    .locals 2

    if-eqz p4, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 2
    sget-object p4, Lcom/google/android/gms/internal/ads/zzacr;->zzdcc:Lcom/google/android/gms/internal/ads/zzacr;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p4

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzwg()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zza(Lcom/google/android/gms/internal/ads/zzacr;)V

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzacr;->zzdbz:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-virtual {p4, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzacr;->zzdca:Lcom/google/android/gms/internal/ads/zzacr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zza(Lcom/google/android/gms/internal/ads/zzacr;)V

    .line 10
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacr;->zzdbz:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :catchall_0
    if-eqz p3, :cond_3

    .line 11
    invoke-interface {p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zza(Lcom/google/android/gms/internal/ads/zzacr;)V

    .line 12
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzacr;->zzdbz:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-virtual {p4, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :cond_4
    :try_start_2
    const-string p4, "Launching an intent: "

    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p4, v0

    :goto_1
    invoke-static {p4}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_6

    .line 15
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzwg()V

    :cond_6
    const/4 p0, 0x1

    if-eqz p3, :cond_7

    .line 16
    invoke-interface {p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzab(Z)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    return p0

    :catch_1
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_8

    .line 18
    invoke-interface {p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzt;->zzab(Z)V

    :cond_8
    return p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "No intent data for launcher overlay."

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 4
    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsg:Z

    invoke-static {p0, v1, p2, p3, p1}, Lcom/google/android/gms/ads/internal/overlay/zzb;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/ads/internal/overlay/zzt;Z)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "Open GMSG did not contain a URL."

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return v0

    .line 8
    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const-string v2, "android.intent.action.VIEW"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    .line 15
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsd:Ljava/lang/String;

    const-string v4, "/"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 16
    array-length v4, v2

    if-ge v4, v5, :cond_6

    const-string p0, "Could not parse component name from open GMSG: "

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsd:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return v0

    .line 18
    :cond_6
    aget-object v4, v2, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdse:Ljava/lang/String;

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 21
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "Could not parse intent flags."

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 23
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcuq:Lcom/google/android/gms/internal/ads/zzaba;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x10000000

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.support.customtabs.extra.user_opt_out"

    .line 28
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 29
    :cond_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcup:Lcom/google/android/gms/internal/ads/zzaba;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p0, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    :cond_a
    :goto_3
    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdsg:Z

    invoke-static {p0, v1, p2, p3, p1}, Lcom/google/android/gms/ads/internal/overlay/zzb;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/ads/internal/overlay/zzt;Z)Z

    move-result p0

    return p0
.end method
