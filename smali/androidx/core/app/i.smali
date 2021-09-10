.class Landroidx/core/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/d;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroidx/core/app/g;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/core/app/g;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/core/app/i;->c:Ljava/util/List;

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    .line 4
    iput-object v1, v0, Landroidx/core/app/i;->b:Landroidx/core/app/g;

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 6
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, v1, Landroidx/core/app/g;->a:Landroid/content/Context;

    iget-object v6, v1, Landroidx/core/app/g;->l:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, v1, Landroidx/core/app/g;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    .line 8
    :goto_0
    iget-object v4, v1, Landroidx/core/app/g;->n:Landroid/app/Notification;

    .line 9
    iget-object v5, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-wide v6, v4, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->icon:I

    iget v7, v4, Landroid/app/Notification;->iconLevel:I

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 11
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    .line 12
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->vibrate:[J

    .line 13
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->ledARGB:I

    iget v8, v4, Landroid/app/Notification;->ledOnMS:I

    iget v9, v4, Landroid/app/Notification;->ledOffMS:I

    .line 14
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 15
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 16
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 17
    :goto_3
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->defaults:I

    .line 18
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Landroidx/core/app/g;->d:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Landroidx/core/app/g;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 21
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v1, Landroidx/core/app/g;->f:Landroid/app/PendingIntent;

    .line 22
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 24
    :goto_4
    invoke-virtual {v5, v7, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 25
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 26
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 27
    invoke-virtual {v5, v8, v8, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    const/16 v5, 0x15

    if-ge v2, v5, :cond_5

    .line 28
    iget-object v2, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v6, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v10, v4, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v6, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 29
    :cond_5
    iget-object v2, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, v1, Landroidx/core/app/g;->g:I

    .line 31
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 32
    iget-object v2, v1, Landroidx/core/app/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v10, 0x1d

    const/16 v11, 0x18

    const/16 v12, 0x14

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/e;

    .line 33
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v12, :cond_f

    const/16 v12, 0x17

    if-lt v13, v12, :cond_7

    .line 34
    invoke-virtual {v6}, Landroidx/core/app/e;->c()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    .line 35
    new-instance v13, Landroid/app/Notification$Action$Builder;

    if-nez v12, :cond_6

    move-object v12, v7

    goto :goto_6

    .line 36
    :cond_6
    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->e()Landroid/graphics/drawable/Icon;

    move-result-object v12

    .line 37
    :goto_6
    iget-object v14, v6, Landroidx/core/app/e;->j:Ljava/lang/CharSequence;

    .line 38
    iget-object v15, v6, Landroidx/core/app/e;->k:Landroid/app/PendingIntent;

    .line 39
    invoke-direct {v13, v12, v14, v15}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_7

    .line 40
    :cond_7
    new-instance v13, Landroid/app/Notification$Action$Builder;

    .line 41
    iget v12, v6, Landroidx/core/app/e;->i:I

    .line 42
    iget-object v14, v6, Landroidx/core/app/e;->j:Ljava/lang/CharSequence;

    .line 43
    iget-object v15, v6, Landroidx/core/app/e;->k:Landroid/app/PendingIntent;

    .line 44
    invoke-direct {v13, v12, v14, v15}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 45
    :goto_7
    invoke-virtual {v6}, Landroidx/core/app/e;->d()[Landroidx/core/app/l;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 46
    invoke-virtual {v6}, Landroidx/core/app/e;->d()[Landroidx/core/app/l;

    move-result-object v12

    if-nez v12, :cond_8

    move-object v14, v7

    goto :goto_8

    .line 47
    :cond_8
    array-length v14, v12

    new-array v14, v14, [Landroid/app/RemoteInput;

    .line 48
    array-length v15, v12

    if-gtz v15, :cond_9

    .line 49
    :goto_8
    array-length v12, v14

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v12, :cond_a

    aget-object v3, v14, v15

    .line 50
    invoke-virtual {v13, v3}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x1a

    goto :goto_9

    .line 51
    :cond_9
    aget-object v1, v12, v8

    .line 52
    new-instance v1, Landroid/app/RemoteInput$Builder;

    .line 53
    throw v7

    .line 54
    :cond_a
    iget-object v3, v6, Landroidx/core/app/e;->a:Landroid/os/Bundle;

    if-eqz v3, :cond_b

    .line 55
    new-instance v3, Landroid/os/Bundle;

    .line 56
    iget-object v12, v6, Landroidx/core/app/e;->a:Landroid/os/Bundle;

    .line 57
    invoke-direct {v3, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a

    .line 58
    :cond_b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 59
    :goto_a
    invoke-virtual {v6}, Landroidx/core/app/e;->a()Z

    move-result v12

    const-string v14, "android.support.allowGeneratedReplies"

    .line 60
    invoke-virtual {v3, v14, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v11, :cond_c

    .line 62
    invoke-virtual {v6}, Landroidx/core/app/e;->a()Z

    move-result v11

    invoke-virtual {v13, v11}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 63
    :cond_c
    invoke-virtual {v6}, Landroidx/core/app/e;->e()I

    move-result v11

    const-string v14, "android.support.action.semanticAction"

    .line 64
    invoke-virtual {v3, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v11, 0x1c

    if-lt v12, v11, :cond_d

    .line 65
    invoke-virtual {v6}, Landroidx/core/app/e;->e()I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_d
    if-lt v12, v10, :cond_e

    .line 66
    invoke-virtual {v6}, Landroidx/core/app/e;->f()Z

    move-result v10

    invoke-virtual {v13, v10}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 67
    :cond_e
    iget-boolean v6, v6, Landroidx/core/app/e;->f:Z

    const-string v10, "android.support.action.showsUserInterface"

    .line 68
    invoke-virtual {v3, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {v13, v3}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 70
    iget-object v3, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 71
    :cond_f
    iget-object v3, v0, Landroidx/core/app/i;->c:Ljava/util/List;

    iget-object v10, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    .line 72
    invoke-static {v10, v6}, Landroidx/core/app/j;->d(Landroid/app/Notification$Builder;Landroidx/core/app/e;)Landroid/os/Bundle;

    move-result-object v6

    .line 73
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    const/16 v3, 0x1a

    goto/16 :goto_5

    .line 74
    :cond_10
    iget-object v2, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    if-eqz v2, :cond_11

    .line 75
    iget-object v3, v0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 76
    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v12, :cond_12

    .line 77
    iget-boolean v3, v1, Landroidx/core/app/g;->j:Z

    if-eqz v3, :cond_12

    .line 78
    iget-object v3, v0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    :cond_12
    iget-object v3, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Landroidx/core/app/g;->h:Z

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    if-ge v2, v5, :cond_13

    .line 80
    iget-object v3, v1, Landroidx/core/app/g;->o:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 81
    iget-object v3, v0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    iget-object v6, v1, Landroidx/core/app/g;->o:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v9, "android.people"

    .line 83
    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_13
    if-lt v2, v12, :cond_14

    .line 84
    iget-object v3, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Landroidx/core/app/g;->j:Z

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_14
    if-lt v2, v5, :cond_1a

    .line 88
    iget-object v2, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 92
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 93
    iget-object v2, v1, Landroidx/core/app/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    iget-object v4, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_c

    .line 95
    :cond_15
    iget-object v2, v1, Landroidx/core/app/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 96
    iget-object v2, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    if-nez v2, :cond_16

    .line 97
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    .line 98
    :cond_16
    iget-object v2, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    const-string v3, "android.car.EXTENSIONS"

    .line 99
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_17

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    :cond_17
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    .line 102
    :goto_d
    iget-object v6, v1, Landroidx/core/app/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v1, Landroidx/core/app/g;->c:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/app/e;

    .line 105
    invoke-static {v9}, Landroidx/core/app/j;->b(Landroidx/core/app/e;)Landroid/os/Bundle;

    move-result-object v9

    .line 106
    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_18
    const-string v5, "invisible_actions"

    .line 107
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    iget-object v4, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    if-nez v4, :cond_19

    .line 109
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    .line 110
    :cond_19
    iget-object v4, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    .line 111
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    iget-object v4, v0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    :cond_1a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v11, :cond_1b

    .line 114
    iget-object v3, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, v1, Landroidx/core/app/g;->k:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 115
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1b
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1c

    .line 116
    iget-object v3, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 117
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 118
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 120
    iget-object v3, v1, Landroidx/core/app/g;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 121
    iget-object v3, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 122
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v8, v8, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_1c
    if-lt v2, v10, :cond_1d

    .line 125
    iget-object v2, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, v1, Landroidx/core/app/g;->m:Z

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 126
    iget-object v1, v0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_1d
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/app/g;

    iget-object v0, v0, Landroidx/core/app/g;->i:Landroidx/core/app/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/core/app/h;->a(Landroidx/core/app/d;)V

    .line 3
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/16 v3, 0x15

    if-lt v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-lt v1, v3, :cond_3

    .line 6
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 7
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x14

    if-lt v1, v2, :cond_4

    .line 8
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 9
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_4
    iget-object v2, p0, Landroidx/core/app/i;->c:Ljava/util/List;

    .line 11
    invoke-static {v2}, Landroidx/core/app/j;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 12
    iget-object v4, p0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    const-string v5, "android.support.actionExtras"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 13
    :cond_5
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroidx/core/app/i;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 14
    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 15
    :goto_0
    iget-object v4, p0, Landroidx/core/app/i;->b:Landroidx/core/app/g;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v1, v3, :cond_6

    if-eqz v0, :cond_6

    .line 16
    iget-object v1, p0, Landroidx/core/app/i;->b:Landroidx/core/app/g;

    iget-object v1, v1, Landroidx/core/app/g;->i:Landroidx/core/app/h;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v0, :cond_7

    .line 18
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_7
    return-object v2
.end method

.method public b()Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method
