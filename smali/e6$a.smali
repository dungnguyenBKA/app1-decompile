.class Le6$a;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6;-><init>(Landroidx/room/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b<",
        "Lc6;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Le6;Landroidx/room/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/b;-><init>(Landroidx/room/g;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public d(Ll4;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p1

    .line 1
    move-object/from16 v0, p2

    check-cast v0, Lc6;

    .line 2
    iget-object v2, v0, Lc6;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    invoke-interface {v1, v3}, Lj4;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, v3, v2}, Lj4;->g(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v2, v0, Lc6;->b:Landroidx/work/m;

    invoke-static {v2}, Li6;->e(Landroidx/work/m;)I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x2

    .line 6
    invoke-interface {v1, v2, v4, v5}, Lj4;->z(IJ)V

    .line 7
    iget-object v4, v0, Lc6;->c:Ljava/lang/String;

    const/4 v5, 0x3

    if-nez v4, :cond_1

    .line 8
    invoke-interface {v1, v5}, Lj4;->N(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {v1, v5, v4}, Lj4;->g(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-object v4, v0, Lc6;->d:Ljava/lang/String;

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 11
    invoke-interface {v1, v6}, Lj4;->N(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v1, v6, v4}, Lj4;->g(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v4, v0, Lc6;->e:Landroidx/work/e;

    invoke-static {v4}, Landroidx/work/e;->c(Landroidx/work/e;)[B

    move-result-object v4

    const/4 v7, 0x5

    if-nez v4, :cond_3

    .line 14
    invoke-interface {v1, v7}, Lj4;->N(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v1, v7, v4}, Lj4;->B(I[B)V

    .line 16
    :goto_3
    iget-object v4, v0, Lc6;->f:Landroidx/work/e;

    invoke-static {v4}, Landroidx/work/e;->c(Landroidx/work/e;)[B

    move-result-object v4

    const/4 v7, 0x6

    if-nez v4, :cond_4

    .line 17
    invoke-interface {v1, v7}, Lj4;->N(I)V

    goto :goto_4

    .line 18
    :cond_4
    invoke-interface {v1, v7, v4}, Lj4;->B(I[B)V

    :goto_4
    const/4 v4, 0x7

    .line 19
    iget-wide v7, v0, Lc6;->g:J

    invoke-interface {v1, v4, v7, v8}, Lj4;->z(IJ)V

    const/16 v4, 0x8

    .line 20
    iget-wide v7, v0, Lc6;->h:J

    invoke-interface {v1, v4, v7, v8}, Lj4;->z(IJ)V

    const/16 v4, 0x9

    .line 21
    iget-wide v7, v0, Lc6;->i:J

    invoke-interface {v1, v4, v7, v8}, Lj4;->z(IJ)V

    const/16 v4, 0xa

    .line 22
    iget v7, v0, Lc6;->k:I

    int-to-long v7, v7

    invoke-interface {v1, v4, v7, v8}, Lj4;->z(IJ)V

    .line 23
    iget-object v4, v0, Lc6;->l:Landroidx/work/a;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v8, " to int"

    const-string v9, "Could not convert "

    if-eqz v7, :cond_6

    if-ne v7, v3, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    .line 25
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x0

    :goto_5
    const/16 v7, 0xb

    int-to-long v11, v4

    .line 26
    invoke-interface {v1, v7, v11, v12}, Lj4;->z(IJ)V

    const/16 v4, 0xc

    .line 27
    iget-wide v11, v0, Lc6;->m:J

    invoke-interface {v1, v4, v11, v12}, Lj4;->z(IJ)V

    const/16 v4, 0xd

    .line 28
    iget-wide v11, v0, Lc6;->n:J

    invoke-interface {v1, v4, v11, v12}, Lj4;->z(IJ)V

    const/16 v4, 0xe

    .line 29
    iget-wide v11, v0, Lc6;->o:J

    invoke-interface {v1, v4, v11, v12}, Lj4;->z(IJ)V

    const/16 v4, 0xf

    .line 30
    iget-wide v11, v0, Lc6;->p:J

    invoke-interface {v1, v4, v11, v12}, Lj4;->z(IJ)V

    .line 31
    iget-object v0, v0, Lc6;->j:Landroidx/work/c;

    const/16 v4, 0x15

    const/16 v7, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    if-eqz v0, :cond_11

    .line 32
    invoke-virtual {v0}, Landroidx/work/c;->b()Landroidx/work/i;

    move-result-object v10

    .line 33
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_b

    if-eq v15, v3, :cond_a

    if-eq v15, v2, :cond_9

    if-eq v15, v5, :cond_8

    if-ne v15, v6, :cond_7

    goto :goto_7

    .line 34
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v3, 0x3

    goto :goto_6

    :cond_9
    const/4 v3, 0x2

    :cond_a
    :goto_6
    move v6, v3

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    int-to-long v2, v6

    .line 35
    invoke-interface {v1, v14, v2, v3}, Lj4;->z(IJ)V

    .line 36
    invoke-virtual {v0}, Landroidx/work/c;->g()Z

    move-result v2

    int-to-long v2, v2

    .line 37
    invoke-interface {v1, v13, v2, v3}, Lj4;->z(IJ)V

    .line 38
    invoke-virtual {v0}, Landroidx/work/c;->h()Z

    move-result v2

    int-to-long v2, v2

    .line 39
    invoke-interface {v1, v12, v2, v3}, Lj4;->z(IJ)V

    .line 40
    invoke-virtual {v0}, Landroidx/work/c;->f()Z

    move-result v2

    int-to-long v2, v2

    .line 41
    invoke-interface {v1, v11, v2, v3}, Lj4;->z(IJ)V

    .line 42
    invoke-virtual {v0}, Landroidx/work/c;->i()Z

    move-result v2

    int-to-long v2, v2

    .line 43
    invoke-interface {v1, v7, v2, v3}, Lj4;->z(IJ)V

    .line 44
    invoke-virtual {v0}, Landroidx/work/c;->c()J

    move-result-wide v2

    invoke-interface {v1, v4, v2, v3}, Lj4;->z(IJ)V

    .line 45
    invoke-virtual {v0}, Landroidx/work/c;->d()J

    move-result-wide v2

    const/16 v4, 0x16

    invoke-interface {v1, v4, v2, v3}, Lj4;->z(IJ)V

    .line 46
    invoke-virtual {v0}, Landroidx/work/c;->a()Landroidx/work/d;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroidx/work/d;->c()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    goto :goto_c

    .line 48
    :cond_c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-virtual {v0}, Landroidx/work/d;->c()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 51
    invoke-virtual {v0}, Landroidx/work/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/d$a;

    .line 52
    invoke-virtual {v3}, Landroidx/work/d$a;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Landroidx/work/d$a;->b()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 54
    :cond_d
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    .line 55
    :goto_9
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_e

    .line 56
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 57
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :cond_e
    :goto_a
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 59
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    :goto_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_c
    if-nez v3, :cond_f

    const/16 v2, 0x17

    .line 61
    invoke-interface {v1, v2}, Lj4;->N(I)V

    goto :goto_11

    :cond_f
    const/16 v2, 0x17

    .line 62
    invoke-interface {v1, v2, v3}, Lj4;->B(I[B)V

    goto :goto_11

    :goto_d
    move-object v1, v0

    move-object v4, v3

    :goto_e
    if-eqz v4, :cond_10

    .line 63
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 64
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :cond_10
    :goto_f
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 66
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    :goto_10
    throw v1

    .line 68
    :cond_11
    invoke-interface {v1, v14}, Lj4;->N(I)V

    .line 69
    invoke-interface {v1, v13}, Lj4;->N(I)V

    .line 70
    invoke-interface {v1, v12}, Lj4;->N(I)V

    .line 71
    invoke-interface {v1, v11}, Lj4;->N(I)V

    .line 72
    invoke-interface {v1, v7}, Lj4;->N(I)V

    .line 73
    invoke-interface {v1, v4}, Lj4;->N(I)V

    const/16 v0, 0x16

    .line 74
    invoke-interface {v1, v0}, Lj4;->N(I)V

    const/16 v2, 0x17

    .line 75
    invoke-interface {v1, v2}, Lj4;->N(I)V

    :goto_11
    return-void
.end method
