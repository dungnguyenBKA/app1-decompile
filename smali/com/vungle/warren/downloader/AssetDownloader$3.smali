.class Lcom/vungle/warren/downloader/AssetDownloader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$3;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->access$100()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$3;->this$0:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->access$2900(Lcom/vungle/warren/downloader/AssetDownloader;I)V

    return-void
.end method
