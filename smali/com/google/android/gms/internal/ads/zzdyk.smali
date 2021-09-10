.class public Lcom/google/android/gms/internal/ads/zzdyk;
.super Lcom/google/android/gms/internal/ads/zzeao;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdyk$zzf;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzd;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzj;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzb;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzg;,
        Lcom/google/android/gms/internal/ads/zzdyk$zza;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzc;,
        Lcom/google/android/gms/internal/ads/zzdyk$zze;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzk;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzh;,
        Lcom/google/android/gms/internal/ads/zzdyk$zzi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzeao;",
        "Lcom/google/android/gms/internal/ads/zzdzw<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final zzhzc:Ljava/util/logging/Logger;

.field private static final zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;


# instance fields
.field private volatile listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    .line 5
    const-class v1, Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzc:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 6
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyk$zzj;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzj;-><init>(Lcom/google/android/gms/internal/ads/zzdyk$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    move-object v9, v5

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 7
    :try_start_2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzdyk$zzd;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "thread"

    .line 8
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "next"

    .line 9
    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyk;

    const-string v6, "waiters"

    .line 10
    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/android/gms/internal/ads/zzdyk;

    const-class v3, Lcom/google/android/gms/internal/ads/zzdyk$zze;

    const-string v7, "listeners"

    .line 11
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/android/gms/internal/ads/zzdyk;

    const-class v3, Ljava/lang/Object;

    const-string v8, "value"

    .line 12
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdyk$zzd;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v2

    move-object v2, v9

    move-object v9, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zzf;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzf;-><init>(Lcom/google/android/gms/internal/ads/zzdyk$1;)V

    move-object v9, v0

    move-object v5, v2

    move-object v2, v3

    .line 14
    :goto_1
    sput-object v2, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    if-eqz v9, :cond_0

    .line 15
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzc:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "<clinit>"

    const-string v4, "UnsafeAtomicHelper is broken!"

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "com.google.common.util.concurrent.AbstractFuture"

    const-string v1, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    move-object v7, v1

    .line 16
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeao;-><init>()V

    return-void
.end method

.method private static getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 1
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzi;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyk;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    :cond_1
    :goto_0
    return-object p0

    .line 9
    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/zzeao;

    if-eqz v1, :cond_3

    .line 10
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeao;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzean;->zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 13
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    .line 14
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 15
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return-object p0

    .line 16
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 17
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 18
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-static {v3, v4, p0}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 21
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    invoke-static {v5, v0, p0}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 23
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zze;)Lcom/google/android/gms/internal/ads/zzdyk$zze;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 7
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 8
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdyk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyk<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v2, :cond_2

    .line 11
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 12
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->thread:Ljava/lang/Thread;

    .line 13
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 14
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->next:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->afterDone()V

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 17
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk$zze;->zzhzh:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zze;Lcom/google/android/gms/internal/ads/zzdyk$zze;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    .line 18
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 19
    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p0, :cond_7

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk$zze;->task:Ljava/lang/Runnable;

    .line 22
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-eqz v3, :cond_5

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    .line 24
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->zzhzi:Lcom/google/android/gms/internal/ads/zzdyk;

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    .line 26
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdyk;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v4, p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 28
    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zze;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    :goto_3
    move-object p0, v1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 39
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzc:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RuntimeException while executing runnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    :try_start_0
    const-string p2, "this future"

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v0, "Exception thrown from implementation: "

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzaf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->cause:Ljava/lang/Throwable;

    .line 6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method static synthetic zzazu()Lcom/google/android/gms/internal/ads/zzdyk$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    return-object v0
.end method

