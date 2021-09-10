.class Lcom/vungle/warren/VisionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ADVERTISER_DETAILS:Ljava/lang/String; = "advertiser_details"

.field static final AGGREGATE:Ljava/lang/String; = "aggregate"

.field static final CAMPAIGN_DETAILS:Ljava/lang/String; = "campaign_details"

.field static final CREATIVE_DETAILS:Ljava/lang/String; = "creative_details"

.field static final DATA_SCIENCE_CACHE:Ljava/lang/String; = "data_science_cache"

.field static final FILTER_ID:Ljava/lang/String; = "_id"

.field static final LAST_TIME_VIEWED:Ljava/lang/String; = "last_time_viewed"

.field static final LAST_VIEWED_ADVERTISER_ID:Ljava/lang/String; = "last_viewed_advertiser_id"

.field static final LAST_VIEWED_CAMPAIGN_ID:Ljava/lang/String; = "last_viewed_campaign_id"

.field static final LAST_VIEWED_CREATIVE_ID:Ljava/lang/String; = "last_viewed_creative_id"

.field static final TOTAL_VIEW_COUNT:Ljava/lang/String; = "total_view_count"

.field static final VIEW_COUNT:Ljava/lang/String; = "view_count"

.field static final VISION:Ljava/lang/String; = "vision"

.field static final VISION_COOKIE:Ljava/lang/String; = "visionCookie"

.field static final WINDOW:Ljava/lang/String; = "window"


# instance fields
.field private config:Lcom/vungle/warren/vision/VisionConfig;

.field private final networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

.field private final repository:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/NetworkProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/vungle/warren/vision/VisionConfig;

    invoke-direct {v0}, Lcom/vungle/warren/vision/VisionConfig;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/VisionController;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    return-void
.end method

.method private getDataScienceCache()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "visionCookie"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "data_science_cache"

    .line 2
    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method clearData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    return-void
.end method

.method getFilterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "advertiser_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "creative_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "campaign_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "advertiser"

    return-object p1

    :pswitch_1
    const-string p1, "creative"

    return-object p1

    :pswitch_2
    const-string p1, "campaign"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4f3875ed -> :sswitch_2
        0x4bd2e9b2 -> :sswitch_1
        0x6e061b2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPayload()Ls60;
    .locals 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ls60;

    invoke-direct {v1}, Ls60;-><init>()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/vungle/warren/VisionController;->getDataScienceCache()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "data_science_cache"

    .line 3
    invoke-virtual {v1, v3, v2}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz v2, :cond_5

    .line 5
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v2}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    .line 6
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v3, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->wifi:I

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_1

    .line 8
    :cond_3
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v3, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->mobile:I

    if-lez v3, :cond_4

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_4
    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 10
    new-instance v5, Lm60;

    invoke-direct {v5}, Lm60;-><init>()V

    const-string v6, "aggregate"

    .line 11
    invoke-virtual {v1, v6, v5}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 12
    iget-object v6, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v6, v6, Lcom/vungle/warren/vision/VisionConfig;->aggregationTimeWindows:[I

    if-eqz v6, :cond_a

    .line 13
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_a

    aget v9, v6, v8

    .line 14
    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 15
    iget-object v12, v0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v12, v10, v11}, Lcom/vungle/warren/persistence/Repository;->getVisionAggregationInfo(J)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vungle/warren/vision/VisionAggregationInfo;

    .line 16
    new-instance v13, Ls60;

    invoke-direct {v13}, Ls60;-><init>()V

    .line 17
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v14, "window"

    invoke-virtual {v13, v14, v9}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz v12, :cond_6

    .line 18
    iget-object v9, v12, Lcom/vungle/warren/vision/VisionAggregationInfo;->lastCreative:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    const-string v14, "last_viewed_creative_id"

    invoke-virtual {v13, v14, v9}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_7

    .line 19
    iget v9, v12, Lcom/vungle/warren/vision/VisionAggregationInfo;->totalCount:I

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "total_view_count"

    invoke-virtual {v13, v12, v9}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    iget-object v9, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v9, v9, Lcom/vungle/warren/vision/VisionConfig;->aggregationFilters:[Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 21
    array-length v12, v9

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v12, :cond_9

    aget-object v15, v9, v14

    move-wide/from16 v16, v3

    .line 22
    new-instance v3, Lm60;

    invoke-direct {v3}, Lm60;-><init>()V

    .line 23
    invoke-virtual {v13, v15, v3}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 24
    invoke-virtual {v0, v15}, Lcom/vungle/warren/VisionController;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v15, v0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v15, v10, v11, v2, v4}, Lcom/vungle/warren/persistence/Repository;->getVisionAggregationData(JILjava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_8

    .line 26
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/vungle/warren/vision/VisionAggregationData;

    move/from16 v18, v2

    .line 27
    new-instance v2, Ls60;

    invoke-direct {v2}, Ls60;-><init>()V

    move-object/from16 v19, v6

    const-string v6, "_id"

    .line 28
    invoke-static {v4, v6}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v4

    iget-object v4, v0, Lcom/vungle/warren/vision/VisionAggregationData;->id:Ljava/lang/String;

    invoke-virtual {v2, v6, v4}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget v4, v0, Lcom/vungle/warren/vision/VisionAggregationData;->viewCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "view_count"

    invoke-virtual {v2, v6, v4}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 30
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v21, v7

    iget-wide v6, v0, Lcom/vungle/warren/vision/VisionAggregationData;->lastTimeStamp:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "last_time_viewed"

    invoke-virtual {v2, v4, v0}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 31
    invoke-virtual {v3, v2}, Lm60;->i(Lp60;)V

    move-object/from16 v0, p0

    move/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move/from16 v7, v21

    goto :goto_6

    :cond_8
    move/from16 v18, v2

    move-object/from16 v19, v6

    move/from16 v21, v7

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, v16

    move/from16 v2, v18

    move-object/from16 v6, v19

    move/from16 v7, v21

    goto/16 :goto_5

    :cond_9
    move/from16 v18, v2

    move-wide/from16 v16, v3

    move-object/from16 v19, v6

    move/from16 v21, v7

    .line 32
    invoke-virtual {v5, v13}, Lm60;->i(Lp60;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, v16

    move/from16 v2, v18

    move-object/from16 v6, v19

    move/from16 v7, v21

    goto/16 :goto_2

    :cond_a
    return-object v1
.end method

.method getVisionConfig()Lcom/vungle/warren/vision/VisionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    return-object v0
.end method

.method isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-boolean v0, v0, Lcom/vungle/warren/vision/VisionConfig;->enabled:Z

    return v0
.end method

.method reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance v7, Lcom/vungle/warren/model/VisionData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/model/VisionData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object p2, p2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    return-void
.end method

.method setConfig(Lcom/vungle/warren/vision/VisionConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    .line 2
    iget-boolean v0, p1, Lcom/vungle/warren/vision/VisionConfig;->enabled:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p1, p1, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    :cond_1
    return-void
.end method

.method setDataScienceCache(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "visionCookie"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "data_science_cache"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method
