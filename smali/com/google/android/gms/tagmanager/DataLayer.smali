.class public Lcom/google/android/gms/tagmanager/DataLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OBJECT_NOT_PRESENT:Ljava/lang/Object;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field static final zza:[Ljava/lang/String;

.field private static final zzb:Ljava/util/regex/Pattern;


# instance fields
.field private final zzc:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/tagmanager/zzav;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/concurrent/locks/ReentrantLock;

.field private final zzf:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/tagmanager/zzax;

.field private final zzh:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    const-string v0, "gtm.lifetime"

    const-string v1, "\\."

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->zza:[Ljava/lang/String;

    const-string v0, "(\\d+)\\s*([smhd]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->zzb:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzax;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzg:Lcom/google/android/gms/tagmanager/zzax;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzd:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zze:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/LinkedList;

    .line 4
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzf:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzh:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzat;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzat;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    check-cast p1, Lcom/google/android/gms/tagmanager/zzbe;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzb(Lcom/google/android/gms/tagmanager/zzaw;)V

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzh:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static zzc(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zze:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzf:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zze:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzf:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzd:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzd:Ljava/util/Map;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/tagmanager/DataLayer;->zzf(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 8
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/tagmanager/zzav;

    .line 10
    invoke-interface {v5, v3}, Lcom/google/android/gms/tagmanager/zzav;->zza(Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    add-int/2addr v0, v1

    const/16 v3, 0x1f4

    if-gt v0, v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzf:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Seems like an infinite loop of pushing to the data layer"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 15
    :cond_3
    sget-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->zza:[Ljava/lang/String;

    .line 16
    array-length v3, v0

    move-object v5, p1

    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x0

    if-ge v4, v3, :cond_5

    aget-object v7, v0, v4

    .line 17
    instance-of v8, v5, Ljava/util/Map;

    if-nez v8, :cond_4

    move-object v5, v6

    goto :goto_4

    .line 18
    :cond_4
    check-cast v5, Ljava/util/Map;

    .line 19
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v5, :cond_6

    goto/16 :goto_8

    .line 20
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/tagmanager/DataLayer;->zzb:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v1, "unknown _lifetime: "

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_8

    .line 24
    :cond_7
    new-instance v0, Ljava/lang/String;

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    :cond_8
    const-wide/16 v4, 0x0

    .line 26
    :try_start_5
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "null reference"

    .line 27
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catch_0
    :try_start_6
    const-string v1, "illegal number in _lifetime value: "

    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    :goto_5
    const-string v7, "GoogleTagManager"

    .line 30
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v4

    :goto_6
    cmp-long v1, v7, v4

    if-gtz v1, :cond_b

    const-string v1, "non-positive _lifetime: "

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_8

    .line 32
    :cond_a
    new-instance v0, Ljava/lang/String;

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null reference"

    .line 35
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_8

    .line 38
    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_11

    const/16 v2, 0x68

    if-eq v1, v2, :cond_10

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_f

    const/16 v2, 0x73

    if-eq v1, v2, :cond_e

    const-string v1, "unknown units in _lifetime: "

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    const-string v1, "GoogleTagManager"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    const-wide/16 v0, 0x3e8

    mul-long v7, v7, v0

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_8

    :cond_f
    const-wide/32 v0, 0xea60

    mul-long v7, v7, v0

    .line 42
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_8

    :cond_10
    const-wide/32 v0, 0x36ee80

    mul-long v7, v7, v0

    .line 43
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_8

    :cond_11
    const-wide/32 v0, 0x5265c00

    mul-long v7, v7, v0

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_8
    if-eqz v6, :cond_12

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 47
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzh(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzg:Lcom/google/android/gms/tagmanager/zzax;

    .line 48
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzbe;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzbe;->zzc(Ljava/util/List;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_12
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zze:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    .line 50
    iget-object p0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zze:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method private final zzh(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/tagmanager/zzau;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "."

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v6, p2, v1, v2}, Lic;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/DataLayer;->zzh(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    const-string v2, "gtm.lifetime"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/tagmanager/zzau;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/tagmanager/zzau;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzd:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v5

    const-string v3, "{\n\tKey: %s\n\tValue: %s\n}\n"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v0

    .line 3
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    .line 4
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    aget-object v4, p1, v1

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    .line 6
    :cond_0
    aget-object p1, p1, v3

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final zze(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/util/List;

    const-string v3, "null reference"

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    check-cast v2, Ljava/util/List;

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->zze(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 13
    :cond_2
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    check-cast v1, Ljava/util/Map;

    .line 19
    check-cast v2, Ljava/util/Map;

    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->zzf(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/google/android/gms/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    if-eq v1, v2, :cond_5

    .line 21
    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method final zzf(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Ljava/util/List;

    const-string v4, "null reference"

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    check-cast v2, Ljava/util/List;

    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zze(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_1
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 12
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    .line 13
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    check-cast v2, Ljava/util/Map;

    .line 17
    check-cast v1, Ljava/util/Map;

    .line 18
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->zzf(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method final zzg(Lcom/google/android/gms/tagmanager/zzav;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->zzc:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
