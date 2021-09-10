.class public Lcom/vungle/warren/ui/view/VungleNativeView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.implements Lcom/vungle/warren/VungleNativeAd;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final config:Lcom/vungle/warren/AdConfig;

.field private destroyed:Z

.field private isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private final placementID:Ljava/lang/String;

.field private presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

.field presenterFactory:Lcom/vungle/warren/PresentationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PresentationFactory;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p5, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->config:Lcom/vungle/warren/AdConfig;

    .line 6
    iput-object p4, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/view/VungleNativeView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->prepare(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private prepare(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Landroid/webkit/WebView;)V

    .line 2
    new-instance p1, Lcom/vungle/warren/ui/JavascriptBridge;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-direct {p1, v0}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    const-string v0, "Android"

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroyAdView(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->destroyed:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 4
    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    const-string v1, "Android"

    .line 5
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$1;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v1}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lcom/vungle/warren/utility/HandlerScheduler;->schedule(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public finishDisplayingAd()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    return-void
.end method

.method public finishDisplayingAdInternal(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->detach(I)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/vungle/warren/ui/view/VungleNativeView;->destroyAdView(J)V

    return-void
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWebView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->config:Lcom/vungle/warren/AdConfig;

    new-instance v3, Lcom/vungle/warren/ui/view/VungleNativeView$2;

    invoke-direct {v3, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$2;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    new-instance v4, Lcom/vungle/warren/ui/view/VungleNativeView$3;

    invoke-direct {v4, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$3;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vungle/warren/PresentationFactory;->getNativeViewPresentation(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$ViewCallback;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$4;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$4;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc4;->b(Landroid/content/Context;)Lc4;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lc4;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->resumeWeb()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc4;->b(Landroid/content/Context;)Lc4;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lc4;->e(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->pauseWeb()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot open url "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public pauseWeb()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onPause()V

    return-void
.end method

.method public refreshDialogIfVisible()V
    .locals 0

    return-void
.end method

.method public removeWebView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public renderNativeView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public resumeWeb()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onResume()V

    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setAdVisibility(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setImmersiveMode()V
    .locals 0

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .locals 0

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VungleNativeView does not implement a close button"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "VungleNativeView does not implement a dialog."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public updateWindow()V
    .locals 0

    return-void
.end method
