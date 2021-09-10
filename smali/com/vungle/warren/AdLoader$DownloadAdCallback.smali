.class Lcom/vungle/warren/AdLoader$DownloadAdCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/AdLoader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;


# direct methods
.method private constructor <init>(Lcom/vungle/warren/AdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;)V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    const-class v1, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    const-string v1, "loaded placement is null: placementId = %1$s; advertisementId = %2$s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    .line 7
    invoke-static {v5}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v5

    const-class v6, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v5, p2, v6}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Advertisement;

    :goto_0
    if-nez v5, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    const-string v1, "advertisement is null: placementId = %1$s; advertisementId = %2$s"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/vungle/warren/model/Advertisement;->setFinishedDownloadingTime(J)V

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v6}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v6

    invoke-virtual {v6, v5, p1, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-virtual {p0, p1, v0, v5}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object p1, v6, v4

    aput-object v5, v6, v2

    const-string v0, "Can\'t save/apply state READY: exception = %1$s;placementId = %2$s; advertisement = %3$s"

    .line 14
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$300(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1, p2}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1, p2, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    .line 5
    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2, p3, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/model/Advertisement;

    :goto_0
    const/16 v2, 0x1a

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_3

    if-eqz p3, :cond_1

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {v1, p3, p2, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 8
    iget-object p3, v0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/LoadAdCallback;

    .line 9
    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1, p2, v4}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_7

    const/16 v6, 0xe

    if-eq v1, v6, :cond_7

    const/16 v6, 0x14

    if-eq v1, v6, :cond_6

    const/16 v6, 0x19

    if-eq v1, v6, :cond_7

    const/16 v6, 0x16

    if-eq v1, v6, :cond_6

    const/16 v6, 0x17

    if-eq v1, v6, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_5
    :goto_3
    const/4 v1, 0x0

    :goto_4
    const/4 v6, 0x0

    :goto_5
    const/4 v7, 0x4

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    goto :goto_4

    :goto_6
    if-eqz v0, :cond_8

    .line 12
    iget-boolean v8, v0, Lcom/vungle/warren/AdLoader$Operation;->logError:Z

    if-eqz v8, :cond_9

    .line 13
    :cond_8
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load Ad/Assets for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Cause : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_9
    iget-object v8, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v8, p2, v4}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    if-eqz v0, :cond_10

    .line 15
    :try_start_1
    iget v8, v0, Lcom/vungle/warren/AdLoader$Operation;->policy:I

    const-wide/16 v9, 0x2

    if-nez v8, :cond_b

    .line 16
    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    iget v4, v0, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    if-ge v1, v4, :cond_e

    if-eqz v6, :cond_e

    if-eqz p3, :cond_a

    .line 17
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v7}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 18
    :cond_a
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    iget-wide v3, v0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget-wide v3, v0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    mul-long v3, v3, v9

    invoke-virtual {p3, v3, v4}, Lcom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    add-int/2addr v1, v5

    invoke-virtual {p3, v1}, Lcom/vungle/warren/AdLoader$Operation;->retry(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void

    :cond_b
    if-ne v8, v5, :cond_e

    if-nez v1, :cond_e

    .line 19
    iget p1, v0, Lcom/vungle/warren/AdLoader$Operation;->retry:I

    .line 20
    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->retryLimit:I

    if-ge p1, v1, :cond_c

    if-eqz v6, :cond_c

    add-int/lit8 v4, p1, 0x1

    move v3, v7

    :cond_c
    if-eqz p3, :cond_d

    .line 21
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 22
    :cond_d
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    iget-wide v5, v0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    invoke-virtual {v0, v5, v6}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget-wide v5, v0, Lcom/vungle/warren/AdLoader$Operation;->retryDelay:J

    mul-long v5, v5, v9

    invoke-virtual {p3, v5, v6}, Lcom/vungle/warren/AdLoader$Operation;->retryDelay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p3, v4}, Lcom/vungle/warren/AdLoader$Operation;->retry(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void

    :cond_e
    if-eqz p3, :cond_f

    .line 23
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {v1, p3, p2, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 24
    :catch_1
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 25
    :cond_f
    :goto_7
    iget-object p3, v0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/LoadAdCallback;

    .line 26
    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_8

    :cond_10
    return-void
.end method

.method public onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1300(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/HeaderBiddingCallback;

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found already cached valid adv, calling onAdLoad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1300(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/InitCallback;

    .line 7
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lcom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$300(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v0, :cond_2

    .line 10
    iget-object v2, v0, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {p2, v2}, Lcom/vungle/warren/model/Placement;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object p2, v3, v1

    const/4 p2, 0x2

    aput-object p3, v3, p2

    const-string p2, "Can\'t save placement: exception = %1$s;placement = %2$s; advertisement = %3$s"

    .line 12
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "AdLoader#DownloadAdCallback#onReady; loadAd sequence"

    .line 13
    invoke-static {v1, p2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {p2, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_0
    iget-object p2, v0, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/LoadAdCallback;

    .line 16
    invoke-interface {p3, p1}, Lcom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
