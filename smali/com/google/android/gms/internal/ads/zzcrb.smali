.class public final Lcom/google/android/gms/internal/ads/zzcrb;
.super Lcom/google/android/gms/internal/ads/zzare;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzdib:Lcom/google/android/gms/internal/ads/zzckn;

.field private final zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzdid:Lcom/google/android/gms/internal/ads/zzazo;

.field private final zzdie:Lcom/google/android/gms/internal/ads/zzcqr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzazo;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzare;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->context:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdid:Lcom/google/android/gms/internal/ads/zzazo;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzf()I

    move-result v0

    move-object/from16 v11, p0

    invoke-static {v11, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayo;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v1, "Open ad when you\'re back online."

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_title:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez v12, :cond_1

    const-string v2, "We\'ll send you a notification with a link to the advertiser site."

    goto :goto_1

    .line 6
    :cond_1
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_message:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    if-nez v12, :cond_2

    const-string v1, "OK"

    goto :goto_2

    .line 8
    :cond_2
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_confirm:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v14, v1

    new-instance v15, Lcom/google/android/gms/internal/ads/zzcre;

    move-object v1, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object v9, v12

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzcre;-><init>(Lcom/google/android/gms/internal/ads/zzckn;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbg;Ljava/lang/String;Landroid/content/res/Resources;Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    .line 9
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    if-nez v12, :cond_3

    const-string v1, "No thanks"

    goto :goto_3

    .line 10
    :cond_3
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_decline:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v9, v1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcrd;

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzckn;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    .line 11
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcrg;

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcrg;-><init>(Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzckn;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    .line 12
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzckn;",
            "Lcom/google/android/gms/internal/ads/zzdrz;",
            "Lcom/google/android/gms/internal/ads/zzcqr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzdal:Lcom/google/android/gms/internal/ads/zzaba;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "event_timestamp"

    const-string v2, "online"

    const-string v3, "offline"

    const-string v4, "device_connectivity"

    const-string v5, "gqi"

    if-eqz v0, :cond_2

    .line 19
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v5, p4}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    invoke-virtual {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p0

    .line 25
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p0, p6, p5}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    goto :goto_1

    .line 27
    :cond_1
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzdrz;->zzc(Lcom/google/android/gms/internal/ads/zzdsa;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckn;->zzaqr()Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v5, p4}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    const-string p2, "action"

    .line 30
    invoke-virtual {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 32
    :goto_2
    invoke-virtual {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    .line 35
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p5, p2}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    goto :goto_3

    .line 37
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckq;->zzaqu()Ljava/lang/String;

    move-result-object p0

    :goto_4
    move-object v4, p0

    .line 38
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcrc;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v1

    sget v5, Lcom/google/android/gms/internal/ads/zzcqs;->zzgru:I

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Lcom/google/android/gms/internal/ads/zzcrc;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "olaa"

    const-string v1, "offline_notification_action"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offline_notification_clicked"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "offline_notification_dismissed"

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v4, "gws_query_id"

    .line 4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "uri"

    .line 5
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcrb;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result v6

    .line 7
    sget v7, Lcom/google/android/gms/internal/ads/zzcrh;->zzgso:I

    .line 8
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 11
    sget v2, Lcom/google/android/gms/internal/ads/zzcrh;->zzgsn:I

    move v7, v2

    .line 12
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "obvs"

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http"

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "olaih"

    .line 14
    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrb;->context:Landroid/content/Context;

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 17
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "olas"

    .line 21
    invoke-virtual {v8, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "olaf"

    .line 22
    invoke-virtual {v8, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :goto_0
    invoke-direct {p0, v4, v1, v8}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    sget v0, Lcom/google/android/gms/internal/ads/zzcrh;->zzgsn:I

    if-ne v7, v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdid:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v0, p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzazo;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_4
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to get writable offline buffering database: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lzv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 30
    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v0, 0x44000000    # 512.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 32
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 33
    const-class v4, Lcom/google/android/gms/ads/AdService;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "offline_notification_clicked"

    .line 34
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "offline_notification_action"

    .line 35
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "gws_query_id"

    .line 36
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "uri"

    .line 37
    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzdvn;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 39
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 40
    const-class v6, Lcom/google/android/gms/ads/AdService;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v6, "offline_notification_dismissed"

    .line 41
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-static {p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzdvn;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    new-instance v3, Landroidx/core/app/g;

    const-string v4, "offline_notification_channel"

    invoke-direct {v3, p1, v4}, Landroidx/core/app/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v4, "View the ad you saved when you were offline"

    goto :goto_2

    .line 47
    :cond_2
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->offline_notification_title:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/core/app/g;->g(Ljava/lang/CharSequence;)Landroidx/core/app/g;

    if-nez v1, :cond_3

    const-string v1, "Tap to open ad"

    goto :goto_3

    .line 49
    :cond_3
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->offline_notification_text:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_3
    invoke-virtual {v3, v1}, Landroidx/core/app/g;->f(Ljava/lang/CharSequence;)Landroidx/core/app/g;

    .line 51
    invoke-virtual {v3, v2}, Landroidx/core/app/g;->c(Z)Landroidx/core/app/g;

    .line 52
    invoke-virtual {v3, v0}, Landroidx/core/app/g;->h(Landroid/app/PendingIntent;)Landroidx/core/app/g;

    .line 53
    invoke-virtual {v3, p2}, Landroidx/core/app/g;->e(Landroid/app/PendingIntent;)Landroidx/core/app/g;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, p2}, Landroidx/core/app/g;->k(I)Landroidx/core/app/g;

    const-string p2, "notification"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const p2, 0xd431

    .line 56
    invoke-virtual {v3}, Landroidx/core/app/g;->a()Landroid/app/Notification;

    move-result-object v0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "offline_notification_impression"

    invoke-direct {p0, p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzvt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdid:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Lcom/google/android/gms/internal/ads/zzazo;)V

    return-void
.end method
