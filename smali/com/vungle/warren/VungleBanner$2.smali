.class Lcom/vungle/warren/VungleBanner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/VungleBanner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lcom/vungle/warren/VungleBanner;->access$100(Lcom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {v0}, Lcom/vungle/warren/VungleBanner;->access$200(Lcom/vungle/warren/VungleBanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleBanner;->access$102(Lcom/vungle/warren/VungleBanner;Z)Z

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleBanner;->access$300(Lcom/vungle/warren/VungleBanner;Z)V

    .line 5
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {v1}, Lcom/vungle/warren/VungleBanner;->access$400(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {v1}, Lcom/vungle/warren/VungleBanner;->access$500(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {v0, p1}, Lcom/vungle/warren/VungleBanner;->access$602(Lcom/vungle/warren/VungleBanner;Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/view/VungleNativeView;

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {p1}, Lcom/vungle/warren/VungleBanner;->renderAd()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->access$700(Lcom/vungle/warren/VungleBanner;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/VungleBanner$2;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#loadAdCallback; onAdLoad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VungleNativeView is null"

    invoke-static {p1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleBanner;->access$000()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->access$200(Lcom/vungle/warren/VungleBanner;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleBanner$2;->this$0:Lcom/vungle/warren/VungleBanner;

    invoke-static {p1}, Lcom/vungle/warren/VungleBanner;->access$800(Lcom/vungle/warren/VungleBanner;)Lcom/vungle/warren/utility/RefreshHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/utility/RefreshHandler;->start()V

    :cond_0
    return-void
.end method
