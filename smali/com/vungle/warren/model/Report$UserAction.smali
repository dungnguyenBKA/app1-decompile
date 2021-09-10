.class public Lcom/vungle/warren/model/Report$UserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserAction"
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lc70;
        value = "action"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lc70;
        value = "timestamp"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lc70;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/vungle/warren/model/Report$UserAction;

    .line 3
    iget-object v2, p1, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p1, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p1, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lic;->w(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-wide v1, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toJson()Ls60;
    .locals 3

    .line 1
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->action:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/model/Report$UserAction;->value:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-wide v1, p0, Lcom/vungle/warren/model/Report$UserAction;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp_millis"

    invoke-virtual {v0, v2, v1}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method
