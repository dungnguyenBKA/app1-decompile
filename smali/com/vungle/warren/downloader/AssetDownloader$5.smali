.class Lcom/vungle/warren/downloader/AssetDownloader$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;

.field final synthetic val$copy:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

.field final synthetic val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic val$listener:Lcom/vungle/warren/downloader/AssetDownloadListener;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$listener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$copy:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    const-string v0, "On progress "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$listener:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$copy:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->val$downloadRequest:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method
