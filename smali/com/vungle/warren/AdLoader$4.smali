.class Lcom/vungle/warren/AdLoader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->fetchAdMetadata(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Callback<",
        "Ls60;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/AdLoader;

.field final synthetic val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

.field final synthetic val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic val$op:Lcom/vungle/warren/AdLoader$Operation;

.field final synthetic val$requestStartTime:J


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p4, p0, Lcom/vungle/warren/AdLoader$4;->val$bidTokenCallBack:Lcom/vungle/warren/HeaderBiddingCallback;

    iput-wide p5, p0, Lcom/vungle/warren/AdLoader$4;->val$requestStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string v0, "failed to request ad, id = %1$s, throwable = %2$s"

    .line 2
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdLoader#fetchAdMetadata; loadAd sequence"

    .line 3
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$4;->val$downloadCallback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0, p2}, Lcom/vungle/warren/AdLoader;->access$1800(Lcom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;",
            "Lcom/vungle/warren/network/Response<",
            "Ls60;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$4;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->access$2200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/AdLoader$4$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/warren/AdLoader$4$1;-><init>(Lcom/vungle/warren/AdLoader$4;Lcom/vungle/warren/network/Response;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
