.class Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;
.super Lkh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;->gzip(Lkh0;)Lkh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

.field final synthetic val$output:Lxj0;

.field final synthetic val$requestBody:Lkh0;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;Lkh0;Lxj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->this$0:Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$requestBody:Lkh0;

    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$output:Lxj0;

    invoke-direct {p0}, Lkh0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$output:Lxj0;

    invoke-virtual {v0}, Lxj0;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lfh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$requestBody:Lkh0;

    invoke-virtual {v0}, Lkh0;->contentType()Lfh0;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lyj0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->val$output:Lxj0;

    invoke-virtual {v0}, Lxj0;->p0()Lak0;

    move-result-object v0

    invoke-interface {p1, v0}, Lyj0;->U(Lak0;)Lyj0;

    return-void
.end method
