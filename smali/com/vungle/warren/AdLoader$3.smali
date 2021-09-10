.class Lcom/vungle/warren/AdLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->loadAd(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$adRequestStartTimeStamp:J

.field final synthetic val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$op:Lcom/vungle/warren/AdLoader$Operation;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdLoader$Operation;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iput-wide p4, p0, Lcom/vungle/warren/AdLoader$3;->val$adRequestStartTimeStamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$800(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    const-string v1, "AdLoader#loadAd#execute; loadAd sequence"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Vungle is not initialized"

    .line 2
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_1

    const-string v0, "placement not found for id"

    .line 5
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xd

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v3, v0, v4}, Lcom/vungle/warren/AdLoader;->access$1000(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "size is invalid, size = "

    .line 10
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Advertisement;

    .line 13
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v4

    const/16 v5, 0x1a

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v4

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq v4, v7, :cond_4

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "cannot delete advertisement, id = "

    .line 15
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 17
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v4, v3}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vungle/warren/AdLoader;->access$600(Lcom/vungle/warren/AdLoader;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Ljava/lang/String;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    goto/16 :goto_6

    .line 20
    :cond_5
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v4, v3}, Lcom/vungle/warren/AdLoader;->access$1100(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z

    move-result v4

    const-string v7, "cannot save/apply ERROR state, id = "

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v4, :cond_a

    .line 21
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1300(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleSettings;

    const-string v4, "AdLoader#loadAd#execute; loadAd sequence; canReDownload branch"

    if-eqz v0, :cond_8

    .line 23
    iget-object v10, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v10}, Lcom/vungle/warren/AdLoader;->access$1400(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-gez v0, :cond_6

    goto :goto_2

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v9}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "cannot save/apply NEW state, id = "

    .line 27
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_7
    :goto_1
    iget-wide v0, p0, Lcom/vungle/warren/AdLoader$3;->val$adRequestStartTimeStamp:J

    invoke-virtual {v3, v0, v1}, Lcom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 31
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0, v1, v3, v2}, Lcom/vungle/warren/AdLoader;->access$1600(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_6

    .line 32
    :cond_8
    :goto_2
    invoke-virtual {v3}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eq v0, v8, :cond_9

    .line 33
    :try_start_2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v6, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v6, v6, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v6, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_2
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 34
    :catch_2
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_3
    const-string v0, "failed to download assets, no space; id = "

    .line 36
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_a
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-lez v1, :cond_b

    .line 39
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "Placement with id %s is snoozed "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdLoader#loadAd#execute; loadAd sequence; snoozed branch"

    .line 41
    invoke-static {v2, v1}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Placement "

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is  snoozed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 44
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto/16 :goto_6

    .line 46
    :cond_b
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "didn\'t find cached adv for "

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " downloading "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AdLoader#loadAd#execute; loadAd sequence; last else branch"

    if-eqz v3, :cond_c

    .line 47
    :try_start_3
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v4

    iget-object v10, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v4, v3, v10, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 48
    :catch_3
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_c
    :goto_4
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$1300(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v3

    iget-object v3, v3, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/VungleSettings;

    if-eqz v3, :cond_e

    .line 51
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->access$1400(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v7

    cmp-long v3, v4, v7

    if-gez v3, :cond_e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "no space to load, isAutoCached = %1$s, id = %2$s"

    .line 53
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v1, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x12

    goto :goto_5

    :cond_d
    const/16 v0, 0x11

    :goto_5
    invoke-direct {v3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_e
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/vungle/warren/AdLoader;->access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V

    .line 58
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$3;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$3;->val$listener:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v1, v2, v0, v3}, Lcom/vungle/warren/AdLoader;->access$1700(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    :cond_f
    :goto_6
    return-void
.end method
