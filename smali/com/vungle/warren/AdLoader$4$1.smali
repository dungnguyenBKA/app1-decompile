.class Lcom/vungle/warren/AdLoader$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$4;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$4;

.field final synthetic val$response:Lcom/vungle/warren/network/Response;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$4;Lcom/vungle/warren/network/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$4$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "data_science_cache"

    const-string v1, "ad_markup"

    .line 1
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "AdLoader#fetchAdMetadata; loadAd sequence"

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Placement metadata not found for requested advertisement."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement metadata not found for requested advertisement. id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v6, p0, Lcom/vungle/warren/AdLoader$4$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v6}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$1900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v6, v0, v9

    if-lez v6, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v6, v4, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v6, v2, v4, v0, v1}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response was not successful, retrying; id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to retrieve advertisement information"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v4, [Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->val$response:Lcom/vungle/warren/network/Response;

    .line 13
    invoke-virtual {v1}, Lcom/vungle/warren/network/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Response was not successful, not retrying;id = %1$s; responseCode = %2$s"

    .line 14
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v2}, Lcom/vungle/warren/network/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lcom/vungle/warren/AdLoader;->access$2000(Lcom/vungle/warren/AdLoader;I)Lcom/vungle/warren/error/VungleException;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    iget-object v6, p0, Lcom/vungle/warren/AdLoader$4$1;->val$response:Lcom/vungle/warren/network/Response;

    invoke-virtual {v6}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls60;

    .line 18
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ads Response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v9, 0x3

    if-eqz v6, :cond_14

    const-string v10, "ads"

    .line 19
    invoke-virtual {v6, v10}, Ls60;->q(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v6, v10}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v11

    .line 20
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    instance-of v11, v11, Lr60;

    if-nez v11, :cond_14

    .line 22
    invoke-virtual {v6, v10}, Ls60;->o(Ljava/lang/String;)Lm60;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 23
    invoke-virtual {v6}, Lm60;->size()I

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_7

    .line 24
    :cond_3
    invoke-virtual {v6, v7}, Lm60;->k(I)Lp60;

    move-result-object v6

    invoke-virtual {v6}, Lp60;->e()Ls60;

    move-result-object v6

    const/16 v10, 0x1a

    .line 25
    :try_start_0
    new-instance v11, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v11, v6}, Lcom/vungle/warren/model/Advertisement;-><init>(Ls60;)V

    .line 26
    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v12}, Lcom/vungle/warren/AdLoader;->access$2100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vungle/warren/VisionController;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 27
    invoke-virtual {v6, v1}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v12

    .line 28
    invoke-static {v12, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 29
    iget-object v13, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v13}, Lcom/vungle/warren/AdLoader;->access$2100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v13

    invoke-virtual {v12, v0}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v0

    invoke-virtual {v0}, Lp60;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/vungle/warren/VisionController;->setDataScienceCache(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$2100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vungle/warren/VisionController;->setDataScienceCache(Ljava/lang/String;)V

    .line 31
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v12, v13}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v8, :cond_6

    if-ne v0, v4, :cond_7

    .line 33
    :cond_6
    invoke-static {}, Lcom/vungle/warren/AdLoader;->access$1200()Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v11, Lcom/vungle/warren/error/VungleException;

    const/16 v12, 0x19

    invoke-direct {v11, v12}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v11, v12, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_7
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$4;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    if-eqz v3, :cond_8

    .line 36
    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v0, v12}, Lcom/vungle/warren/HeaderBiddingCallback;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 39
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3, v11}, Lcom/vungle/warren/AdLoader;->getDestinationDir(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_9

    goto/16 :goto_4

    .line 41
    :cond_9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_2

    :cond_a
    const-string v0, "Response was successful, but one of downloadable urls is neither http nor https : url = %1$s; op.id = %2$s, ad.getId() = %3$s"

    new-array v3, v9, [Ljava/lang/Object;

    .line 43
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v3, v7

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v12, v3, v8

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v4

    .line 44
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    const/16 v12, 0xb

    invoke-direct {v3, v12}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v3, v12, v11}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_b
    :goto_2
    iget-object v13, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    .line 48
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 49
    invoke-virtual {v13, v11, v3, v14, v12}, Lcom/vungle/warren/AdLoader;->saveAsset(Lcom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_c
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    if-ne v0, v8, :cond_f

    .line 51
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-ne v0, v8, :cond_d

    const-string v0, "banner"

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const-string v0, "Response was successful, but placement is banner while %1$s; op.id = %2$s, ad.getId() = %3$s"

    new-array v3, v9, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v12

    if-eq v12, v8, :cond_e

    const-string v12, "ad type is not MRAID"

    goto :goto_3

    :cond_e
    const-string v12, "advertisement template type is not banner"

    :goto_3
    aput-object v12, v3, v7

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v12, v3, v8

    .line 53
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v4

    .line 54
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v3, v12, v11}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_f
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v3}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 58
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-wide v12, v0, Lcom/vungle/warren/AdLoader$4;->val$requestStartTime:J

    invoke-virtual {v11, v12, v13}, Lcom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 60
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v11, v3, v7}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v12, v0, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v3, v12, v11, v0}, Lcom/vungle/warren/AdLoader;->access$1600(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_8

    :cond_10
    :goto_4
    const-string v0, "Response was successful, but adv directory is %1$s; op.id = %2$s, ad.getId() = %3$s"

    new-array v12, v9, [Ljava/lang/Object;

    if-nez v3, :cond_11

    const-string v3, "null"

    goto :goto_5

    :cond_11
    const-string v3, "not a dir"

    :goto_5
    aput-object v3, v12, v7

    .line 62
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v3, v12, v8

    .line 63
    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v4

    .line 64
    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v10}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v3, v12, v11}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v2, v1, v7

    .line 67
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v2, v1, v8

    aput-object v0, v1, v4

    const-string v0, "BadAd - DBException; can\'t proceed; placement = %1$s; op.id = %2$s; exception = %3$s"

    .line 68
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v10}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_1
    nop

    .line 71
    invoke-virtual {v6, v1}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v0

    const-string v1, "sleep"

    .line 72
    invoke-virtual {v0, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 73
    invoke-virtual {v0, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v0

    invoke-virtual {v0}, Lp60;->d()I

    move-result v0

    int-to-long v0, v0

    .line 74
    invoke-virtual {v2, v0, v1}, Lcom/vungle/warren/model/Placement;->snooze(J)V

    :try_start_1
    const-string v3, "badAd - snoozed placement %1$s; op.id = %2$s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v7

    .line 75
    iget-object v9, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v9, v9, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v9, v9, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v9, v6, v8

    .line 76
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v5, v3}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 80
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v6, v3, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    const-wide/16 v9, 0x3e8

    mul-long v0, v0, v9

    invoke-virtual {v6, v2, v3, v0, v1}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_6

    :catch_2
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v7

    .line 81
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, "badAd - can\'t save snoozed placement %1$s; op.id = %2$s"

    .line 82
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v10}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    :goto_6
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v7

    .line 85
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string v1, "badAd; can\'t proceed %1$s; op.id = %2$s"

    .line 86
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    :goto_7
    const-string v0, "Response was successful, but no ads; id = "

    .line 89
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v2, v0, v7

    .line 91
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, v0, v8

    aput-object v6, v0, v4

    const-string v1, "Response has no ads; placement = %1$s;op.id = %2$s; response = %3$s"

    .line 92
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v5, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4$1;->this$1:Lcom/vungle/warren/AdLoader$4;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void
.end method
