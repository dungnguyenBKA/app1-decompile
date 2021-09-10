.class public Lvh0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Ljh0;

.field final c:Llh0;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLjh0;Llh0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lvh0$a;->l:I

    .line 3
    iput-wide p1, p0, Lvh0$a;->a:J

    .line 4
    iput-object p3, p0, Lvh0$a;->b:Ljh0;

    .line 5
    iput-object p4, p0, Lvh0$a;->c:Llh0;

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p4}, Llh0;->o0()J

    move-result-wide p1

    iput-wide p1, p0, Lvh0$a;->i:J

    .line 7
    invoke-virtual {p4}, Llh0;->m0()J

    move-result-wide p1

    iput-wide p1, p0, Lvh0$a;->j:J

    .line 8
    invoke-virtual {p4}, Llh0;->b0()Lch0;

    move-result-object p1

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1}, Lch0;->f()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_5

    .line 10
    invoke-virtual {p1, p2}, Lch0;->d(I)Ljava/lang/String;

    move-result-object p4

    .line 11
    invoke-virtual {p1, p2}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    .line 12
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-static {v1}, Lhi0;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lvh0$a;->d:Ljava/util/Date;

    .line 14
    iput-object v1, p0, Lvh0$a;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    .line 15
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {v1}, Lhi0;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lvh0$a;->h:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    .line 17
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-static {v1}, Lhi0;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lvh0$a;->f:Ljava/util/Date;

    .line 19
    iput-object v1, p0, Lvh0$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    .line 20
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    iput-object v1, p0, Lvh0$a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    .line 22
    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 23
    invoke-static {v1, v0}, Lii0;->c(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lvh0$a;->l:I

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Lvh0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lvh0$a;->c:Llh0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lvh0;

    iget-object v3, v0, Lvh0$a;->b:Ljh0;

    invoke-direct {v1, v3, v2}, Lvh0;-><init>(Ljh0;Llh0;)V

    :goto_0
    move-object v3, v2

    goto/16 :goto_b

    .line 3
    :cond_0
    iget-object v1, v0, Lvh0$a;->b:Ljh0;

    invoke-virtual {v1}, Ljh0;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lvh0$a;->c:Llh0;

    invoke-virtual {v1}, Llh0;->S()Lbh0;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lvh0;

    iget-object v3, v0, Lvh0$a;->b:Ljh0;

    invoke-direct {v1, v3, v2}, Lvh0;-><init>(Ljh0;Llh0;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lvh0$a;->c:Llh0;

    iget-object v3, v0, Lvh0$a;->b:Ljh0;

    invoke-static {v1, v3}, Lvh0;->a(Llh0;Ljh0;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lvh0;

    iget-object v3, v0, Lvh0$a;->b:Ljh0;

    invoke-direct {v1, v3, v2}, Lvh0;-><init>(Ljh0;Llh0;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, v0, Lvh0$a;->b:Ljh0;

    invoke-virtual {v1}, Ljh0;->b()Lng0;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lng0;->g()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lvh0$a;->b:Ljh0;

    const-string v4, "If-Modified-Since"

    .line 9
    invoke-virtual {v3, v4}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "If-None-Match"

    if-nez v5, :cond_4

    invoke-virtual {v3, v6}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_5

    goto/16 :goto_a

    .line 10
    :cond_5
    iget-object v3, v0, Lvh0$a;->c:Llh0;

    invoke-virtual {v3}, Llh0;->o()Lng0;

    move-result-object v3

    .line 11
    iget-object v5, v0, Lvh0$a;->d:Ljava/util/Date;

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_6

    .line 12
    iget-wide v11, v0, Lvh0$a;->j:J

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_3

    :cond_6
    move-wide v11, v9

    .line 13
    :goto_3
    iget v5, v0, Lvh0$a;->l:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_7

    .line 14
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v5

    invoke-virtual {v14, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 15
    :cond_7
    iget-wide v7, v0, Lvh0$a;->j:J

    move-object v14, v3

    iget-wide v2, v0, Lvh0$a;->i:J

    sub-long v2, v7, v2

    move-object v15, v6

    .line 16
    iget-wide v5, v0, Lvh0$a;->a:J

    sub-long/2addr v5, v7

    add-long/2addr v11, v2

    add-long/2addr v11, v5

    .line 17
    iget-object v2, v0, Lvh0$a;->c:Llh0;

    invoke-virtual {v2}, Llh0;->o()Lng0;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lng0;->c()I

    move-result v3

    if-eq v3, v13, :cond_8

    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lng0;->c()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_6

    .line 20
    :cond_8
    iget-object v2, v0, Lvh0$a;->h:Ljava/util/Date;

    if-eqz v2, :cond_a

    .line 21
    iget-object v2, v0, Lvh0$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_9

    .line 22
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_4

    .line 23
    :cond_9
    iget-wide v2, v0, Lvh0$a;->j:J

    .line 24
    :goto_4
    iget-object v5, v0, Lvh0$a;->h:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v5, v2

    cmp-long v5, v2, v9

    if-lez v5, :cond_c

    goto :goto_6

    .line 25
    :cond_a
    iget-object v2, v0, Lvh0$a;->f:Ljava/util/Date;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lvh0$a;->c:Llh0;

    .line 26
    invoke-virtual {v2}, Llh0;->n0()Ljh0;

    move-result-object v2

    invoke-virtual {v2}, Ljh0;->h()Ldh0;

    move-result-object v2

    invoke-virtual {v2}, Ldh0;->u()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 27
    iget-object v2, v0, Lvh0$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_b

    .line 28
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_5

    .line 29
    :cond_b
    iget-wide v2, v0, Lvh0$a;->i:J

    .line 30
    :goto_5
    iget-object v5, v0, Lvh0$a;->f:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    cmp-long v5, v2, v9

    if-lez v5, :cond_c

    const-wide/16 v5, 0xa

    .line 31
    div-long/2addr v2, v5

    goto :goto_6

    :cond_c
    move-wide v2, v9

    .line 32
    :goto_6
    invoke-virtual {v1}, Lng0;->c()I

    move-result v5

    if-eq v5, v13, :cond_d

    .line 33
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lng0;->c()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 34
    :cond_d
    invoke-virtual {v1}, Lng0;->e()I

    move-result v5

    if-eq v5, v13, :cond_e

    .line 35
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lng0;->e()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    goto :goto_7

    :cond_e
    move-wide v5, v9

    .line 36
    :goto_7
    invoke-virtual {v14}, Lng0;->f()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v1}, Lng0;->d()I

    move-result v7

    if-eq v7, v13, :cond_f

    .line 37
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lng0;->d()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 38
    :cond_f
    invoke-virtual {v14}, Lng0;->g()Z

    move-result v1

    if-nez v1, :cond_13

    add-long/2addr v5, v11

    add-long/2addr v9, v2

    cmp-long v1, v5, v9

    if-gez v1, :cond_13

    .line 39
    iget-object v1, v0, Lvh0$a;->c:Llh0;

    invoke-virtual {v1}, Llh0;->k0()Llh0$a;

    move-result-object v1

    const-string v4, "Warning"

    cmp-long v7, v5, v2

    if-ltz v7, :cond_10

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    .line 40
    invoke-virtual {v1, v4, v2}, Llh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Llh0$a;

    :cond_10
    const-wide/32 v2, 0x5265c00

    cmp-long v5, v11, v2

    if-lez v5, :cond_12

    .line 41
    iget-object v2, v0, Lvh0$a;->c:Llh0;

    invoke-virtual {v2}, Llh0;->o()Lng0;

    move-result-object v2

    invoke-virtual {v2}, Lng0;->c()I

    move-result v2

    if-ne v2, v13, :cond_11

    iget-object v2, v0, Lvh0$a;->h:Ljava/util/Date;

    if-nez v2, :cond_11

    const/4 v7, 0x1

    goto :goto_8

    :cond_11
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_12

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    .line 42
    invoke-virtual {v1, v4, v2}, Llh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Llh0$a;

    .line 43
    :cond_12
    new-instance v2, Lvh0;

    invoke-virtual {v1}, Llh0$a;->c()Llh0;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lvh0;-><init>(Ljh0;Llh0;)V

    move-object v1, v2

    goto :goto_b

    .line 44
    :cond_13
    iget-object v1, v0, Lvh0$a;->k:Ljava/lang/String;

    if-eqz v1, :cond_14

    move-object v4, v15

    goto :goto_9

    .line 45
    :cond_14
    iget-object v1, v0, Lvh0$a;->f:Ljava/util/Date;

    if-eqz v1, :cond_15

    .line 46
    iget-object v1, v0, Lvh0$a;->g:Ljava/lang/String;

    goto :goto_9

    .line 47
    :cond_15
    iget-object v1, v0, Lvh0$a;->d:Ljava/util/Date;

    if-eqz v1, :cond_16

    .line 48
    iget-object v1, v0, Lvh0$a;->e:Ljava/lang/String;

    .line 49
    :goto_9
    iget-object v2, v0, Lvh0$a;->b:Ljh0;

    invoke-virtual {v2}, Ljh0;->d()Lch0;

    move-result-object v2

    invoke-virtual {v2}, Lch0;->e()Lch0$a;

    move-result-object v2

    .line 50
    sget-object v3, Lph0;->a:Lph0;

    invoke-virtual {v3, v2, v4, v1}, Lph0;->b(Lch0$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, v0, Lvh0$a;->b:Ljh0;

    invoke-virtual {v1}, Ljh0;->g()Ljh0$a;

    move-result-object v1

    .line 52
    invoke-virtual {v2}, Lch0$a;->b()Lch0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljh0$a;->d(Lch0;)Ljh0$a;

    .line 53
    invoke-virtual {v1}, Ljh0$a;->b()Ljh0;

    move-result-object v1

    .line 54
    new-instance v2, Lvh0;

    iget-object v3, v0, Lvh0$a;->c:Llh0;

    invoke-direct {v2, v1, v3}, Lvh0;-><init>(Ljh0;Llh0;)V

    move-object v1, v2

    const/4 v3, 0x0

    goto :goto_b

    .line 55
    :cond_16
    new-instance v1, Lvh0;

    iget-object v2, v0, Lvh0$a;->b:Ljh0;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lvh0;-><init>(Ljh0;Llh0;)V

    goto :goto_b

    :cond_17
    :goto_a
    move-object v3, v2

    .line 56
    new-instance v1, Lvh0;

    iget-object v2, v0, Lvh0$a;->b:Ljh0;

    invoke-direct {v1, v2, v3}, Lvh0;-><init>(Ljh0;Llh0;)V

    .line 57
    :goto_b
    iget-object v2, v1, Lvh0;->a:Ljh0;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lvh0$a;->b:Ljh0;

    invoke-virtual {v2}, Ljh0;->b()Lng0;

    move-result-object v2

    invoke-virtual {v2}, Lng0;->i()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 58
    new-instance v1, Lvh0;

    invoke-direct {v1, v3, v3}, Lvh0;-><init>(Ljh0;Llh0;)V

    :cond_18
    return-object v1
.end method
