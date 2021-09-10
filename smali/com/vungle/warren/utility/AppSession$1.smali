.class Lcom/vungle/warren/utility/AppSession$1;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/utility/AppSession;

.field private timestamp:J


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/AppSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/AppSession$1;->this$0:Lcom/vungle/warren/utility/AppSession;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/utility/AppSession$1;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vungle/warren/utility/AppSession$1;->timestamp:J

    sub-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/utility/AppSession$1;->this$0:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lcom/vungle/warren/utility/AppSession;->access$000(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/warren/utility/AppSession$1;->this$0:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lcom/vungle/warren/utility/AppSession;->access$000(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/SessionData;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lcom/vungle/warren/utility/AppSession$1;->this$0:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lcom/vungle/warren/utility/AppSession;->access$000(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/SessionData;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/utility/AppSession$1;->this$0:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v0}, Lcom/vungle/warren/utility/AppSession;->access$100(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/utility/AppSession$SessionCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/utility/AppSession$1;->this$0:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v0}, Lcom/vungle/warren/utility/AppSession;->access$100(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/utility/AppSession$SessionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/utility/AppSession$SessionCallback;->onSessionTimeout()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/utility/AppSession$1;->timestamp:J

    return-void
.end method
