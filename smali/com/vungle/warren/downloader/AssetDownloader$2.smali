.class Lcom/vungle/warren/downloader/AssetDownloader$2;
.super Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->load(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    .line 2
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v3}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 4
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v4, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 5
    iget-object v5, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 7
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->startTracking(Ljava/io/File;)V

    :cond_0
    move-object v14, v2

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_0
    if-nez v0, :cond_58

    .line 11
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    const/4 v9, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x4

    const/4 v13, 0x1

    .line 12
    :try_start_0
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v13}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_23

    if-nez v0, :cond_7

    .line 13
    :try_start_1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Abort download, wrong state "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 14
    invoke-static {v13, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 17
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    if-eq v0, v9, :cond_4

    if-eq v0, v8, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_1

    if-nez v15, :cond_4

    .line 18
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v14, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 22
    :cond_4
    :goto_1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 23
    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 24
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 25
    :try_start_2
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 26
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 27
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 28
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 31
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 32
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_2

    .line 33
    :cond_5
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 34
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    const/16 v18, 0x0

    goto/16 :goto_2b

    .line 35
    :cond_7
    :try_start_4
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 36
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 37
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_22

    if-eqz v0, :cond_8

    :try_start_5
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 38
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 39
    :cond_8
    :try_start_6
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_22

    const-wide/16 v19, 0x0

    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :cond_9
    move-wide/from16 v21, v19

    .line 40
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    .line 41
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 42
    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 43
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    .line 44
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v10, v12, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_22

    if-eqz v2, :cond_10

    .line 45
    :try_start_9
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 46
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 47
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 48
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    if-eq v0, v9, :cond_d

    if-eq v0, v8, :cond_c

    if-eq v0, v6, :cond_b

    if-eq v0, v7, :cond_a

    if-nez v15, :cond_d

    .line 49
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_5

    .line 50
    :cond_a
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v14, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_5

    .line 51
    :cond_b
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_5

    .line 52
    :cond_c
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 53
    :cond_d
    :goto_5
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 54
    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 55
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 56
    :try_start_a
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 57
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/4 v2, 0x0

    .line 58
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 60
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 62
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 63
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_6

    .line 64
    :cond_e
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_f
    :goto_6
    return-void

    :catchall_2
    move-exception v0

    .line 65
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 66
    :cond_10
    :try_start_c
    new-instance v2, Ljh0$a;

    invoke-direct {v2}, Ljh0$a;-><init>()V

    invoke-virtual {v2, v4}, Ljh0$a;->g(Ljava/lang/String;)Ljh0$a;

    .line 67
    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_22

    const/4 v13, 0x4

    move-object v6, v10

    const/4 v10, 0x5

    move-wide/from16 v7, v21

    move-object v9, v12

    move-object v10, v0

    move v13, v11

    move-object v11, v2

    :try_start_d
    invoke-static/range {v6 .. v11}, Lcom/vungle/warren/downloader/AssetDownloader;->access$800(Lcom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Ljh0$a;)V

    .line 68
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$900(Lcom/vungle/warren/downloader/AssetDownloader;)Lgh0;

    move-result-object v6

    invoke-virtual {v2}, Ljh0$a;->b()Ljh0;

    move-result-object v2

    invoke-virtual {v6, v2}, Lgh0;->k(Ljh0;)Log0;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_20

    .line 69
    :try_start_e
    invoke-interface {v2}, Log0;->execute()Llh0;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1f

    .line 70
    :try_start_f
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v7, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1000(Lcom/vungle/warren/downloader/AssetDownloader;Llh0;)J

    move-result-wide v7

    .line 71
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Llh0;->L()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    invoke-virtual {v6}, Llh0;->L()I

    move-result v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1e

    .line 73
    :try_start_10
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v9, v12, v6, v11, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1100(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Llh0;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1d

    if-nez v9, :cond_29

    :try_start_11
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-static {v9, v11, v12, v0, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_11

    goto/16 :goto_20

    .line 75
    :cond_11
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v23, v0

    move-wide/from16 v24, v21

    move/from16 v26, v10

    move-object/from16 v27, v6

    move-object/from16 v28, v9

    invoke-static/range {v23 .. v28}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1400(Lcom/vungle/warren/downloader/AssetDownloader;JILlh0;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_19

    if-eqz v0, :cond_14

    add-int/lit8 v11, v13, 0x1

    .line 76
    :try_start_12
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v7, v0, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v13, v7, :cond_13

    const/4 v7, 0x0

    .line 77
    invoke-static {v0, v12, v5, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 78
    invoke-virtual {v6}, Llh0;->j()Lmh0;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 79
    invoke-virtual {v6}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-virtual {v0}, Lmh0;->close()V

    .line 80
    :cond_12
    invoke-interface {v2}, Log0;->cancel()V

    .line 81
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 83
    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 84
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v7

    .line 85
    :try_start_13
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 86
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const/4 v2, 0x0

    .line 87
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto/16 :goto_3b

    :catchall_3
    move-exception v0

    .line 89
    :try_start_14
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v0

    .line 90
    :cond_13
    :try_start_15
    new-instance v0, Lcom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :catchall_4
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v15, v6

    :goto_7
    const/4 v6, 0x3

    goto/16 :goto_2b

    .line 91
    :cond_14
    :try_start_16
    invoke-virtual {v6}, Llh0;->i0()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_19

    if-eqz v0, :cond_28

    const/16 v0, 0xce

    if-eq v10, v0, :cond_15

    .line 92
    :try_start_17
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v9, 0x0

    invoke-static {v0, v12, v5, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    move v11, v10

    move-wide/from16 v9, v19

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v24, v4

    move v11, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    goto :goto_7

    :cond_15
    move v11, v10

    move-wide/from16 v9, v21

    .line 93
    :goto_8
    :try_start_18
    invoke-static {v5}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 94
    invoke-virtual {v6}, Llh0;->b0()Lch0;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    move/from16 v21, v13

    .line 95
    :try_start_19
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13, v12, v5, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lch0;)V

    .line 96
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13, v5, v0, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1700(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lch0;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 97
    invoke-static {v6}, Lii0;->b(Llh0;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 98
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_17

    if-eqz v13, :cond_16

    .line 99
    :try_start_1a
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v13
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move-object/from16 v23, v14

    move/from16 v22, v15

    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-interface {v13, v12, v14, v15}, Lcom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v15, v6

    move v10, v11

    move/from16 v11, v21

    move-object/from16 v8, v23

    goto :goto_9

    :catchall_7
    move-exception v0

    move/from16 v22, v15

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v15, v6

    move v10, v11

    move-object v8, v14

    move/from16 v11, v21

    :goto_9
    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    goto/16 :goto_1f

    :cond_16
    move-object/from16 v23, v14

    move/from16 v22, v15

    .line 100
    :goto_a
    :try_start_1c
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1800(Lcom/vungle/warren/downloader/AssetDownloader;Llh0;)Lmh0;

    move-result-object v13

    .line 101
    invoke-virtual {v13}, Lmh0;->source()Lzj0;

    move-result-object v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_16

    .line 102
    :try_start_1d
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v15, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_15

    move-object/from16 v24, v4

    :try_start_1e
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 103
    invoke-static {v15, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    add-long/2addr v7, v9

    .line 104
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    cmp-long v4, v9, v19

    if-nez v4, :cond_17

    .line 105
    :try_start_1f
    invoke-static {v12}, Lik0;->e(Ljava/io/File;)Lqk0;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    move v10, v11

    move/from16 v11, v21

    move-object/from16 v8, v23

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    goto/16 :goto_1c

    :cond_17
    :try_start_20
    invoke-static {v12}, Lik0;->a(Ljava/io/File;)Lqk0;

    move-result-object v4

    :goto_b
    invoke-static {v4}, Lik0;->b(Lqk0;)Lyj0;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    const/4 v15, 0x0

    .line 106
    :try_start_21
    iput v15, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    move-object/from16 v25, v5

    move-object v15, v6

    .line 107
    :try_start_22
    invoke-virtual {v13}, Lmh0;->contentLength()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 108
    iput-wide v9, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 109
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v5, v6, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    move-wide/from16 v26, v19

    const/4 v5, 0x0

    .line 110
    :goto_c
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    if-eqz v6, :cond_1e

    .line 111
    :try_start_23
    invoke-interface {v4}, Lyj0;->a()Lxj0;

    move-result-object v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    move-object v13, v2

    move-object/from16 v28, v3

    const-wide/16 v2, 0x800

    :try_start_24
    invoke-interface {v14, v6, v2, v3}, Lrk0;->read(Lxj0;J)J

    move-result-wide v2

    const-wide/16 v29, -0x1

    cmp-long v6, v2, v29

    if-eqz v6, :cond_1d

    .line 112
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 113
    invoke-interface {v4}, Lyj0;->h()Lyj0;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    add-long v26, v26, v2

    add-long v2, v9, v26

    const-wide/16 v29, 0x64

    cmp-long v6, v7, v19

    if-lez v6, :cond_18

    mul-long v2, v2, v29

    .line 114
    :try_start_25
    div-long/2addr v2, v7
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    long-to-int v3, v2

    move v5, v3

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object/from16 v18, v4

    move v10, v11

    move/from16 v11, v21

    move-object/from16 v8, v23

    move-object/from16 v5, v25

    move-object/from16 v2, v28

    goto/16 :goto_10

    .line 115
    :cond_18
    :goto_d
    :try_start_26
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    if-eqz v2, :cond_1b

    move-object/from16 v2, v28

    .line 116
    :goto_e
    :try_start_27
    iget v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v6

    add-int/2addr v3, v6

    if-gt v3, v5, :cond_19

    iget v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 117
    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v28, v5

    int-to-long v5, v3

    cmp-long v3, v5, v29

    if-gtz v3, :cond_1a

    const/4 v3, 0x1

    .line 118
    iput v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 119
    iget v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2000(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 120
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v5, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    move/from16 v5, v28

    goto :goto_e

    :cond_19
    move/from16 v28, v5

    :cond_1a
    move-object v3, v2

    move-object v2, v13

    move/from16 v5, v28

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v2, v28

    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v3, "mediator %s is not connected"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 121
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 122
    invoke-static {v5, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 123
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v0, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Request is not connected"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    move-object/from16 v2, v28

    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v3, "file %s does not exist"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v6, v5

    .line 126
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v0, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/vungle/warren/downloader/Downloader$RequestException;

    const-string v3, "File is not existing"

    invoke-direct {v0, v3}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_f

    :cond_1d
    move-object/from16 v2, v28

    goto :goto_11

    :catchall_b
    move-exception v0

    move-object/from16 v2, v28

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    :goto_f
    move-object/from16 v18, v4

    move v10, v11

    move/from16 v11, v21

    move-object/from16 v8, v23

    move-object/from16 v5, v25

    :goto_10
    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    goto/16 :goto_1a

    :cond_1e
    move-object v13, v2

    move-object v2, v3

    .line 129
    :goto_11
    :try_start_28
    invoke-interface {v4}, Lyj0;->flush()V

    .line 130
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    if-eqz v3, :cond_1f

    .line 131
    :try_start_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "DOWNLOAD_COMPLETE"

    .line 132
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Last-Cache-Verification"

    .line 133
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Last-Download"

    .line 134
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    move-object/from16 v5, v25

    :try_start_2a
    invoke-static {v3, v5, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 136
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception v0

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object/from16 v5, v25

    :goto_12
    move-object/from16 v18, v4

    move v10, v11

    move/from16 v11, v21

    move-object/from16 v8, v23

    goto :goto_10

    :cond_1f
    move-object/from16 v5, v25

    const/4 v0, 0x6

    .line 137
    :try_start_2b
    iput v0, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 138
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 139
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    .line 140
    :goto_13
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 141
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-virtual {v0}, Lmh0;->close()V

    .line 142
    :cond_20
    invoke-interface {v13}, Log0;->cancel()V

    .line 143
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 144
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_24

    const/4 v6, 0x3

    if-eq v0, v6, :cond_23

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    const/4 v7, 0x5

    if-eq v0, v7, :cond_21

    if-nez v22, :cond_24

    .line 145
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_14

    .line 146
    :cond_21
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v8, v23

    invoke-static {v0, v8, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_15

    :cond_22
    move-object/from16 v8, v23

    .line 147
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_15

    :cond_23
    move-object/from16 v8, v23

    .line 148
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_15

    :cond_24
    :goto_14
    move-object/from16 v8, v23

    .line 149
    :goto_15
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 150
    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 151
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v9

    .line 152
    :try_start_2c
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 153
    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    .line 154
    invoke-static {v4}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 156
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_26

    .line 157
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 158
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    .line 159
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_16

    .line 160
    :cond_25
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_26
    :goto_16
    move-object v14, v8

    move/from16 v11, v21

    move/from16 v15, v22

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3a

    :catchall_f
    move-exception v0

    .line 161
    :try_start_2d
    monitor-exit v9
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    throw v0

    :catchall_10
    move-exception v0

    goto :goto_18

    :catchall_11
    move-exception v0

    goto :goto_17

    :catchall_12
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    :goto_17
    move-object/from16 v8, v23

    move-object/from16 v5, v25

    goto :goto_19

    :catchall_13
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    :goto_18
    move-object/from16 v8, v23

    :goto_19
    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v18, v4

    move v10, v11

    move/from16 v11, v21

    :goto_1a
    const/4 v9, 0x0

    goto/16 :goto_2b

    :catchall_14
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    goto :goto_1b

    :catchall_15
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    :goto_1b
    move-object v15, v6

    move-object/from16 v8, v23

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    move v10, v11

    move/from16 v11, v21

    :goto_1c
    const/4 v9, 0x0

    goto/16 :goto_3

    :catchall_16
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v15, v6

    move-object/from16 v8, v23

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    goto/16 :goto_21

    :cond_27
    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v7, 0x5

    move-object v15, v6

    const/4 v6, 0x3

    :try_start_2e
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v4, "response has no body %s"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v10, v9

    .line 162
    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-static {v0, v4}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Response body is null"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v7, 0x5

    move-object v15, v6

    goto :goto_1d

    :catchall_18
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    :goto_1d
    const/4 v6, 0x3

    goto/16 :goto_21

    :cond_28
    move-object/from16 v24, v4

    move v11, v10

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    const/4 v6, 0x3

    .line 165
    new-instance v0, Lcom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Code: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_19
    move-exception v0

    move-object/from16 v24, v4

    move v11, v10

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    const/4 v6, 0x3

    :goto_1e
    move/from16 v11, v21

    :goto_1f
    const/4 v9, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_29
    :goto_20
    move-object/from16 v24, v4

    move v11, v10

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/16 v4, 0x130

    if-ne v11, v4, :cond_2a

    const-string v4, "Last-Cache-Verification"

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 167
    invoke-virtual {v0, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4, v5, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1300(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 169
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception v0

    :goto_21
    move v10, v11

    goto :goto_1e

    .line 170
    :cond_2a
    :try_start_2f
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    .line 171
    :goto_22
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1c

    .line 172
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 173
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-virtual {v0}, Lmh0;->close()V

    .line 174
    :cond_2b
    invoke-interface {v13}, Log0;->cancel()V

    .line 175
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 176
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    if-eq v0, v3, :cond_2f

    if-eq v0, v6, :cond_2e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2d

    if-eq v0, v7, :cond_2c

    if-nez v22, :cond_2f

    .line 177
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_23

    .line 178
    :cond_2c
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v8, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_23

    .line 179
    :cond_2d
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_23

    .line 180
    :cond_2e
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 181
    :cond_2f
    :goto_23
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 182
    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 183
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v4

    .line 184
    :try_start_30
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 185
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    const/4 v9, 0x0

    .line 186
    invoke-static {v9}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    invoke-static {v9}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_31

    .line 189
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 190
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 191
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_24

    .line 192
    :cond_30
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_31
    :goto_24
    return-void

    :catchall_1b
    move-exception v0

    .line 193
    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    throw v0

    :catchall_1c
    move-exception v0

    const/4 v9, 0x0

    move-object v14, v9

    move-object/from16 v18, v14

    move v10, v11

    goto :goto_25

    :catchall_1d
    move-exception v0

    move-object/from16 v24, v4

    move v11, v10

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    const/4 v9, 0x0

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    const/4 v6, 0x3

    move-object v14, v9

    move-object/from16 v18, v14

    :goto_25
    move/from16 v11, v21

    goto/16 :goto_2b

    :catchall_1e
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v7, 0x5

    const/4 v9, 0x0

    move-object v13, v2

    move-object v2, v3

    move-object v15, v6

    const/4 v3, 0x2

    const/4 v6, 0x3

    move-object v14, v9

    move-object/from16 v18, v14

    goto :goto_28

    :catchall_1f
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v9, 0x0

    move-object v13, v2

    move-object v2, v3

    const/4 v3, 0x2

    move-object v14, v9

    goto :goto_27

    :catchall_20
    move-exception v0

    move-object v2, v3

    move-object/from16 v24, v4

    move/from16 v21, v13

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x5

    const/4 v9, 0x0

    goto :goto_26

    :cond_32
    move-object v2, v3

    move-object/from16 v24, v4

    move/from16 v21, v11

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    .line 194
    :try_start_32
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v4, "No connected to required network requests in %s"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    .line 195
    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 196
    invoke-static {v10, v13}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v11, v13

    .line 197
    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-static {v0, v4}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Not connected to correct network"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_21

    :catchall_21
    move-exception v0

    :goto_26
    move-object v13, v9

    move-object v14, v13

    :goto_27
    move-object v15, v14

    move-object/from16 v18, v15

    :goto_28
    move/from16 v11, v21

    goto :goto_2a

    :catchall_22
    move-exception v0

    move-object v2, v3

    move-object/from16 v24, v4

    move/from16 v21, v11

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    goto :goto_29

    :catchall_23
    move-exception v0

    move-object v9, v2

    move-object v2, v3

    move-object/from16 v24, v4

    move/from16 v21, v11

    move-object v8, v14

    move/from16 v22, v15

    const/4 v3, 0x2

    const/4 v6, 0x3

    :goto_29
    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v18, v15

    :goto_2a
    const/4 v10, -0x1

    :goto_2b
    :try_start_33
    const-string v4, "AssetDownloader#load; loadAd sequence"

    const-string v9, "exception, cannot load due to %1$s, state is %2$s"

    new-array v7, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v7, v16

    .line 200
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 201
    invoke-static {v3, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v7, v6

    .line 202
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v4, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception on download"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2c

    if-nez v3, :cond_33

    .line 206
    :try_start_34
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_24

    goto :goto_2c

    :catchall_24
    move-exception v0

    goto/16 :goto_3c

    .line 207
    :cond_33
    :goto_2c
    :try_start_35
    instance-of v3, v0, Ljava/io/IOException;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2c

    if-eqz v3, :cond_44

    .line 208
    :try_start_36
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3

    if-nez v3, :cond_3d

    if-nez v15, :cond_3d

    .line 209
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 210
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->access$600(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v7

    const/4 v9, -0x1

    invoke-static {v4, v6, v12, v7, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1200(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 211
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 212
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_24

    :cond_34
    if-eqz v15, :cond_35

    .line 213
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 214
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-virtual {v0}, Lmh0;->close()V

    :cond_35
    if-eqz v13, :cond_36

    .line 215
    invoke-interface {v13}, Log0;->cancel()V

    .line 216
    :cond_36
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 217
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_39

    const/4 v2, 0x4

    if-eq v0, v2, :cond_38

    const/4 v2, 0x5

    if-eq v0, v2, :cond_37

    if-nez v22, :cond_3a

    .line 218
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_2d

    .line 219
    :cond_37
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v8, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_2d

    .line 220
    :cond_38
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_2d

    .line 221
    :cond_39
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 222
    :cond_3a
    :goto_2d
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 223
    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 224
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 225
    :try_start_37
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 226
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_25

    .line 227
    invoke-static/range {v18 .. v18}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_3c

    .line 230
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 231
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 232
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_2e

    .line 233
    :cond_3b
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_3c
    :goto_2e
    return-void

    :catchall_25
    move-exception v0

    .line 234
    :try_start_38
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_25

    throw v0

    .line 235
    :cond_3d
    :try_start_39
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 236
    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 237
    invoke-static {v6, v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2100(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I

    move-result v6

    invoke-direct {v4, v10, v0, v6}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_24

    if-nez v3, :cond_41

    const/4 v3, 0x5

    .line 238
    :try_start_3a
    iput v3, v2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 239
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1900(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 240
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    if-nez v0, :cond_41

    add-int/lit8 v0, v11, 0x1

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v3, v3, Lcom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    if-ge v11, v3, :cond_40

    const/4 v7, 0x0

    .line 241
    :goto_2f
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v6, v3, Lcom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I

    if-ge v7, v6, :cond_40

    .line 242
    iget v6, v3, Lcom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    int-to-long v8, v6

    invoke-static {v3, v8, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2200(Lcom/vungle/warren/downloader/AssetDownloader;J)V

    .line 243
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_30

    .line 244
    :cond_3e
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    .line 245
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 246
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_27

    .line 247
    :try_start_3b
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 248
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_26

    move v11, v0

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_32

    :catchall_26
    move-exception v0

    move-object v8, v4

    const/16 v17, 0x0

    goto/16 :goto_3d

    .line 249
    :cond_3f
    :try_start_3c
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_27

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_40
    :goto_30
    const/4 v6, 0x0

    move v11, v0

    goto :goto_31

    :catchall_27
    move-exception v0

    move-object v8, v4

    goto/16 :goto_3c

    :cond_41
    const/4 v6, 0x0

    :goto_31
    const/16 v16, 0x1

    .line 250
    :goto_32
    :try_start_3d
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2a

    if-eqz v16, :cond_43

    .line 251
    :try_start_3e
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 252
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->access$500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 253
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_29

    .line 254
    :try_start_3f
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 255
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_28

    const/16 v16, 0x0

    goto :goto_33

    :catchall_28
    move-exception v0

    const/16 v16, 0x0

    goto :goto_34

    .line 256
    :cond_42
    :try_start_40
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2300(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result v0

    move/from16 v22, v0

    .line 257
    :cond_43
    :goto_33
    monitor-exit v3

    goto :goto_36

    :catchall_29
    move-exception v0

    :goto_34
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_29

    :try_start_41
    throw v0
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_2a

    :catchall_2a
    move-exception v0

    move-object v8, v4

    move/from16 v17, v16

    goto/16 :goto_3d

    :cond_44
    const/4 v6, 0x0

    .line 258
    :try_start_42
    instance-of v3, v0, Lcom/vungle/warren/downloader/Downloader$RequestException;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2c

    if-eqz v3, :cond_45

    .line 259
    :try_start_43
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v4, 0x1

    invoke-static {v3, v12, v5, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 260
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {v3, v10, v0, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_24

    goto :goto_35

    .line 261
    :cond_45
    :try_start_44
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2c

    const/4 v4, 0x1

    :try_start_45
    invoke-static {v3, v12, v5, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->access$1500(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 262
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v7, 0x4

    invoke-direct {v3, v10, v0, v7}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_24

    :goto_35
    move-object v4, v3

    const/16 v16, 0x1

    :goto_36
    if-eqz v15, :cond_46

    .line 263
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 264
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v0

    invoke-virtual {v0}, Lmh0;->close()V

    :cond_46
    if-eqz v13, :cond_47

    .line 265
    invoke-interface {v13}, Log0;->cancel()V

    .line 266
    :cond_47
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    if-eqz v16, :cond_4c

    .line 267
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_49

    const/4 v3, 0x5

    if-eq v0, v3, :cond_48

    if-nez v22, :cond_4b

    .line 268
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_37

    .line 269
    :cond_48
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v4, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_37

    .line 270
    :cond_49
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_37

    .line 271
    :cond_4a
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 272
    :cond_4b
    :goto_37
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 273
    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    goto :goto_38

    .line 274
    :cond_4c
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 275
    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 276
    :goto_38
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 277
    :try_start_46
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 278
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_2b

    .line 279
    invoke-static/range {v18 .. v18}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v16, :cond_4e

    .line 281
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_4e

    .line 282
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 283
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 284
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_39

    .line 285
    :cond_4d
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_4e
    :goto_39
    move-object v14, v4

    move/from16 v0, v16

    move/from16 v15, v22

    :goto_3a
    move-object v3, v2

    move-object/from16 v4, v24

    :goto_3b
    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_2b
    move-exception v0

    .line 286
    :try_start_47
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_2b

    throw v0

    :catchall_2c
    move-exception v0

    const/4 v4, 0x1

    :goto_3c
    const/16 v17, 0x1

    :goto_3d
    if-eqz v15, :cond_4f

    .line 287
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 288
    invoke-virtual {v15}, Llh0;->j()Lmh0;

    move-result-object v2

    invoke-virtual {v2}, Lmh0;->close()V

    :cond_4f
    if-eqz v13, :cond_50

    .line 289
    invoke-interface {v13}, Log0;->cancel()V

    .line 290
    :cond_50
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    if-eqz v17, :cond_55

    .line 291
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_54

    const/4 v3, 0x3

    if-eq v2, v3, :cond_53

    const/4 v3, 0x4

    if-eq v2, v3, :cond_52

    const/4 v3, 0x5

    if-eq v2, v3, :cond_51

    if-nez v22, :cond_54

    .line 292
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2700(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_3e

    .line 293
    :cond_51
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v8, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2500(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_3e

    .line 294
    :cond_52
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2400(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_3e

    .line 295
    :cond_53
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2600(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 296
    :cond_54
    :goto_3e
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 297
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    goto :goto_3f

    .line 298
    :cond_55
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 299
    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$400(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    .line 300
    :goto_3f
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 301
    :try_start_48
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2800(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 302
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2d

    .line 303
    invoke-static/range {v18 .. v18}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v17, :cond_57

    .line 305
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_57

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->val$mediator:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_57

    .line 306
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 307
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_56

    .line 308
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_40

    .line 309
    :cond_56
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->access$300(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_57
    :goto_40
    throw v0

    :catchall_2d
    move-exception v0

    .line 310
    :try_start_49
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_2d

    throw v0

    :cond_58
    return-void
.end method
