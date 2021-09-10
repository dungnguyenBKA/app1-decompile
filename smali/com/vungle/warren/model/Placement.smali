.class public Lcom/vungle/warren/model/Placement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Placement$PlacementAdType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Placement"

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_DEPRECTAED_TEMPLATE:I = 0x2

.field public static final TYPE_VUNGLE_BANNER:I = 0x1


# instance fields
.field adRefreshDuration:I

.field protected adSize:Lcom/vungle/warren/AdConfig$AdSize;

.field autoCachePriority:I

.field autoCached:Z

.field headerBidding:Z

.field identifier:Ljava/lang/String;

.field incentivized:Z

.field isValid:Z

.field placementAdType:I
    .annotation build Lcom/vungle/warren/model/Placement$PlacementAdType;
    .end annotation
.end field

.field wakeupTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    .line 5
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    .line 6
    iput-boolean v0, p0, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    return-void
.end method

.method public constructor <init>(Ls60;)V
    .locals 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    const-string v1, "reference_id"

    .line 11
    invoke-virtual {p1, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 12
    invoke-virtual {p1, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    const-string v1, "is_auto_cached"

    .line 13
    invoke-virtual {p1, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    const-string v1, "cache_priority"

    .line 14
    invoke-virtual {p1, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v2

    const v4, 0x7fffffff

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    if-eqz v2, :cond_1

    .line 15
    :try_start_0
    invoke-virtual {p1, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->d()I

    move-result v1

    iput v1, p0, Lcom/vungle/warren/model/Placement;->autoCachePriority:I

    if-ge v1, v3, :cond_2

    .line 16
    iput v4, p0, Lcom/vungle/warren/model/Placement;->autoCachePriority:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17
    :catch_0
    iput v4, p0, Lcom/vungle/warren/model/Placement;->autoCachePriority:I

    goto :goto_1

    .line 18
    :cond_1
    iput v4, p0, Lcom/vungle/warren/model/Placement;->autoCachePriority:I

    :cond_2
    :goto_1
    const-string v1, "is_incentivized"

    .line 19
    invoke-virtual {p1, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    const-string v1, "ad_refresh_duration"

    .line 20
    invoke-virtual {p1, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->d()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput v1, p0, Lcom/vungle/warren/model/Placement;->adRefreshDuration:I

    const-string v1, "header_bidding"

    .line 21
    invoke-virtual {p1, v1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    invoke-virtual {v1}, Lp60;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    const-string v1, "supported_template_types"

    .line 22
    invoke-static {p1, v1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 23
    invoke-virtual {p1, v1}, Ls60;->o(Ljava/lang/String;)Lm60;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lm60;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp60;

    .line 25
    invoke-virtual {p1}, Lp60;->h()Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    iput v3, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    goto :goto_6

    .line 28
    :cond_6
    invoke-virtual {p1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flexfeed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 29
    invoke-virtual {p1}, Lp60;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "flexview"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    .line 30
    :cond_7
    iput v0, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    goto :goto_6

    :cond_8
    :goto_5
    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    :cond_9
    :goto_6
    return-void

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing placement reference ID, cannot use placement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/vungle/warren/model/Placement;

    .line 3
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->autoCached:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->incentivized:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-wide v2, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    iget-wide v4, p1, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 7
    :cond_5
    iget-boolean v2, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    iget-boolean v3, p1, Lcom/vungle/warren/model/Placement;->isValid:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/vungle/warren/model/Placement;->adRefreshDuration:I

    iget v3, p1, Lcom/vungle/warren/model/Placement;->adRefreshDuration:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    invoke-virtual {p0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    if-eq v2, v3, :cond_8

    return v1

    .line 10
    :cond_8
    iget-object v2, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    :goto_0
    return v1

    :cond_a
    return v0

    :cond_b
    :goto_1
    return v1
.end method

.method public getAdRefreshDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->adRefreshDuration:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    :cond_0
    return-object v0
.end method

.method public getAutoCachePriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->autoCachePriority:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementAdType()I
    .locals 1
    .annotation build Lcom/vungle/warren/model/Placement$PlacementAdType;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/model/Placement;->placementAdType:I

    return v0
.end method

.method public getWakeupTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-wide v1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/vungle/warren/model/Placement;->adRefreshDuration:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    invoke-virtual {p0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isAutoCached()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Placement;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    return v0
.end method

.method public isHeaderBidding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    return v0
.end method

.method public isIncentivized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    return v0
.end method

.method public setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/Placement;->adSize:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/model/Placement;->isValid:Z

    return-void
.end method

.method public setWakeupTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    return-void
.end method

.method public snooze(J)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Placement{identifier=\'"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/model/Placement;->identifier:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", autoCached="

    invoke-static {v0, v1, v2, v3}, Lic;->v(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->autoCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incentivized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->incentivized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headerBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/model/Placement;->headerBidding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wakeupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Placement;->wakeupTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", refreshTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Placement;->adRefreshDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoCachePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Placement;->autoCachePriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
