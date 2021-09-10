.class public final Lcom/google/android/gms/tagmanager/zzfv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzd:Ljava/lang/String;

.field private static final zzh:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    .line 2
    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/tagmanager/zzfu;->zzd(J)Lcom/google/android/gms/tagmanager/zzfu;

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfv;->zzd:Ljava/lang/String;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfv;->zzh:Lcom/google/android/gms/internal/gtm/zzak;

    return-void
.end method

.method public static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zzg()Lcom/google/android/gms/internal/gtm/zzal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 2
    instance-of v2, p0, Lcom/google/android/gms/internal/gtm/zzak;

    if-eqz v2, :cond_0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0

    .line 4
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 6
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzal;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzal;

    goto/16 :goto_b

    .line 7
    :cond_1
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 9
    check-cast p0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/tagmanager/zzfv;->zzh:Lcom/google/android/gms/internal/gtm/zzak;

    if-ne v5, v6, :cond_2

    return-object v6

    :cond_2
    if-nez v4, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzak;->zzN()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 14
    :goto_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzj()Lcom/google/android/gms/internal/gtm/zzal;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzal;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzal;

    move v3, v4

    goto/16 :goto_b

    .line 16
    :cond_6
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 18
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v7

    .line 23
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/tagmanager/zzfv;->zzh:Lcom/google/android/gms/internal/gtm/zzak;

    if-eq v7, v8, :cond_a

    if-ne v6, v8, :cond_7

    goto :goto_6

    :cond_7
    if-nez v5, :cond_9

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzak;->zzN()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzak;->zzN()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x1

    .line 25
    :goto_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    :goto_6
    return-object v8

    .line 27
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzk()Lcom/google/android/gms/internal/gtm/zzal;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzal;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzal;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzl()Lcom/google/android/gms/internal/gtm/zzal;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzal;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzal;

    move v3, v5

    goto/16 :goto_b

    .line 29
    :cond_c
    instance-of v2, p0, Ljava/lang/Double;

    if-nez v2, :cond_e

    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_e

    instance-of v2, p0, Lcom/google/android/gms/tagmanager/zzfu;

    if-eqz v2, :cond_d

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/tagmanager/zzfu;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzfu;->zzf()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_f

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzal;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzal;

    goto :goto_b

    .line 33
    :cond_f
    instance-of v2, p0, Ljava/lang/Byte;

    if-nez v2, :cond_11

    instance-of v2, p0, Ljava/lang/Short;

    if-nez v2, :cond_11

    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_11

    instance-of v2, p0, Ljava/lang/Long;

    if-nez v2, :cond_11

    instance-of v2, p0, Lcom/google/android/gms/tagmanager/zzfu;

    if-eqz v2, :cond_10

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/tagmanager/zzfu;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzfu;->zzg()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_9
    const-string v2, "GoogleTagManager"

    if-eqz v1, :cond_13

    const/4 v1, 0x6

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 36
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_12

    .line 37
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_a

    :cond_12
    const-string p0, "getInt64 received non-Number"

    .line 38
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 39
    :goto_a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzal;->zzq(J)Lcom/google/android/gms/internal/gtm/zzal;

    goto :goto_b

    .line 40
    :cond_13
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    const/16 v1, 0x8

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 42
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzal;->zzn(Z)Lcom/google/android/gms/internal/gtm/zzal;

    .line 43
    :goto_b
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzal;->zzo(Z)Lcom/google/android/gms/internal/gtm/zzal;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0

    :cond_14
    if-nez p0, :cond_15

    const-string p0, "null"

    goto :goto_c

    .line 45
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Converting to Value from unknown object type: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 46
    :cond_16
    new-instance p0, Ljava/lang/String;

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_d
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object p0, Lcom/google/android/gms/tagmanager/zzfv;->zzh:Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzO()I

    move-result v1

    const-string v2, "GoogleTagManager"

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzM()Z

    move-result p0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzs()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/tagmanager/zzfv;->zzd:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzf()J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p0, "Trying to convert a function id to object"

    .line 9
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_3
    const-string p0, "Trying to convert a macro reference to object"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 11
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuz;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Converting an invalid value to object: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 13
    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 14
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzd()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 16
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 17
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzak;->zzk(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzak;->zzl(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0

    :cond_7
    return-object v1

    .line 20
    :pswitch_5
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zza()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzr()Ljava/util/List;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    return-object v0

    .line 24
    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    return-object v1

    .line 25
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzn(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/tagmanager/zzfv;->zzd:Ljava/lang/String;

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
