.class Lcom/vungle/warren/downloader/AssetDownloader$1;
.super Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;ILcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$000(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot launch request due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssetDownloader#download; loadAd sequence"

    invoke-static {v2, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on launching request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v3, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->val$downloadListener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v0, v6}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-static {v1, v2, v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    :goto_0
    return-void
.end method
