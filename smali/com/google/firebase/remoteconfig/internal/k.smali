.class public Lcom/google/firebase/remoteconfig/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/k$a;
    }
.end annotation


# static fields
.field public static final j:J

.field static final k:[I


# instance fields
.field private final a:Lcom/google/firebase/installations/g;

.field private final b:Lvy;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/android/gms/common/util/d;

.field private final e:Ljava/util/Random;

.field private final f:Lcom/google/firebase/remoteconfig/internal/e;

.field private final g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

.field private final h:Lcom/google/firebase/remoteconfig/internal/n;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/remoteconfig/internal/k;->j:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/k;->k:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/installations/g;Lvy;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/d;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/g;",
            "Lvy;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/common/util/d;",
            "Ljava/util/Random;",
            "Lcom/google/firebase/remoteconfig/internal/e;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;",
            "Lcom/google/firebase/remoteconfig/internal/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/k;->a:Lcom/google/firebase/installations/g;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->b:Lvy;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/k;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/k;->d:Lcom/google/android/gms/common/util/d;

    .line 6
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/internal/k;->e:Ljava/util/Random;

    .line 7
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/internal/k;->f:Lcom/google/firebase/remoteconfig/internal/e;

    .line 8
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/internal/k;->g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 9
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    .line 10
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/k;->i:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/k$a;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/k;->g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->b()Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 2
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/k;->g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/k;->b:Lvy;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v1, v0}, Lvy;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/n;->c()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/k;->i:Ljava/util/Map;

    move-object v4, p1

    move-object v5, p2

    move-object v9, p3

    .line 9
    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->fetch(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/k$a;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/k$a;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/k$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/firebase/remoteconfig/internal/n;->h(Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    .line 13
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/n;->e:Ljava/util/Date;

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/remoteconfig/internal/n;->f(ILjava/util/Date;)V
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/j; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/j;->a()I

    move-result p2

    const/4 v1, 0x1

    const/16 v2, 0x1ad

    if-eq p2, v2, :cond_4

    const/16 v3, 0x1f6

    if-eq p2, v3, :cond_4

    const/16 v3, 0x1f7

    if-eq p2, v3, :cond_4

    const/16 v3, 0x1f8

    if-ne p2, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n;->a()Lcom/google/firebase/remoteconfig/internal/n$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n$a;->b()I

    move-result p2

    add-int/2addr p2, v1

    .line 16
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/firebase/remoteconfig/internal/k;->k:[I

    array-length v5, v4

    .line 17
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    .line 19
    div-long v5, v3, v5

    iget-object v7, p0, Lcom/google/firebase/remoteconfig/internal/k;->e:Ljava/util/Random;

    long-to-int v4, v3

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v5, v3

    .line 20
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 21
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p3, p2, v3}, Lcom/google/firebase/remoteconfig/internal/n;->f(ILjava/util/Date;)V

    .line 22
    :cond_5
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n;->a()Lcom/google/firebase/remoteconfig/internal/n$a;

    move-result-object p2

    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/j;->a()I

    move-result p3

    .line 24
    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n$a;->b()I

    move-result v3

    if-gt v3, v1, :cond_6

    if-ne p3, v2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_c

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/j;->a()I

    move-result p2

    const/16 p3, 0x191

    if-eq p2, p3, :cond_b

    const/16 p3, 0x193

    if-eq p2, p3, :cond_a

    if-eq p2, v2, :cond_9

    const/16 p3, 0x1f4

    if-eq p2, p3, :cond_8

    packed-switch p2, :pswitch_data_0

    const-string p2, "The server returned an unexpected error."

    goto :goto_4

    :pswitch_0
    const-string p2, "The server is unavailable. Please try again later."

    goto :goto_4

    :cond_8
    const-string p2, "There was an internal server error."

    goto :goto_4

    .line 26
    :cond_9
    new-instance p1, Lcom/google/firebase/remoteconfig/g;

    const-string p2, "The throttled response from the server was not handled correctly by the FRC SDK."

    invoke-direct {p1, p2}, Lcom/google/firebase/remoteconfig/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p2, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    goto :goto_4

    :cond_b
    const-string p2, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    .line 27
    :goto_4
    new-instance p3, Lcom/google/firebase/remoteconfig/j;

    .line 28
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/j;->a()I

    move-result v0

    const-string v1, "Fetch failed: "

    invoke-static {v1, p2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2, p1}, Lcom/google/firebase/remoteconfig/j;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw p3

    .line 30
    :cond_c
    new-instance p1, Lcom/google/firebase/remoteconfig/i;

    .line 31
    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/n$a;->a()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/remoteconfig/i;-><init>(J)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static c(Lcom/google/firebase/remoteconfig/internal/k;JLkw;)Lkw;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/k;->d:Lcom/google/android/gms/common/util/d;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {p3}, Lkw;->m()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/n;->d()Ljava/util/Date;

    move-result-object p3

    .line 5
    sget-object v2, Lcom/google/firebase/remoteconfig/internal/n;->d:Ljava/util/Date;

    invoke-virtual {p3, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 7
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr p1, v3

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/k$a;->c(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/k$a;

    move-result-object p0

    invoke-static {p0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p0

    goto :goto_3

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/n;->a()Lcom/google/firebase/remoteconfig/internal/n$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/n$a;->a()Ljava/util/Date;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 12
    new-instance p3, Lcom/google/firebase/remoteconfig/i;

    .line 13
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-array p2, p2, [Ljava/lang/Object;

    .line 14
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "Fetch is throttled. Please wait before calling fetch again: %s"

    .line 16
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p3, p2, v1, v2}, Lcom/google/firebase/remoteconfig/i;-><init>(Ljava/lang/String;J)V

    .line 18
    invoke-static {p3}, Lnw;->c(Ljava/lang/Exception;)Lkw;

    move-result-object p1

    goto :goto_2

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/k;->a:Lcom/google/firebase/installations/g;

    invoke-interface {p1}, Lcom/google/firebase/installations/g;->getId()Lkw;

    move-result-object p1

    .line 20
    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/k;->a:Lcom/google/firebase/installations/g;

    .line 21
    invoke-interface {p3, v1}, Lcom/google/firebase/installations/g;->a(Z)Lkw;

    move-result-object p3

    const/4 v2, 0x2

    new-array v2, v2, [Lkw;

    aput-object p1, v2, v1

    aput-object p3, v2, p2

    .line 22
    invoke-static {v2}, Lnw;->f([Lkw;)Lkw;

    move-result-object p2

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/k;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p3, v0}, Lcom/google/firebase/remoteconfig/internal/h;->a(Lcom/google/firebase/remoteconfig/internal/k;Lkw;Lkw;Ljava/util/Date;)Ldw;

    move-result-object p1

    .line 23
    invoke-virtual {p2, v1, p1}, Lkw;->h(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object p1

    .line 24
    :goto_2
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/firebase/remoteconfig/internal/i;->a(Lcom/google/firebase/remoteconfig/internal/k;Ljava/util/Date;)Ldw;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lkw;->h(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method static d(Lcom/google/firebase/remoteconfig/internal/k;Lkw;Lkw;Ljava/util/Date;)Lkw;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkw;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/google/firebase/remoteconfig/g;

    .line 3
    invoke-virtual {p1}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p1

    const-string p2, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/remoteconfig/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lnw;->c(Ljava/lang/Exception;)Lkw;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lkw;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance p0, Lcom/google/firebase/remoteconfig/g;

    .line 7
    invoke-virtual {p2}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p1

    const-string p2, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/remoteconfig/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0}, Lnw;->c(Ljava/lang/Exception;)Lkw;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Lkw;->j()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/installations/l;

    invoke-virtual {p2}, Lcom/google/firebase/installations/l;->a()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/k$a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/k$a;->f()I

    move-result p2

    if-eqz p2, :cond_2

    .line 14
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/k;->f:Lcom/google/firebase/remoteconfig/internal/e;

    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/k$a;->d()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/firebase/remoteconfig/internal/e;->h(Lcom/google/firebase/remoteconfig/internal/f;)Lkw;

    move-result-object p2

    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/k;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/internal/j;->b(Lcom/google/firebase/remoteconfig/internal/k$a;)Ljw;

    move-result-object p1

    .line 17
    invoke-virtual {p2, p0, p1}, Lkw;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/firebase/remoteconfig/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-static {p0}, Lnw;->c(Ljava/lang/Exception;)Lkw;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static e(Lcom/google/firebase/remoteconfig/internal/k;Ljava/util/Date;Lkw;)Lkw;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/n;->j(Ljava/util/Date;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of p1, p1, Lcom/google/firebase/remoteconfig/i;

    if-eqz p1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/n;->k()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/n;->i()V

    :goto_0
    return-object p2
.end method


# virtual methods
.method public a()Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Lcom/google/firebase/remoteconfig/internal/k$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/k;->h:Lcom/google/firebase/remoteconfig/internal/n;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/n;->e()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/k;->f:Lcom/google/firebase/remoteconfig/internal/e;

    .line 3
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/internal/e;->c()Lkw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/k;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/g;->a(Lcom/google/firebase/remoteconfig/internal/k;J)Ldw;

    move-result-object v0

    .line 4
    invoke-virtual {v2, v3, v0}, Lkw;->h(Ljava/util/concurrent/Executor;Ldw;)Lkw;

    move-result-object v0

    return-object v0
.end method