.method static synthetic zzazv()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdyk;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdyk;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdyk;)Lcom/google/android/gms/internal/ads/zzdyk$zzk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzdyk;)Lcom/google/android/gms/internal/ads/zzdyk$zze;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->zzhzh:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    if-eq v0, v1, :cond_2

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyk$zze;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzdyk$zze;->next:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zze;Lcom/google/android/gms/internal/ads/zzdyk$zze;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->listeners:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdyk$zze;->zzhzh:Lcom/google/android/gms/internal/ads/zzdyk$zze;

    if-ne v0, v2, :cond_0

    .line 11
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected afterDone()V
    .locals 0

    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 3
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzdyk;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzdyk$zza;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhze:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk$zza;->zzhzf:Lcom/google/android/gms/internal/ads/zzdyk$zza;

    :goto_1
    const/4 v5, 0x0

    move-object v4, p0

    .line 7
    :cond_3
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v6, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdyk;->interruptTask()V

    .line 9
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    .line 10
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-eqz v4, :cond_9

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    .line 12
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzi;

    if-eqz v4, :cond_6

    .line 13
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdyk;

    .line 14
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_3
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    .line 16
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 17
    :cond_7
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 18
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 50
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-eq v0, v3, :cond_7

    .line 51
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;-><init>()V

    .line 52
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzb(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 53
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 62
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-ne v0, v4, :cond_2

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    const-wide/16 v6, 0x3e8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_a

    .line 7
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 8
    sget-object v9, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-eq v8, v9, :cond_9

    .line 9
    new-instance v9, Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;-><init>()V

    .line 10
    :cond_3
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzb(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 11
    sget-object v10, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v10, p0, v8, v9}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;Lcom/google/android/gms/internal/ads/zzdyk$zzk;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_4
    const-wide v10, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 12
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 15
    :goto_2
    instance-of v8, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v1, v8

    if-eqz v1, :cond_6

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    .line 18
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk$zzk;)V

    .line 20
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 21
    :cond_8
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdyk;->waiters:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    .line 22
    sget-object v10, Lcom/google/android/gms/internal/ads/zzdyk$zzk;->zzhzp:Lcom/google/android/gms/internal/ads/zzdyk$zzk;

    if-ne v8, v10, :cond_3

    .line 23
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_3
    cmp-long v8, v0, v2

    if-lez v8, :cond_e

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 25
    :goto_4
    instance-of v8, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v1, v8

    if-eqz v1, :cond_c

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zzaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_3

    .line 29
    :cond_d
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 30
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->toString()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1c

    invoke-static {v8, v9}, Lic;->m(Ljava/lang/String;I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Waited "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-long v8, v0, v6

    cmp-long v10, v8, v2

    if-gez v10, :cond_14

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v8, " (plus "

    invoke-virtual {p2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    neg-long v0, v0

    .line 34
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 35
    invoke-virtual {p3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v0, v10

    cmp-long p3, v8, v2

    if-eqz p3, :cond_10

    cmp-long p3, v0, v6

    if-lez p3, :cond_f

    goto :goto_5

    :cond_f
    const/4 p3, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 p3, 0x1

    :goto_6
    cmp-long v6, v8, v2

    if-lez v6, :cond_12

    .line 36
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {v5, v2}, Lic;->m(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_11

    .line 37
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    if-eqz p3, :cond_13

    .line 39
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x21

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " nanoseconds "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 40
    :cond_13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "delay)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 42
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, " but future completed as timeout expired"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_15
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const/4 p3, 0x5

    invoke-static {p2, p3}, Lic;->m(Ljava/lang/String;I)I

    move-result p3

    invoke-static {v4, p3}, Lic;->m(Ljava/lang/String;I)I

    move-result p3

    const-string v0, " for "

    invoke-static {p3, p2, v0, v4}, Lic;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_16
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method protected interruptTask()V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyk;->NULL:Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final setFuture(Lcom/google/android/gms/internal/ads/zzdzw;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyk;->getFutureValue(Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Lcom/google/android/gms/internal/ads/zzdyk;)V

    return v2

    :cond_0
    return v1

    .line 7
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzg;-><init>(Lcom/google/android/gms/internal/ads/zzdyk;Lcom/google/android/gms/internal/ads/zzdzw;)V

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdzd;->zziaj:Lcom/google/android/gms/internal/ads/zzdzd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdyk$zzc;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 11
    :catchall_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyk$zzc;->zzhzg:Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    .line 12
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdyk;->zzhzd:Lcom/google/android/gms/internal/ads/zzdyk$zzb;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyk$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdyk;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 14
    :cond_3
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-eqz v2, :cond_4

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 13
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    if-eqz v4, :cond_3

    const-string v4, ", setFuture=["

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    check-cast v3, Lcom/google/android/gms/internal/ads/zzdyk$zzg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdyk$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 17
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->pendingToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdwt;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 18
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x26

    const-string v5, "Exception thrown from implementation: "

    invoke-static {v4, v5, v3}, Lic;->d(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    const-string v4, ", info=["

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyk;->isDone()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyk;->zza(Ljava/lang/StringBuilder;)V

    .line 23
    :cond_5
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zza;->wasInterrupted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzazt()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyk$zzi;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyk;->value:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyk$zzc;->exception:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
