.class Lcom/vungle/warren/AdLoader$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$5;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/warren/AdLoader$5;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$5;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadedFile:Ljava/io/File;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Downloaded file not found!"

    const/4 v3, -0x1

    const-string v4, "AdLoader#getAssetDownloadListener; loadAd sequence"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    .line 2
    iget-object v6, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadedFile:Ljava/io/File;

    .line 3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "Downloaded file %1$s doesn\'t exist"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/AdLoader$5;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v7, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$5;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v7}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v7

    const-class v8, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v7, v0, v8}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/model/AdAsset;

    :goto_0
    const/4 v8, 0x2

    if-nez v7, :cond_3

    new-array v1, v8, [Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v0, "id is null"

    goto :goto_1

    :cond_2
    const-string v0, "repository returned null"

    :goto_1
    aput-object v0, v1, v5

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    aput-object v0, v1, v6

    const-string v0, "adAsset is null because %1$s, downloadRequest = %2$s"

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v6}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$5;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadedFile:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/vungle/warren/AdLoader;->access$2400(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    :goto_2
    iput v0, v7, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 13
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 14
    iput v1, v7, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->this$0:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->downloadCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$5;->this$0:Lcom/vungle/warren/AdLoader;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$5;->val$op:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$5;->val$callback:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v4, v0, Lcom/vungle/warren/AdLoader$5;->val$advertisement:Lcom/vungle/warren/model/Advertisement;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->errors:Ljava/util/List;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/vungle/warren/AdLoader;->access$2300(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v5

    aput-object v0, v1, v6

    const-string v0, "Can\'t save adAsset %1$s; exception = %2$s"

    .line 18
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5$2;->this$1:Lcom/vungle/warren/AdLoader$5;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$5$2;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$5;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
