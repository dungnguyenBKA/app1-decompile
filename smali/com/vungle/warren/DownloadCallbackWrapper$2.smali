.class Lcom/vungle/warren/DownloadCallbackWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic val$advertisementId:Ljava/lang/String;

.field final synthetic val$exception:Lcom/vungle/warren/error/VungleException;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->this$0:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->val$exception:Lcom/vungle/warren/error/VungleException;

    iput-object p3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->val$placementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->val$advertisementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->this$0:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/DownloadCallbackWrapper;->access$000(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->val$exception:Lcom/vungle/warren/error/VungleException;

    iget-object v2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->val$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->val$advertisementId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
